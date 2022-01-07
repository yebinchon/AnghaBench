
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NLP_STE_MAX_STATE ;






 int snprintf (char*,size_t,char*,int) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static char *
lpfc_nlp_state_name(char *buffer, size_t size, int state)
{
 static char *states[] = {
  [128] = "UNUSED",
  [132] = "PLOGI",
  [136] = "ADISC",
  [130] = "REGLOGIN",
  [131] = "PRLI",
  [135] = "LOGO",
  [129] = "UNMAPPED",
  [134] = "MAPPED",
  [133] = "NPR",
 };

 if (state < NLP_STE_MAX_STATE && states[state])
  strlcpy(buffer, states[state], size);
 else
  snprintf(buffer, size, "unknown (%d)", state);
 return buffer;
}
