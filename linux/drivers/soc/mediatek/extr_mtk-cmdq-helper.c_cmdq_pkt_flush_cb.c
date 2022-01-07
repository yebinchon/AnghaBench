
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_flush_completion {int err; int cmplt; } ;
struct cmdq_cb_data {scalar_t__ sta; scalar_t__ data; } ;


 scalar_t__ CMDQ_CB_NORMAL ;
 int complete (int *) ;

__attribute__((used)) static void cmdq_pkt_flush_cb(struct cmdq_cb_data data)
{
 struct cmdq_flush_completion *cmplt;

 cmplt = (struct cmdq_flush_completion *)data.data;
 if (data.sta != CMDQ_CB_NORMAL)
  cmplt->err = 1;
 else
  cmplt->err = 0;
 complete(&cmplt->cmplt);
}
