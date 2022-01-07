
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {scalar_t__ num_consecutive_zeros; } ;


 int EMULATION_PREVENTION_THREE_BYTE ;
 int rbsp_write_bits (struct rbsp*,int,int ) ;

__attribute__((used)) static int add_emulation_prevention_three_byte(struct rbsp *rbsp)
{
 rbsp->num_consecutive_zeros = 0;
 rbsp_write_bits(rbsp, 8, EMULATION_PREVENTION_THREE_BYTE);

 return 0;
}
