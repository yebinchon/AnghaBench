
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_bootrom {int next_request; int dwork; } ;
typedef enum next_request_type { ____Placeholder_next_request_type } next_request_type ;


 int msecs_to_jiffies (unsigned long) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void gb_bootrom_set_timeout(struct gb_bootrom *bootrom,
       enum next_request_type next,
       unsigned long timeout)
{
 bootrom->next_request = next;
 schedule_delayed_work(&bootrom->dwork, msecs_to_jiffies(timeout));
}
