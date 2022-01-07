
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct w1_slave {TYPE_1__* master; int reg_num; } ;
struct TYPE_3__ {int bus_mutex; } ;


 int ARRAY_SIZE (int*) ;
 int le64_to_cpu (int ) ;
 int memcpy (int*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w1_reset_bus (TYPE_1__*) ;
 int w1_write_block (TYPE_1__*,int*,int ) ;

__attribute__((used)) static int w1_f29_disable_test_mode(struct w1_slave *sl)
{
 int res;
 u8 magic[10] = {0x96, };
 u64 rn = le64_to_cpu(*((u64*)&sl->reg_num));

 memcpy(&magic[1], &rn, 8);
 magic[9] = 0x3C;

 mutex_lock(&sl->master->bus_mutex);

 res = w1_reset_bus(sl->master);
 if (res)
  goto out;
 w1_write_block(sl->master, magic, ARRAY_SIZE(magic));

 res = w1_reset_bus(sl->master);
out:
 mutex_unlock(&sl->master->bus_mutex);
 return res;
}
