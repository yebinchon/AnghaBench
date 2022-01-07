
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_slave {int status; TYPE_1__* bus; } ;
typedef enum sdw_slave_status { ____Placeholder_sdw_slave_status } sdw_slave_status ;
struct TYPE_2__ {int bus_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void sdw_modify_slave_status(struct sdw_slave *slave,
        enum sdw_slave_status status)
{
 mutex_lock(&slave->bus->bus_lock);
 slave->status = status;
 mutex_unlock(&slave->bus->bus_lock);
}
