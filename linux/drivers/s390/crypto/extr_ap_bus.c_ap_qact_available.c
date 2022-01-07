
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qact; } ;


 TYPE_1__* ap_configuration ;

__attribute__((used)) static inline int ap_qact_available(void)
{
 if (ap_configuration)
  return ap_configuration->qact;
 return 0;
}
