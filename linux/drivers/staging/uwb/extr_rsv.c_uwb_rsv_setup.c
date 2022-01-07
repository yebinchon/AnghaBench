
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct uwb_rc {int * rsv_workq; TYPE_1__ uwb_dev; } ;
typedef int name ;


 int ENOMEM ;
 int * create_singlethread_workqueue (char*) ;
 char* dev_name (int *) ;
 int snprintf (char*,int,char*,char*) ;

int uwb_rsv_setup(struct uwb_rc *rc)
{
 char name[16];

 snprintf(name, sizeof(name), "%s_rsvd", dev_name(&rc->uwb_dev.dev));
 rc->rsv_workq = create_singlethread_workqueue(name);
 if (rc->rsv_workq == ((void*)0))
  return -ENOMEM;

 return 0;
}
