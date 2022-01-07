
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int host; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {int mmu_private; } ;


 TYPE_1__* AFFS_I (int ) ;
 int affs_get_block ;
 int affs_write_failed (struct address_space*,unsigned int) ;
 int cont_write_begin (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,void**,int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int affs_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata)
{
 int ret;

 *pagep = ((void*)0);
 ret = cont_write_begin(file, mapping, pos, len, flags, pagep, fsdata,
    affs_get_block,
    &AFFS_I(mapping->host)->mmu_private);
 if (unlikely(ret))
  affs_write_failed(mapping, pos + len);

 return ret;
}
