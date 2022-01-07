
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbsp {TYPE_1__* ops; scalar_t__ error; } ;
struct TYPE_2__ {scalar_t__ (* rbsp_uev ) (struct rbsp*,unsigned int*) ;} ;


 scalar_t__ stub1 (struct rbsp*,unsigned int*) ;

__attribute__((used)) static inline void rbsp_uev(struct rbsp *rbsp, unsigned int *value)
{
 if (rbsp->error)
  return;
 rbsp->error = rbsp->ops->rbsp_uev(rbsp, value);
}
