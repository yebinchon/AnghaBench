
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_bit_key {int dummy; } ;


 int ERESTARTSYS ;
 int current ;
 int freezable_schedule_unsafe () ;
 scalar_t__ signal_pending_state (int,int ) ;

__attribute__((used)) static int
cifs_wait_bit_killable(struct wait_bit_key *key, int mode)
{
 freezable_schedule_unsafe();
 if (signal_pending_state(mode, current))
  return -ERESTARTSYS;
 return 0;
}
