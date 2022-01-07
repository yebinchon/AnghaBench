
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct apple_gmux_data {int index_lock; scalar_t__ iostart; } ;


 scalar_t__ GMUX_PORT_READ ;
 scalar_t__ GMUX_PORT_VALUE ;
 int gmux_index_wait_complete (struct apple_gmux_data*) ;
 int gmux_index_wait_ready (struct apple_gmux_data*) ;
 int inl (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static u32 gmux_index_read32(struct apple_gmux_data *gmux_data, int port)
{
 u32 val;

 mutex_lock(&gmux_data->index_lock);
 gmux_index_wait_ready(gmux_data);
 outb((port & 0xff), gmux_data->iostart + GMUX_PORT_READ);
 gmux_index_wait_complete(gmux_data);
 val = inl(gmux_data->iostart + GMUX_PORT_VALUE);
 mutex_unlock(&gmux_data->index_lock);

 return val;
}
