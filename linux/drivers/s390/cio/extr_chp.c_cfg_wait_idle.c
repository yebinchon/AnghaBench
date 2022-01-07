
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERESTARTSYS ;
 int cfg_idle () ;
 int cfg_wait_queue ;
 scalar_t__ wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int cfg_wait_idle(void)
{
 if (wait_event_interruptible(cfg_wait_queue, cfg_idle()))
  return -ERESTARTSYS;
 return 0;
}
