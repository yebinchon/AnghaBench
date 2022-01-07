
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srb {int ref_count; } ;
typedef int refcount_t ;


 int ENXIO ;
 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static int
sp_get(struct srb *sp)
{
 if (!refcount_inc_not_zero((refcount_t *)&sp->ref_count))

  return ENXIO;
 else
  return 0;
}
