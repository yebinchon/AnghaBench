
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_module_parameters {int file_count; int stall; scalar_t__** file; int * removable; int * cdrom; int * ro; scalar_t__ luns; } ;
struct fsg_lun_config {int ro; int cdrom; int removable; scalar_t__* filename; } ;
struct fsg_config {unsigned int nluns; unsigned int fsg_num_buffers; int can_stall; int * private_data; int * ops; int * product_name; int * vendor_name; struct fsg_lun_config* luns; } ;


 scalar_t__ FSG_MAX_LUNS ;
 unsigned int min (unsigned int,unsigned int) ;

void fsg_config_from_params(struct fsg_config *cfg,
         const struct fsg_module_parameters *params,
         unsigned int fsg_num_buffers)
{
 struct fsg_lun_config *lun;
 unsigned i;


 cfg->nluns =
  min(params->luns ?: (params->file_count ?: 1u),
      (unsigned)FSG_MAX_LUNS);
 for (i = 0, lun = cfg->luns; i < cfg->nluns; ++i, ++lun) {
  lun->ro = !!params->ro[i];
  lun->cdrom = !!params->cdrom[i];
  lun->removable = !!params->removable[i];
  lun->filename =
   params->file_count > i && params->file[i][0]
   ? params->file[i]
   : ((void*)0);
 }


 cfg->vendor_name = ((void*)0);
 cfg->product_name = ((void*)0);

 cfg->ops = ((void*)0);
 cfg->private_data = ((void*)0);


 cfg->can_stall = params->stall;
 cfg->fsg_num_buffers = fsg_num_buffers;
}
