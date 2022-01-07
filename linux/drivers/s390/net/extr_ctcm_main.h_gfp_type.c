
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ in_interrupt () ;

__attribute__((used)) static inline gfp_t gfp_type(void)
{
 return in_interrupt() ? GFP_ATOMIC : GFP_KERNEL;
}
