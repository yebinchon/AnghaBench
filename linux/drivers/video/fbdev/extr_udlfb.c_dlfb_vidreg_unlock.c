
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dlfb_set_register (char*,int,int) ;

__attribute__((used)) static char *dlfb_vidreg_unlock(char *buf)
{
 return dlfb_set_register(buf, 0xFF, 0xFF);
}
