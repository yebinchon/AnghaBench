
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_xdomain {int get_properties_work; TYPE_1__* tb; int properties_changed_work; int get_uuid_work; scalar_t__ needs_uuid; int properties_changed_retries; int properties_retries; int uuid_retries; } ;
struct TYPE_2__ {int wq; } ;


 int XDOMAIN_PROPERTIES_CHANGED_RETRIES ;
 int XDOMAIN_PROPERTIES_RETRIES ;
 int XDOMAIN_UUID_RETRIES ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void start_handshake(struct tb_xdomain *xd)
{
 xd->uuid_retries = XDOMAIN_UUID_RETRIES;
 xd->properties_retries = XDOMAIN_PROPERTIES_RETRIES;
 xd->properties_changed_retries = XDOMAIN_PROPERTIES_CHANGED_RETRIES;

 if (xd->needs_uuid) {
  queue_delayed_work(xd->tb->wq, &xd->get_uuid_work,
       msecs_to_jiffies(100));
 } else {

  queue_delayed_work(xd->tb->wq, &xd->properties_changed_work,
       msecs_to_jiffies(100));
  queue_delayed_work(xd->tb->wq, &xd->get_properties_work,
       msecs_to_jiffies(1000));
 }
}
