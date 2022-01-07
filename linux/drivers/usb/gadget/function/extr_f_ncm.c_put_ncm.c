
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int __le16 ;


 int BUG () ;
 int put_unaligned_le16 (int ,int *) ;
 int put_unaligned_le32 (int ,int *) ;

__attribute__((used)) static inline void put_ncm(__le16 **p, unsigned size, unsigned val)
{
 switch (size) {
 case 1:
  put_unaligned_le16((u16)val, *p);
  break;
 case 2:
  put_unaligned_le32((u32)val, *p);

  break;
 default:
  BUG();
 }

 *p += size;
}
