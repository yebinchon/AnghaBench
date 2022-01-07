
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 int BUG () ;
 unsigned int get_unaligned_le16 (int *) ;
 unsigned int get_unaligned_le32 (int *) ;

__attribute__((used)) static inline unsigned get_ncm(__le16 **p, unsigned size)
{
 unsigned tmp;

 switch (size) {
 case 1:
  tmp = get_unaligned_le16(*p);
  break;
 case 2:
  tmp = get_unaligned_le32(*p);
  break;
 default:
  BUG();
 }

 *p += size;
 return tmp;
}
