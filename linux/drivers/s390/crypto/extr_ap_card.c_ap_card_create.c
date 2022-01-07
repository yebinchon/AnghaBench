
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * type; int release; } ;
struct TYPE_4__ {int device_type; TYPE_1__ device; } ;
struct ap_card {int raw_hwtype; int queue_depth; unsigned int functions; int id; TYPE_2__ ap_dev; int queues; int list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ap_card_device_release ;
 int ap_card_type ;
 struct ap_card* kzalloc (int,int ) ;

struct ap_card *ap_card_create(int id, int queue_depth, int raw_type,
          int comp_type, unsigned int functions)
{
 struct ap_card *ac;

 ac = kzalloc(sizeof(*ac), GFP_KERNEL);
 if (!ac)
  return ((void*)0);
 INIT_LIST_HEAD(&ac->list);
 INIT_LIST_HEAD(&ac->queues);
 ac->ap_dev.device.release = ap_card_device_release;
 ac->ap_dev.device.type = &ap_card_type;
 ac->ap_dev.device_type = comp_type;
 ac->raw_hwtype = raw_type;
 ac->queue_depth = queue_depth;
 ac->functions = functions;
 ac->id = id;
 return ac;
}
