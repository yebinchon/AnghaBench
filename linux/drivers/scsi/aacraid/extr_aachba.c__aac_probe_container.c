
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* ptr; int phase; } ;
struct scsi_cmnd {TYPE_5__* device; TYPE_3__ SCp; } ;
struct fsa_dev_info {int valid; } ;
struct fib {TYPE_2__* dev; } ;
struct aac_query_mount {void* type; void* count; void* command; } ;
struct aac_dev {struct fsa_dev_info* fsa_dev; } ;
struct TYPE_10__ {TYPE_4__* host; } ;
struct TYPE_9__ {scalar_t__ hostdata; } ;
struct TYPE_6__ {int supported_options2; } ;
struct TYPE_7__ {TYPE_1__ supplement_adapter_info; } ;


 int AAC_OPTION_VARIABLE_BLOCK_SIZE ;
 int AAC_OWNER_FIRMWARE ;
 int ContainerCommand ;
 int EINPROGRESS ;
 int ENOMEM ;
 int FT_FILESYS ;
 int FsaNormal ;
 int VM_NameServe ;
 int VM_NameServeAllBlk ;
 int _aac_probe_container1 ;
 struct fib* aac_fib_alloc (struct aac_dev*) ;
 int aac_fib_complete (struct fib*) ;
 int aac_fib_free (struct fib*) ;
 int aac_fib_init (struct fib*) ;
 int aac_fib_send (int ,struct fib*,int,int ,int ,int,int ,void*) ;
 void* cpu_to_le32 (int ) ;
 scalar_t__ fib_data (struct fib*) ;
 int scmd_id (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int _aac_probe_container(struct scsi_cmnd * scsicmd, int (*callback)(struct scsi_cmnd *))
{
 struct fib * fibptr;
 int status = -ENOMEM;

 if ((fibptr = aac_fib_alloc((struct aac_dev *)scsicmd->device->host->hostdata))) {
  struct aac_query_mount *dinfo;

  aac_fib_init(fibptr);

  dinfo = (struct aac_query_mount *)fib_data(fibptr);

  if (fibptr->dev->supplement_adapter_info.supported_options2 &
      AAC_OPTION_VARIABLE_BLOCK_SIZE)
   dinfo->command = cpu_to_le32(VM_NameServeAllBlk);
  else
   dinfo->command = cpu_to_le32(VM_NameServe);

  dinfo->count = cpu_to_le32(scmd_id(scsicmd));
  dinfo->type = cpu_to_le32(FT_FILESYS);
  scsicmd->SCp.ptr = (char *)callback;
  scsicmd->SCp.phase = AAC_OWNER_FIRMWARE;

  status = aac_fib_send(ContainerCommand,
     fibptr,
     sizeof(struct aac_query_mount),
     FsaNormal,
     0, 1,
     _aac_probe_container1,
     (void *) scsicmd);



  if (status == -EINPROGRESS)
   return 0;

  if (status < 0) {
   scsicmd->SCp.ptr = ((void*)0);
   aac_fib_complete(fibptr);
   aac_fib_free(fibptr);
  }
 }
 if (status < 0) {
  struct fsa_dev_info *fsa_dev_ptr = ((struct aac_dev *)(scsicmd->device->host->hostdata))->fsa_dev;
  if (fsa_dev_ptr) {
   fsa_dev_ptr += scmd_id(scsicmd);
   if ((fsa_dev_ptr->valid & 1) == 0) {
    fsa_dev_ptr->valid = 0;
    return (*callback)(scsicmd);
   }
  }
 }
 return status;
}
