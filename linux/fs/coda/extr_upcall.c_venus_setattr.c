
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union outputArgs {int dummy; } outputArgs ;
struct coda_vattr {int dummy; } ;
struct CodaFid {int dummy; } ;
struct TYPE_2__ {struct coda_vattr attr; struct CodaFid VFid; } ;
union inputArgs {TYPE_1__ coda_setattr; } ;
struct super_block {int dummy; } ;


 int CODA_SETATTR ;
 int SIZE (int ) ;
 int UPARG (int ) ;
 int coda_upcall (int ,int,int*,union inputArgs*) ;
 int coda_vcp (struct super_block*) ;
 int kvfree (union inputArgs*) ;
 int setattr ;

int venus_setattr(struct super_block *sb, struct CodaFid *fid,
    struct coda_vattr *vattr)
{
        union inputArgs *inp;
        union outputArgs *outp;
        int insize, outsize, error;

 insize = SIZE(setattr);
 UPARG(CODA_SETATTR);

        inp->coda_setattr.VFid = *fid;
 inp->coda_setattr.attr = *vattr;

 error = coda_upcall(coda_vcp(sb), insize, &outsize, inp);

 kvfree(inp);
        return error;
}
