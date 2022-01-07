
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int host; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int mmu_private; } ;


 TYPE_1__* EXFAT_I (int ) ;
 int cont_write_begin (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page**,void**,int ,int *) ;
 int exfat_get_block ;
 int exfat_write_failed (struct address_space*,scalar_t__) ;

__attribute__((used)) static int exfat_write_begin(struct file *file, struct address_space *mapping,
        loff_t pos, unsigned int len, unsigned int flags,
        struct page **pagep, void **fsdata)
{
 int ret;

 *pagep = ((void*)0);
 ret = cont_write_begin(file, mapping, pos, len, flags, pagep, fsdata,
          exfat_get_block,
          &EXFAT_I(mapping->host)->mmu_private);

 if (ret < 0)
  exfat_write_failed(mapping, pos + len);
 return ret;
}
