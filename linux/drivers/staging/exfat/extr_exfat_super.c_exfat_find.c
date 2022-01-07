
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qstr {scalar_t__ len; scalar_t__ name; } ;
struct inode {int dummy; } ;
struct file_id_t {int dummy; } ;


 int ENOENT ;
 int ffsLookupFile (struct inode*,int *,struct file_id_t*) ;

__attribute__((used)) static int exfat_find(struct inode *dir, struct qstr *qname,
        struct file_id_t *fid)
{
 int err;

 if (qname->len == 0)
  return -ENOENT;

 err = ffsLookupFile(dir, (u8 *)qname->name, fid);
 if (err)
  return -ENOENT;

 return 0;
}
