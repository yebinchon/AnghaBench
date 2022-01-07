
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
typedef int __le16 ;


 int cpu_to_le16 (short) ;
 int zd1201_setconfig (struct zd1201*,int,int *,int,int) ;

__attribute__((used)) static inline int zd1201_setconfig16(struct zd1201 *zd, int rid, short val)
{
 __le16 zdval = cpu_to_le16(val);
 return (zd1201_setconfig(zd, rid, &zdval, sizeof(__le16), 1));
}
