
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int strncpy (char*,char const*,int) ;

bool ParseQualifiedString(
 char *In, u32 *Start, char *Out, char LeftQualifier, char RightQualifier
)
{
 u32 i = 0, j = 0;
 char c = In[(*Start)++];

 if (c != LeftQualifier)
  return 0;

 i = (*Start);
 while ((c = In[(*Start)++]) != RightQualifier)
  ;
 j = (*Start) - 2;
 strncpy((char *)Out, (const char *)(In+i), j-i+1);

 return 1;
}
