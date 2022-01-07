
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 scalar_t__ pnp_bios_get_stat_res (void*) ;
 int seq_write (struct seq_file*,void*,int) ;

__attribute__((used)) static int pnp_legacyres_proc_show(struct seq_file *m, void *v)
{
 void *buf;

 buf = kmalloc(65536, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 if (pnp_bios_get_stat_res(buf)) {
  kfree(buf);
  return -EIO;
 }

 seq_write(m, buf, 65536);
 kfree(buf);
 return 0;
}
