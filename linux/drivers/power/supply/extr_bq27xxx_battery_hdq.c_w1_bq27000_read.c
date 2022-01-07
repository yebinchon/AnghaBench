
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct w1_slave {TYPE_1__* master; } ;
struct TYPE_3__ {int bus_mutex; } ;


 unsigned int HDQ_CMD_READ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w1_read_8 (TYPE_1__*) ;
 int w1_write_8 (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int w1_bq27000_read(struct w1_slave *sl, unsigned int reg)
{
 u8 val;

 mutex_lock(&sl->master->bus_mutex);
 w1_write_8(sl->master, HDQ_CMD_READ | reg);
 val = w1_read_8(sl->master);
 mutex_unlock(&sl->master->bus_mutex);

 return val;
}
