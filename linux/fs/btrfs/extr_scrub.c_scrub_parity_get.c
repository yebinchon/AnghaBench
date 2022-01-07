
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_parity {int refs; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void scrub_parity_get(struct scrub_parity *sparity)
{
 refcount_inc(&sparity->refs);
}
