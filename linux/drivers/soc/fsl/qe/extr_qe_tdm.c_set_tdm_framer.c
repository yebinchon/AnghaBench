
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int TDM_FRAMER_E1 ;
 int TDM_FRAMER_T1 ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int set_tdm_framer(const char *tdm_framer_type)
{
 if (strcmp(tdm_framer_type, "e1") == 0)
  return TDM_FRAMER_E1;
 else if (strcmp(tdm_framer_type, "t1") == 0)
  return TDM_FRAMER_T1;
 else
  return -EINVAL;
}
