
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_cpu_temperature {scalar_t__ curr_amb_temp; scalar_t__ curr_cpu_temp; int index; int client; scalar_t__ prev_cpu_temp; scalar_t__ prev_amb_temp; } ;


 int MAX1617_AMB_TEMP ;
 int MAX1617_CPU_TEMP ;
 int bbc_i2c_readb (int ,unsigned char*,int ) ;
 int printk (char*,int ,int,int) ;

__attribute__((used)) static void get_current_temps(struct bbc_cpu_temperature *tp)
{
 tp->prev_amb_temp = tp->curr_amb_temp;
 bbc_i2c_readb(tp->client,
        (unsigned char *) &tp->curr_amb_temp,
        MAX1617_AMB_TEMP);
 tp->prev_cpu_temp = tp->curr_cpu_temp;
 bbc_i2c_readb(tp->client,
        (unsigned char *) &tp->curr_cpu_temp,
        MAX1617_CPU_TEMP);





}
