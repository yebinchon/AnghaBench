
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {int dummy; } ;


 int EVENT_WAIT_FOREVER ;

__attribute__((used)) static inline int rsi_usb_event_timeout(struct rsi_hw *adapter)
{
 return EVENT_WAIT_FOREVER;
}
