
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum avmcardtype { ____Placeholder_avmcardtype } avmcardtype ;


 int B1_STAT0 (int) ;
 int b1_rd_reg (unsigned int,int ) ;

__attribute__((used)) static inline int b1_get_test_bit(unsigned int base,
      enum avmcardtype cardtype)
{
 return (b1_rd_reg(base, B1_STAT0(cardtype)) & 0x01) != 0;
}
