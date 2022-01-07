
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int * family_data; } ;


 int THERM_REFCNT (int *) ;
 int atomic_read (int ) ;
 int atomic_sub_return (int,int ) ;
 int kfree (int *) ;
 int msleep (int) ;

__attribute__((used)) static void w1_therm_remove_slave(struct w1_slave *sl)
{
 int refcnt = atomic_sub_return(1, THERM_REFCNT(sl->family_data));

 while (refcnt) {
  msleep(1000);
  refcnt = atomic_read(THERM_REFCNT(sl->family_data));
 }
 kfree(sl->family_data);
 sl->family_data = ((void*)0);
}
