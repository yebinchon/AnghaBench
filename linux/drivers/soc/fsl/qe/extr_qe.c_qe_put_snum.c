
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int clear_bit (int const*,int ) ;
 int * memchr (int,int ,int ) ;
 int qe_num_of_snum ;
 int snum_state ;
 int snums ;

void qe_put_snum(u8 snum)
{
 const u8 *p = memchr(snums, snum, qe_num_of_snum);

 if (p)
  clear_bit(p - snums, snum_state);
}
