
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ap_airq_flag ;

__attribute__((used)) static inline int ap_using_interrupts(void)
{
 return ap_airq_flag;
}
