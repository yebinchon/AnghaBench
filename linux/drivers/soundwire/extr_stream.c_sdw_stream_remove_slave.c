
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_stream_runtime {int dummy; } ;
struct sdw_slave {TYPE_1__* bus; } ;
struct TYPE_2__ {int bus_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdw_release_slave_stream (struct sdw_slave*,struct sdw_stream_runtime*) ;
 int sdw_slave_port_release (TYPE_1__*,struct sdw_slave*,struct sdw_stream_runtime*) ;

int sdw_stream_remove_slave(struct sdw_slave *slave,
       struct sdw_stream_runtime *stream)
{
 mutex_lock(&slave->bus->bus_lock);

 sdw_slave_port_release(slave->bus, slave, stream);
 sdw_release_slave_stream(slave, stream);

 mutex_unlock(&slave->bus->bus_lock);

 return 0;
}
