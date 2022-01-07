
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void extract_unc_hostname(const char *unc, const char **h, size_t *len)
{
 const char *end;


 while (*unc && (*unc == '\\' || *unc == '/'))
  unc++;

 end = unc;

 while (*end && !(*end == '\\' || *end == '/'))
  end++;

 *h = unc;
 *len = end - unc;
}
