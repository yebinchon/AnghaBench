
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct coda_vattr {int dummy; } ;
struct TYPE_4__ {struct coda_vattr attr; } ;
union outputArgs {TYPE_2__ coda_getattr; } ;
struct CodaFid {int dummy; } ;
struct TYPE_3__ {struct CodaFid VFid; } ;
union inputArgs {TYPE_1__ coda_getattr; } ;
struct super_block {int dummy; } ;


 int CODA_GETATTR ;
 int SIZE (int ) ;
 int UPARG (int ) ;
 int coda_upcall (int ,int,int*,union inputArgs*) ;
 int coda_vcp (struct super_block*) ;
 int getattr ;
 int kvfree (union inputArgs*) ;

int venus_getattr(struct super_block *sb, struct CodaFid *fid,
       struct coda_vattr *attr)
{
        union inputArgs *inp;
        union outputArgs *outp;
        int insize, outsize, error;

        insize = SIZE(getattr);
 UPARG(CODA_GETATTR);
        inp->coda_getattr.VFid = *fid;

 error = coda_upcall(coda_vcp(sb), insize, &outsize, inp);
 if (!error)
  *attr = outp->coda_getattr.attr;

 kvfree(inp);
        return error;
}
