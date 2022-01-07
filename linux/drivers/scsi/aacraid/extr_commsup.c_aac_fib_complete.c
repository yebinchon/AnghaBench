
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int XferState; scalar_t__ StructType; } ;
struct hw_fib {TYPE_1__ header; } ;
struct fib {int flags; int done; struct hw_fib* hw_fib_va; } ;


 int AdapterProcessed ;
 int BUG () ;
 int EINVAL ;
 int FIB_CONTEXT_FLAG_NATIVE_HBA ;
 scalar_t__ FIB_MAGIC ;
 scalar_t__ FIB_MAGIC2 ;
 scalar_t__ FIB_MAGIC2_64 ;
 int HostOwned ;
 int SentFromHost ;
 int cpu_to_le32 (int ) ;
 int fib_dealloc (struct fib*) ;

int aac_fib_complete(struct fib *fibptr)
{
 struct hw_fib * hw_fib = fibptr->hw_fib_va;

 if (fibptr->flags & FIB_CONTEXT_FLAG_NATIVE_HBA) {
  fib_dealloc(fibptr);
  return 0;
 }






 if (hw_fib->header.XferState == 0 || fibptr->done == 2)
  return 0;




 if (hw_fib->header.StructType != FIB_MAGIC &&
     hw_fib->header.StructType != FIB_MAGIC2 &&
     hw_fib->header.StructType != FIB_MAGIC2_64)
  return -EINVAL;







 if((hw_fib->header.XferState & cpu_to_le32(SentFromHost)) &&
  (hw_fib->header.XferState & cpu_to_le32(AdapterProcessed)))
 {
  fib_dealloc(fibptr);
 }
 else if(hw_fib->header.XferState & cpu_to_le32(SentFromHost))
 {




  fib_dealloc(fibptr);
 } else if(hw_fib->header.XferState & cpu_to_le32(HostOwned)) {
  fib_dealloc(fibptr);
 } else {
  BUG();
 }
 return 0;
}
