
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iocharset; } ;
struct exfat_sb_info {int s_lock; TYPE_1__ options; scalar_t__ nls_io; scalar_t__ nls_disk; } ;


 scalar_t__ exfat_default_iocharset ;
 int kfree (scalar_t__) ;
 int kvfree (struct exfat_sb_info*) ;
 int mutex_destroy (int *) ;
 int unload_nls (scalar_t__) ;

__attribute__((used)) static void exfat_free_super(struct exfat_sb_info *sbi)
{
 if (sbi->nls_disk)
  unload_nls(sbi->nls_disk);
 if (sbi->nls_io)
  unload_nls(sbi->nls_io);
 if (sbi->options.iocharset != exfat_default_iocharset)
  kfree(sbi->options.iocharset);

 mutex_destroy(&sbi->s_lock);
 kvfree(sbi);
}
