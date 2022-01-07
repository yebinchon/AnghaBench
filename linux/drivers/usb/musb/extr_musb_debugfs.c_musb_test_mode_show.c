
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct musb* private; } ;
struct musb {int controller; int mregs; } ;


 int MUSB_TESTMODE ;
 unsigned int MUSB_TEST_FIFO_ACCESS ;
 unsigned int MUSB_TEST_FORCE_FS ;
 unsigned int MUSB_TEST_FORCE_HOST ;
 unsigned int MUSB_TEST_FORCE_HS ;
 unsigned int MUSB_TEST_J ;
 unsigned int MUSB_TEST_K ;
 unsigned int MUSB_TEST_PACKET ;
 unsigned int MUSB_TEST_SE0_NAK ;
 unsigned int musb_readb (int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static int musb_test_mode_show(struct seq_file *s, void *unused)
{
 struct musb *musb = s->private;
 unsigned test;

 pm_runtime_get_sync(musb->controller);
 test = musb_readb(musb->mregs, MUSB_TESTMODE);
 pm_runtime_mark_last_busy(musb->controller);
 pm_runtime_put_autosuspend(musb->controller);

 if (test == (MUSB_TEST_FORCE_HOST | MUSB_TEST_FORCE_FS))
  seq_printf(s, "force host full-speed\n");

 else if (test == (MUSB_TEST_FORCE_HOST | MUSB_TEST_FORCE_HS))
  seq_printf(s, "force host high-speed\n");

 else if (test == MUSB_TEST_FORCE_HOST)
  seq_printf(s, "force host\n");

 else if (test == MUSB_TEST_FIFO_ACCESS)
  seq_printf(s, "fifo access\n");

 else if (test == MUSB_TEST_FORCE_FS)
  seq_printf(s, "force full-speed\n");

 else if (test == MUSB_TEST_FORCE_HS)
  seq_printf(s, "force high-speed\n");

 else if (test == MUSB_TEST_PACKET)
  seq_printf(s, "test packet\n");

 else if (test == MUSB_TEST_K)
  seq_printf(s, "test K\n");

 else if (test == MUSB_TEST_J)
  seq_printf(s, "test J\n");

 else if (test == MUSB_TEST_SE0_NAK)
  seq_printf(s, "test SE0 NAK\n");

 return 0;
}
