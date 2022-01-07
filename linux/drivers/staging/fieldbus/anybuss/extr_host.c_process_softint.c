
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
typedef int u8 ;
struct anybuss_host {int softint_pending; int wq; int qlock; int powerq; int qcache; int dev; int regmap; int ind_ab; int power_on; struct anybuss_client* client; } ;
struct anybuss_client {int (* on_area_updated ) (struct anybuss_client*) ;int (* on_online_changed ) (struct anybuss_client*,int) ;} ;
struct ab_task {int (* done_fn ) (struct anybuss_host*) ;} ;


 int ENOMEM ;
 unsigned int EVENT_CAUSE_DC ;
 unsigned int EVENT_CAUSE_FBOF ;
 unsigned int EVENT_CAUSE_FBON ;
 unsigned int IND_AX_EVNT ;
 int IND_AX_FBCTRL ;
 int REG_EVENT_CAUSE ;
 int REG_IND_AP ;
 int WARN_ON (int) ;
 int ab_task_enqueue (struct ab_task*,int ,int *,int *) ;
 int ab_task_put (struct ab_task*) ;
 unsigned int atomic_read (int *) ;
 struct ab_task* create_area_writer (int ,int ,int ,int const*,int) ;
 int dev_dbg (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int softint_ack (struct anybuss_host*) ;
 int stub1 (struct anybuss_client*,int) ;
 int stub2 (struct anybuss_client*,int) ;
 int stub3 (struct anybuss_client*) ;

__attribute__((used)) static void process_softint(struct anybuss_host *cd)
{
 struct anybuss_client *client = cd->client;
 static const u8 zero;
 int ret;
 unsigned int ind_ap, ev;
 struct ab_task *t;

 if (!cd->power_on)
  return;
 if (cd->softint_pending)
  return;
 regmap_read(cd->regmap, REG_IND_AP, &ind_ap);
 if (!((atomic_read(&cd->ind_ab) ^ ind_ap) & IND_AX_EVNT))
  return;

 regmap_read(cd->regmap, REG_EVENT_CAUSE, &ev);
 if (ev & EVENT_CAUSE_FBON) {
  if (client->on_online_changed)
   client->on_online_changed(client, 1);
  dev_dbg(cd->dev, "Fieldbus ON");
 }
 if (ev & EVENT_CAUSE_FBOF) {
  if (client->on_online_changed)
   client->on_online_changed(client, 0);
  dev_dbg(cd->dev, "Fieldbus OFF");
 }
 if (ev & EVENT_CAUSE_DC) {
  if (client->on_area_updated)
   client->on_area_updated(client);
  dev_dbg(cd->dev, "Fieldbus data changed");
 }





 t = create_area_writer(cd->qcache, IND_AX_FBCTRL,
          REG_EVENT_CAUSE, &zero, sizeof(zero));
 if (!t) {
  ret = -ENOMEM;
  goto out;
 }
 t->done_fn = softint_ack;
 ret = ab_task_enqueue(t, cd->powerq, &cd->qlock, &cd->wq);
 ab_task_put(t);
 cd->softint_pending = 1;
out:
 WARN_ON(ret);
 if (ret)
  softint_ack(cd);
}
