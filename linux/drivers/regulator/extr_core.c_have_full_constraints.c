
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ has_full_constraints ;
 scalar_t__ of_have_populated_dt () ;

__attribute__((used)) static bool have_full_constraints(void)
{
 return has_full_constraints || of_have_populated_dt();
}
