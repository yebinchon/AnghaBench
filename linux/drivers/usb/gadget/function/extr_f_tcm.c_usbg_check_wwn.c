
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USBG_NAMELEN ;
 unsigned int strlen (char const*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static const char *usbg_check_wwn(const char *name)
{
 const char *n;
 unsigned int len;

 n = strstr(name, "naa.");
 if (!n)
  return ((void*)0);
 n += 4;
 len = strlen(n);
 if (len == 0 || len > USBG_NAMELEN - 1)
  return ((void*)0);
 return n;
}
