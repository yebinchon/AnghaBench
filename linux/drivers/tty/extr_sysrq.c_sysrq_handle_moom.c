
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int moom_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void sysrq_handle_moom(int key)
{
 schedule_work(&moom_work);
}
