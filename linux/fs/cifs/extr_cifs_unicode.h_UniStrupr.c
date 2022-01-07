
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __le16 ;


 int UniToupper (int ) ;
 scalar_t__ cpu_to_le16 (int ) ;
 int le16_to_cpu (scalar_t__) ;

__attribute__((used)) static inline __le16 *
UniStrupr(register __le16 *upin)
{
 register __le16 *up;

 up = upin;
 while (*up) {
  *up = cpu_to_le16(UniToupper(le16_to_cpu(*up)));
  up++;
 }
 return upin;
}
