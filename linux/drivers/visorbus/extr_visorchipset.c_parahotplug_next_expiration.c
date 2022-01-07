
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARAHOTPLUG_TIMEOUT_MS ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;

__attribute__((used)) static unsigned long parahotplug_next_expiration(void)
{
 return jiffies + msecs_to_jiffies(PARAHOTPLUG_TIMEOUT_MS);
}
