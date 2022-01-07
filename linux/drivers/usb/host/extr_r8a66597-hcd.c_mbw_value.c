
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8a66597 {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;


 unsigned short MBW_16 ;
 unsigned short MBW_32 ;

__attribute__((used)) static inline unsigned short mbw_value(struct r8a66597 *r8a66597)
{
 if (r8a66597->pdata->on_chip)
  return MBW_32;
 else
  return MBW_16;
}
