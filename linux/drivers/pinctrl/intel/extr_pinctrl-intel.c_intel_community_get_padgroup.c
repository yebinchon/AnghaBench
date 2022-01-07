
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_padgroup {unsigned int base; unsigned int size; } ;
struct intel_community {int ngpps; struct intel_padgroup* gpps; } ;



__attribute__((used)) static const struct intel_padgroup *
intel_community_get_padgroup(const struct intel_community *community,
        unsigned int pin)
{
 int i;

 for (i = 0; i < community->ngpps; i++) {
  const struct intel_padgroup *padgrp = &community->gpps[i];

  if (pin >= padgrp->base && pin < padgrp->base + padgrp->size)
   return padgrp;
 }

 return ((void*)0);
}
