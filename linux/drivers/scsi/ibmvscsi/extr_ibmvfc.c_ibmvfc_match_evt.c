
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void ibmvfc_event ;



__attribute__((used)) static int ibmvfc_match_evt(struct ibmvfc_event *evt, void *match)
{
 if (evt == match)
  return 1;
 return 0;
}
