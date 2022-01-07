
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_pfn_t ;
struct mmap_batch_state {int version; int user_err; int user_gfn; } ;


 int ENOENT ;
 int PRIVCMD_MMAPBATCH_MFN_ERROR ;
 int PRIVCMD_MMAPBATCH_PAGED_ERROR ;
 int __put_user (int,int ) ;
 int get_user (int,int ) ;

__attribute__((used)) static int mmap_return_error(int err, struct mmap_batch_state *st)
{
 int ret;

 if (st->version == 1) {
  if (err) {
   xen_pfn_t gfn;

   ret = get_user(gfn, st->user_gfn);
   if (ret < 0)
    return ret;





   gfn |= (err == -ENOENT) ?
    PRIVCMD_MMAPBATCH_PAGED_ERROR :
    PRIVCMD_MMAPBATCH_MFN_ERROR;
   return __put_user(gfn, st->user_gfn++);
  } else
   st->user_gfn++;
 } else {
  if (err)
   return __put_user(err, st->user_err++);
  else
   st->user_err++;
 }

 return 0;
}
