
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;
union outputArgs {TYPE_2__ coda_statfs; } ;
typedef union inputArgs {int dummy; } inputArgs ;
struct kstatfs {int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; } ;
struct dentry {int d_sb; } ;


 int CODA_STATFS ;
 int SIZE (int ) ;
 int UPARG (int ) ;
 int coda_upcall (int ,int,int*,union inputArgs*) ;
 int coda_vcp (int ) ;
 int kvfree (union inputArgs*) ;
 int statfs ;

int venus_statfs(struct dentry *dentry, struct kstatfs *sfs)
{
        union inputArgs *inp;
        union outputArgs *outp;
        int insize, outsize, error;

 insize = SIZE(statfs);
 UPARG(CODA_STATFS);

 error = coda_upcall(coda_vcp(dentry->d_sb), insize, &outsize, inp);
 if (!error) {
  sfs->f_blocks = outp->coda_statfs.stat.f_blocks;
  sfs->f_bfree = outp->coda_statfs.stat.f_bfree;
  sfs->f_bavail = outp->coda_statfs.stat.f_bavail;
  sfs->f_files = outp->coda_statfs.stat.f_files;
  sfs->f_ffree = outp->coda_statfs.stat.f_ffree;
 }

 kvfree(inp);
        return error;
}
