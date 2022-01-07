
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esas2r_adapter {int flags; TYPE_1__* nvram; } ;
struct TYPE_2__ {int options2; } ;


 int AF_CHPRST_PENDING ;
 int AF_DEGRADED_MODE ;
 int AF_HEARTBEAT_ENB ;
 int SASNVR2_HEARTBEAT ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline void esas2r_enable_heartbeat(struct esas2r_adapter *a)
{
 if (!test_bit(AF_DEGRADED_MODE, &a->flags) &&
     !test_bit(AF_CHPRST_PENDING, &a->flags) &&
     (a->nvram->options2 & SASNVR2_HEARTBEAT))
  set_bit(AF_HEARTBEAT_ENB, &a->flags);
 else
  clear_bit(AF_HEARTBEAT_ENB, &a->flags);
}
