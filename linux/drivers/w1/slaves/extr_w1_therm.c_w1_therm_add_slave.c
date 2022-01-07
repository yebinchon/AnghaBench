
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_therm_family_data {int dummy; } ;
struct w1_slave {int family_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THERM_REFCNT (int ) ;
 int atomic_set (int ,int) ;
 int kzalloc (int,int ) ;

__attribute__((used)) static int w1_therm_add_slave(struct w1_slave *sl)
{
 sl->family_data = kzalloc(sizeof(struct w1_therm_family_data),
  GFP_KERNEL);
 if (!sl->family_data)
  return -ENOMEM;
 atomic_set(THERM_REFCNT(sl->family_data), 1);
 return 0;
}
