
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ retry_delay_timestamp; } ;
typedef TYPE_1__ fc_port_t ;


 int HZ ;
 scalar_t__ jiffies ;

__attribute__((used)) static inline void
qla2x00_set_retry_delay_timestamp(fc_port_t *fcport, uint16_t retry_delay)
{
 if (retry_delay)
  fcport->retry_delay_timestamp = jiffies +
      (retry_delay * HZ / 10);
}
