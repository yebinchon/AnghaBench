
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum avmcardtype { ____Placeholder_avmcardtype } avmcardtype ;


 int B1_STAT0 (int) ;
 int b1_wr_reg (unsigned int,int ,int) ;

__attribute__((used)) static inline void b1_set_test_bit(unsigned int base,
       enum avmcardtype cardtype,
       int onoff)
{
 b1_wr_reg(base, B1_STAT0(cardtype), onoff ? 0x21 : 0x20);
}
