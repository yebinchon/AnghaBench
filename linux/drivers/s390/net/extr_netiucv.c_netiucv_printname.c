
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static char *netiucv_printname(char *name, int len)
{
 static char tmp[17];
 char *p = tmp;
 memcpy(tmp, name, len);
 tmp[len] = '\0';
 while (*p && ((p - tmp) < len) && (!isspace(*p)))
  p++;
 *p = '\0';
 return tmp;
}
