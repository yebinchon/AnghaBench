
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_pkt {int dummy; } ;
struct cmdq_flush_completion {int err; int cmplt; } ;


 int EFAULT ;
 int cmdq_pkt_flush_async (struct cmdq_pkt*,int ,struct cmdq_flush_completion*) ;
 int cmdq_pkt_flush_cb ;
 int init_completion (int *) ;
 int wait_for_completion (int *) ;

int cmdq_pkt_flush(struct cmdq_pkt *pkt)
{
 struct cmdq_flush_completion cmplt;
 int err;

 init_completion(&cmplt.cmplt);
 err = cmdq_pkt_flush_async(pkt, cmdq_pkt_flush_cb, &cmplt);
 if (err < 0)
  return err;
 wait_for_completion(&cmplt.cmplt);

 return cmplt.err ? -EFAULT : 0;
}
