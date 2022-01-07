
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_soc_die_attr {int svr; int mask; } ;



__attribute__((used)) static const struct fsl_soc_die_attr *fsl_soc_die_match(
 u32 svr, const struct fsl_soc_die_attr *matches)
{
 while (matches->svr) {
  if (matches->svr == (svr & matches->mask))
   return matches;
  matches++;
 };
 return ((void*)0);
}
