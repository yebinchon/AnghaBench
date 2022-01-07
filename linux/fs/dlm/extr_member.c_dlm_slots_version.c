
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_header {int h_version; } ;


 int DLM_HEADER_SLOTS ;

int dlm_slots_version(struct dlm_header *h)
{
 if ((h->h_version & 0x0000FFFF) < DLM_HEADER_SLOTS)
  return 0;
 return 1;
}
