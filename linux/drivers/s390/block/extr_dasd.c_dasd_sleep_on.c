
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int dummy; } ;


 int _dasd_sleep_on (struct dasd_ccw_req*,int ) ;

int dasd_sleep_on(struct dasd_ccw_req *cqr)
{
 return _dasd_sleep_on(cqr, 0);
}
