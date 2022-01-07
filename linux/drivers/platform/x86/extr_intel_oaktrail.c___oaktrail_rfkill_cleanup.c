
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;


 int rfkill_destroy (struct rfkill*) ;
 int rfkill_unregister (struct rfkill*) ;

__attribute__((used)) static inline void __oaktrail_rfkill_cleanup(struct rfkill *rf)
{
 if (rf) {
  rfkill_unregister(rf);
  rfkill_destroy(rf);
 }
}
