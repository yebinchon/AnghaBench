
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fib {int dummy; } ;
struct aac_pause {void* count; void* noRescan; void* min; void* timeout; void* type; void* command; } ;
struct aac_dev {int in_reset; struct Scsi_Host* scsi_host_ptr; int fib_lock; } ;
struct Scsi_Host {int * host_lock; } ;


 int CT_PAUSE_IO ;
 int ContainerCommand ;
 int EBUSY ;
 int ENODEV ;
 int ERESTARTSYS ;
 int FsaNormal ;
 int VM_ContainerConfig ;
 int _aac_reset_adapter (struct aac_dev*,int,int ) ;
 int aac_check_reset ;
 struct fib* aac_fib_alloc (struct aac_dev*) ;
 int aac_fib_complete (struct fib*) ;
 int aac_fib_free (struct fib*) ;
 int aac_fib_init (struct fib*) ;
 int aac_fib_send (int ,struct fib*,int,int ,int,int,int *,int *) ;
 int aac_send_shutdown (struct aac_dev*) ;
 void* cpu_to_le32 (int) ;
 scalar_t__ fib_data (struct fib*) ;
 int scsi_block_requests (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 scalar_t__ spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int aac_reset_adapter(struct aac_dev *aac, int forced, u8 reset_type)
{
 unsigned long flagv = 0;
 int retval;
 struct Scsi_Host * host;
 int bled;

 if (spin_trylock_irqsave(&aac->fib_lock, flagv) == 0)
  return -EBUSY;

 if (aac->in_reset) {
  spin_unlock_irqrestore(&aac->fib_lock, flagv);
  return -EBUSY;
 }
 aac->in_reset = 1;
 spin_unlock_irqrestore(&aac->fib_lock, flagv);






 host = aac->scsi_host_ptr;
 scsi_block_requests(host);


 if (forced < 2)
  aac_send_shutdown(aac);
 spin_lock_irqsave(host->host_lock, flagv);
 bled = forced ? forced :
   (aac_check_reset != 0 && aac_check_reset != 1);
 retval = _aac_reset_adapter(aac, bled, reset_type);
 spin_unlock_irqrestore(host->host_lock, flagv);

 if ((forced < 2) && (retval == -ENODEV)) {

  struct fib * fibctx = aac_fib_alloc(aac);
  if (fibctx) {
   struct aac_pause *cmd;
   int status;

   aac_fib_init(fibctx);

   cmd = (struct aac_pause *) fib_data(fibctx);

   cmd->command = cpu_to_le32(VM_ContainerConfig);
   cmd->type = cpu_to_le32(CT_PAUSE_IO);
   cmd->timeout = cpu_to_le32(1);
   cmd->min = cpu_to_le32(1);
   cmd->noRescan = cpu_to_le32(1);
   cmd->count = cpu_to_le32(0);

   status = aac_fib_send(ContainerCommand,
     fibctx,
     sizeof(struct aac_pause),
     FsaNormal,
     -2 , 1,
     ((void*)0), ((void*)0));

   if (status >= 0)
    aac_fib_complete(fibctx);


   if (status != -ERESTARTSYS)
    aac_fib_free(fibctx);
  }
 }

 return retval;
}
