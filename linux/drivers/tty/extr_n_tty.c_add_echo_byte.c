
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {int echo_head; } ;


 unsigned char* echo_buf_addr (struct n_tty_data*,int ) ;
 int smp_wmb () ;

__attribute__((used)) static inline void add_echo_byte(unsigned char c, struct n_tty_data *ldata)
{
 *echo_buf_addr(ldata, ldata->echo_head) = c;
 smp_wmb();
 ldata->echo_head++;
}
