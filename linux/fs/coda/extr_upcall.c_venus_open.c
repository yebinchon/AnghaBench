
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct file* fh; } ;
union outputArgs {TYPE_1__ coda_open_by_fd; } ;
struct CodaFid {int dummy; } ;
struct TYPE_4__ {int flags; struct CodaFid VFid; } ;
union inputArgs {TYPE_2__ coda_open_by_fd; } ;
struct super_block {int dummy; } ;
struct file {int dummy; } ;


 int CODA_OPEN_BY_FD ;
 int SIZE (int ) ;
 int UPARG (int ) ;
 int coda_upcall (int ,int,int*,union inputArgs*) ;
 int coda_vcp (struct super_block*) ;
 int kvfree (union inputArgs*) ;
 int open_by_fd ;

int venus_open(struct super_block *sb, struct CodaFid *fid,
    int flags, struct file **fh)
{
        union inputArgs *inp;
        union outputArgs *outp;
        int insize, outsize, error;

 insize = SIZE(open_by_fd);
 UPARG(CODA_OPEN_BY_FD);

 inp->coda_open_by_fd.VFid = *fid;
 inp->coda_open_by_fd.flags = flags;

 error = coda_upcall(coda_vcp(sb), insize, &outsize, inp);
 if (!error)
  *fh = outp->coda_open_by_fd.fh;

 kvfree(inp);
 return error;
}
