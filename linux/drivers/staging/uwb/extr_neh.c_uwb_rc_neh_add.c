
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uwb_rc_cmd_cb_f ;
typedef int u8 ;
typedef int u16 ;
struct uwb_rccb {int bCommandContext; } ;
struct uwb_rc_neh {int list_node; int context; void* arg; int cb; int evt; int evt_type; struct uwb_rc* rc; int timer; int kref; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {int neh_lock; int neh_list; TYPE_1__ uwb_dev; } ;


 int ENOMEM ;
 struct uwb_rc_neh* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __uwb_rc_ctx_get (struct uwb_rc*,struct uwb_rc_neh*) ;
 int cpu_to_le16 (int ) ;
 int dev_err (struct device*,char*,int) ;
 int kfree (struct uwb_rc_neh*) ;
 int kref_init (int *) ;
 struct uwb_rc_neh* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_setup (int *,int ,int ) ;
 int uwb_rc_neh_get (struct uwb_rc_neh*) ;
 int uwb_rc_neh_timer ;

struct uwb_rc_neh *uwb_rc_neh_add(struct uwb_rc *rc, struct uwb_rccb *cmd,
      u8 expected_type, u16 expected_event,
      uwb_rc_cmd_cb_f cb, void *arg)
{
 int result;
 unsigned long flags;
 struct device *dev = &rc->uwb_dev.dev;
 struct uwb_rc_neh *neh;

 neh = kzalloc(sizeof(*neh), GFP_KERNEL);
 if (neh == ((void*)0)) {
  result = -ENOMEM;
  goto error_kzalloc;
 }

 kref_init(&neh->kref);
 INIT_LIST_HEAD(&neh->list_node);
 timer_setup(&neh->timer, uwb_rc_neh_timer, 0);

 neh->rc = rc;
 neh->evt_type = expected_type;
 neh->evt = cpu_to_le16(expected_event);
 neh->cb = cb;
 neh->arg = arg;

 spin_lock_irqsave(&rc->neh_lock, flags);
 result = __uwb_rc_ctx_get(rc, neh);
 if (result >= 0) {
  cmd->bCommandContext = neh->context;
  list_add_tail(&neh->list_node, &rc->neh_list);
  uwb_rc_neh_get(neh);
 }
 spin_unlock_irqrestore(&rc->neh_lock, flags);
 if (result < 0)
  goto error_ctx_get;

 return neh;

error_ctx_get:
 kfree(neh);
error_kzalloc:
 dev_err(dev, "cannot open handle to radio controller: %d\n", result);
 return ERR_PTR(result);
}
