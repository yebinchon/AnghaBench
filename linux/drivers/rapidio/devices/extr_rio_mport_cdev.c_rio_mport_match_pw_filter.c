
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_pw_filter {scalar_t__ mask; scalar_t__ low; scalar_t__ high; } ;



__attribute__((used)) static int rio_mport_match_pw_filter(struct rio_pw_filter *a,
         struct rio_pw_filter *b)
{
 if ((a->mask == b->mask) && (a->low == b->low) && (a->high == b->high))
  return 1;
 return 0;
}
