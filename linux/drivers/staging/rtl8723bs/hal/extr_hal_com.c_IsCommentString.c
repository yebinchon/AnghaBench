
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool IsCommentString(char *szStr)
{
 if (*szStr == '/' && *(szStr+1) == '/')
  return 1;
 else
  return 0;
}
