
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reserved_mem {scalar_t__ size; scalar_t__ base; } ;


 int WARN_ON (int) ;
 scalar_t__ fbpr_a ;
 scalar_t__ fbpr_sz ;

__attribute__((used)) static int bman_fbpr(struct reserved_mem *rmem)
{
 fbpr_a = rmem->base;
 fbpr_sz = rmem->size;

 WARN_ON(!(fbpr_a && fbpr_sz));

 return 0;
}
