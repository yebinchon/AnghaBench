
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270 {scalar_t__ state; } ;


 scalar_t__ RAW3270_STATE_READY ;

__attribute__((used)) static inline int raw3270_state_ready(struct raw3270 *rp)
{
 return rp->state == RAW3270_STATE_READY;
}
