
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cifs_fscache_netfs ;
 int fscache_register_netfs (int *) ;

int cifs_fscache_register(void)
{
 return fscache_register_netfs(&cifs_fscache_netfs);
}
