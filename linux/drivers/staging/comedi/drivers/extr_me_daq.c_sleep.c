
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HZ ;
 int schedule_timeout_interruptible (unsigned int) ;

__attribute__((used)) static inline void sleep(unsigned int sec)
{
 schedule_timeout_interruptible(sec * HZ);
}
