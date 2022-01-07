
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbsp {TYPE_1__* ops; scalar_t__ error; } ;
struct TYPE_2__ {scalar_t__ (* rbsp_bits ) (struct rbsp*,int,int*) ;} ;


 scalar_t__ stub1 (struct rbsp*,int,int*) ;

__attribute__((used)) static inline void rbsp_bits(struct rbsp *rbsp, int n, int *value)
{
 if (rbsp->error)
  return;
 rbsp->error = rbsp->ops->rbsp_bits(rbsp, n, value);
}
