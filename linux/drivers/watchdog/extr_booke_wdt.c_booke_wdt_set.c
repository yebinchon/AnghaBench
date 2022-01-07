
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __booke_wdt_set ;
 int on_each_cpu (int ,void*,int ) ;

__attribute__((used)) static void booke_wdt_set(void *data)
{
 on_each_cpu(__booke_wdt_set, data, 0);
}
