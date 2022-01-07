
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atp_unit {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ ATP880_DEVID1 ;
 scalar_t__ ATP880_DEVID2 ;

__attribute__((used)) static inline bool is880(struct atp_unit *atp)
{
 return atp->pdev->device == ATP880_DEVID1 ||
        atp->pdev->device == ATP880_DEVID2;
}
