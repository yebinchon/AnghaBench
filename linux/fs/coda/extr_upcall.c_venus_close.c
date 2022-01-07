
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union outputArgs {int dummy; } outputArgs ;
struct CodaFid {int dummy; } ;
struct TYPE_4__ {int flags; struct CodaFid VFid; } ;
struct TYPE_3__ {int uid; } ;
union inputArgs {TYPE_2__ coda_close; TYPE_1__ ih; } ;
struct super_block {int dummy; } ;
typedef int kuid_t ;


 int CODA_CLOSE ;
 int SIZE (int ) ;
 int UPARG (int ) ;
 int coda_upcall (int ,int,int*,union inputArgs*) ;
 int coda_vcp (struct super_block*) ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int kvfree (union inputArgs*) ;
 int release ;

int venus_close(struct super_block *sb, struct CodaFid *fid, int flags,
  kuid_t uid)
{
 union inputArgs *inp;
 union outputArgs *outp;
 int insize, outsize, error;

 insize = SIZE(release);
 UPARG(CODA_CLOSE);

 inp->ih.uid = from_kuid(&init_user_ns, uid);
        inp->coda_close.VFid = *fid;
        inp->coda_close.flags = flags;

 error = coda_upcall(coda_vcp(sb), insize, &outsize, inp);

 kvfree(inp);
        return error;
}
