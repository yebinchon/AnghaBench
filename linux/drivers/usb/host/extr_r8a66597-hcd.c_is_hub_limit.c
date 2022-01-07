
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static int is_hub_limit(char *devpath)
{
 return ((strlen(devpath) >= 4) ? 1 : 0);
}
