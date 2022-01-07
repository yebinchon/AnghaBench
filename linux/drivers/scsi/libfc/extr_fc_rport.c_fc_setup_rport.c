
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int create_singlethread_workqueue (char*) ;
 int rport_event_queue ;

int fc_setup_rport(void)
{
 rport_event_queue = create_singlethread_workqueue("fc_rport_eq");
 if (!rport_event_queue)
  return -ENOMEM;
 return 0;
}
