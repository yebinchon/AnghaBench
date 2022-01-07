
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
typedef int __le16 ;


 short le16_to_cpu (int ) ;
 int zd1201_getconfig (struct zd1201*,int,int *,int) ;

__attribute__((used)) static inline int zd1201_getconfig16(struct zd1201 *zd, int rid, short *val)
{
 int err;
 __le16 zdval;

 err = zd1201_getconfig(zd, rid, &zdval, sizeof(__le16));
 if (err)
  return err;
 *val = le16_to_cpu(zdval);
 return 0;
}
