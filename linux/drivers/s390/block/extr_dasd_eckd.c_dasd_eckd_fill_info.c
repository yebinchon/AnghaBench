
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_information2_t {int label_block; int FBA_layout; int characteristics_size; int confdata_size; int configuration_data; int characteristics; int format; } ;
struct dasd_eckd_private {int * conf_data; scalar_t__ conf_len; int rdc_data; scalar_t__ uses_cdl; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;


 int DASD_FORMAT_CDL ;
 int DASD_FORMAT_LDL ;
 int memcpy (int ,int *,int) ;
 int min (unsigned long,int) ;

__attribute__((used)) static int
dasd_eckd_fill_info(struct dasd_device * device,
      struct dasd_information2_t * info)
{
 struct dasd_eckd_private *private = device->private;

 info->label_block = 2;
 info->FBA_layout = private->uses_cdl ? 0 : 1;
 info->format = private->uses_cdl ? DASD_FORMAT_CDL : DASD_FORMAT_LDL;
 info->characteristics_size = sizeof(private->rdc_data);
 memcpy(info->characteristics, &private->rdc_data,
        sizeof(private->rdc_data));
 info->confdata_size = min((unsigned long)private->conf_len,
      sizeof(info->configuration_data));
 memcpy(info->configuration_data, private->conf_data,
        info->confdata_size);
 return 0;
}
