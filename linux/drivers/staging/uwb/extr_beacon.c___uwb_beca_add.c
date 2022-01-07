
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rc_evt_beacon {int dummy; } ;
struct TYPE_2__ {int list; } ;
struct uwb_rc {TYPE_1__ uwb_beca; } ;
struct uwb_beca_e {unsigned long ts_jiffies; int node; int * uwb_dev; } ;
struct uwb_beacon_frame {int dummy; } ;


 int GFP_KERNEL ;
 struct uwb_beca_e* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int uwb_beca_e_init (struct uwb_beca_e*) ;

__attribute__((used)) static
struct uwb_beca_e *__uwb_beca_add(struct uwb_rc *rc,
      struct uwb_rc_evt_beacon *be,
      struct uwb_beacon_frame *bf,
      unsigned long ts_jiffies)
{
 struct uwb_beca_e *bce;

 bce = kzalloc(sizeof(*bce), GFP_KERNEL);
 if (bce == ((void*)0))
  return ((void*)0);
 uwb_beca_e_init(bce);
 bce->ts_jiffies = ts_jiffies;
 bce->uwb_dev = ((void*)0);
 list_add(&bce->node, &rc->uwb_beca.list);
 return bce;
}
