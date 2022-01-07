
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adfs_dir {unsigned int pos; TYPE_1__** bh_fplus; } ;
struct adfs_bigdirheader {int bigdirentries; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int ENOENT ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static int
adfs_fplus_setpos(struct adfs_dir *dir, unsigned int fpos)
{
 struct adfs_bigdirheader *h =
  (struct adfs_bigdirheader *) dir->bh_fplus[0]->b_data;
 int ret = -ENOENT;

 if (fpos <= le32_to_cpu(h->bigdirentries)) {
  dir->pos = fpos;
  ret = 0;
 }

 return ret;
}
