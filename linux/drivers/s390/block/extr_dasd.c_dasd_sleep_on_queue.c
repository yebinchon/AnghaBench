
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int _dasd_sleep_on_queue (struct list_head*,int ) ;

int dasd_sleep_on_queue(struct list_head *ccw_queue)
{
 return _dasd_sleep_on_queue(ccw_queue, 0);
}
