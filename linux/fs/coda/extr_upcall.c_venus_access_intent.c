
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union outputArgs {int dummy; } outputArgs ;
struct CodaFid {int dummy; } ;
struct TYPE_2__ {size_t count; int type; int pos; struct CodaFid VFid; } ;
union inputArgs {TYPE_1__ coda_access_intent; } ;
struct super_block {int dummy; } ;
typedef int loff_t ;


 int CODA_ACCESS_INTENT ;
 int CODA_ACCESS_TYPE_READ_FINISH ;
 int CODA_ACCESS_TYPE_WRITE_FINISH ;
 int EOPNOTSUPP ;
 int SIZE (int ) ;
 int UPARG (int ) ;
 int access_intent ;
 int coda_upcall (int ,int,int*,union inputArgs*) ;
 int coda_vcp (struct super_block*) ;
 int kvfree (union inputArgs*) ;

int venus_access_intent(struct super_block *sb, struct CodaFid *fid,
   bool *access_intent_supported,
   size_t count, loff_t ppos, int type)
{
 union inputArgs *inp;
 union outputArgs *outp;
 int insize, outsize, error;
 bool finalizer =
  type == CODA_ACCESS_TYPE_READ_FINISH ||
  type == CODA_ACCESS_TYPE_WRITE_FINISH;

 if (!*access_intent_supported && !finalizer)
  return 0;

 insize = SIZE(access_intent);
 UPARG(CODA_ACCESS_INTENT);

 inp->coda_access_intent.VFid = *fid;
 inp->coda_access_intent.count = count;
 inp->coda_access_intent.pos = ppos;
 inp->coda_access_intent.type = type;

 error = coda_upcall(coda_vcp(sb), insize,
       finalizer ? ((void*)0) : &outsize, inp);






 if (!finalizer || error)
  kvfree(inp);


 if (error == -EOPNOTSUPP) {
  *access_intent_supported = 0;
  error = 0;
 }
 return error;
}
