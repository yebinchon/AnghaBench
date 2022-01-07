
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_clock () ;

__attribute__((used)) static inline unsigned long busy_clock(void)
{
 return local_clock() >> 10;
}
