
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_buffhd {struct fsg_buffhd* buf; } ;


 int kfree (struct fsg_buffhd*) ;

__attribute__((used)) static void _fsg_common_free_buffers(struct fsg_buffhd *buffhds, unsigned n)
{
 if (buffhds) {
  struct fsg_buffhd *bh = buffhds;
  while (n--) {
   kfree(bh->buf);
   ++bh;
  }
  kfree(buffhds);
 }
}
