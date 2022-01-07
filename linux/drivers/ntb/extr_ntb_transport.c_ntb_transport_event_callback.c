
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_ctx {int link_cleanup; int link_work; int ndev; } ;


 int ntb_link_is_up (int ,int *,int *) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ntb_transport_event_callback(void *data)
{
 struct ntb_transport_ctx *nt = data;

 if (ntb_link_is_up(nt->ndev, ((void*)0), ((void*)0)) == 1)
  schedule_delayed_work(&nt->link_work, 0);
 else
  schedule_work(&nt->link_cleanup);
}
