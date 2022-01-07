
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcon_priv {int pending_src; int curr_src; int switch_source; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void dcon_set_source(struct dcon_priv *dcon, int arg)
{
 if (dcon->pending_src == arg)
  return;

 dcon->pending_src = arg;

 if (dcon->curr_src != arg)
  schedule_work(&dcon->switch_source);
}
