
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HVC_COOKIE ;

__attribute__((used)) static inline int xenbus_devid_to_vtermno(int devid)
{
 return devid + HVC_COOKIE;
}
