
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;



__attribute__((used)) static inline bool lpfc_rangecheck(uint val, uint min, uint max)
{
 return val >= min && val <= max;
}
