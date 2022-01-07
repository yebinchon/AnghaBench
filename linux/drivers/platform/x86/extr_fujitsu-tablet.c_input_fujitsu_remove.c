
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idev; } ;


 TYPE_1__ fujitsu ;
 int input_unregister_device (int ) ;

__attribute__((used)) static void input_fujitsu_remove(void)
{
 input_unregister_device(fujitsu.idev);
}
