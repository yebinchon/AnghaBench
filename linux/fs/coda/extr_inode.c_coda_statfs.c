
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstatfs {int f_blocks; int f_bfree; int f_bavail; int f_files; int f_ffree; int f_bsize; int f_namelen; int f_type; } ;
struct dentry {int dummy; } ;


 int CODA_MAXNAMLEN ;
 int CODA_SUPER_MAGIC ;
 int venus_statfs (struct dentry*,struct kstatfs*) ;

__attribute__((used)) static int coda_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 int error;

 error = venus_statfs(dentry, buf);

 if (error) {

  buf->f_blocks = 9000000;
  buf->f_bfree = 9000000;
  buf->f_bavail = 9000000;
  buf->f_files = 9000000;
  buf->f_ffree = 9000000;
 }


 buf->f_type = CODA_SUPER_MAGIC;
 buf->f_bsize = 4096;
 buf->f_namelen = CODA_MAXNAMLEN;

 return 0;
}
