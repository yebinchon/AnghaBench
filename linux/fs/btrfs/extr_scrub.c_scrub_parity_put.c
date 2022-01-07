
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_parity {int refs; } ;


 int refcount_dec_and_test (int *) ;
 int scrub_parity_check_and_repair (struct scrub_parity*) ;

__attribute__((used)) static void scrub_parity_put(struct scrub_parity *sparity)
{
 if (!refcount_dec_and_test(&sparity->refs))
  return;

 scrub_parity_check_and_repair(sparity);
}
