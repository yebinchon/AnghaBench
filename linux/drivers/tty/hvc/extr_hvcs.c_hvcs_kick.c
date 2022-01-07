
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hvcs_kicked ;
 int hvcs_task ;
 int wake_up_process (int ) ;
 int wmb () ;

__attribute__((used)) static void hvcs_kick(void)
{
 hvcs_kicked = 1;
 wmb();
 wake_up_process(hvcs_task);
}
