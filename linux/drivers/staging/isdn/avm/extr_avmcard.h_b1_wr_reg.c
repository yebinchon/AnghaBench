
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_REGISTER ;
 int b1_put_byte (unsigned int,int ) ;
 int b1_put_word (unsigned int,unsigned int) ;

__attribute__((used)) static void b1_wr_reg(unsigned int base,
        unsigned int reg,
        unsigned int value)
{
 b1_put_byte(base, WRITE_REGISTER);
 b1_put_word(base, reg);
 b1_put_word(base, value);
}
