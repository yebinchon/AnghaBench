
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;


 int BIT (int) ;
 int EAGAIN ;
 int OP_ENDPTPRIME ;
 int OP_ENDPTSETUPSTAT ;
 int RX ;
 int cpu_relax () ;
 int hw_ep_bit (int,int) ;
 scalar_t__ hw_read (struct ci_hdrc*,int ,int ) ;
 int hw_write (struct ci_hdrc*,int ,int ,int ) ;
 int wmb () ;

__attribute__((used)) static int hw_ep_prime(struct ci_hdrc *ci, int num, int dir, int is_ctrl)
{
 int n = hw_ep_bit(num, dir);


 wmb();

 if (is_ctrl && dir == RX && hw_read(ci, OP_ENDPTSETUPSTAT, BIT(num)))
  return -EAGAIN;

 hw_write(ci, OP_ENDPTPRIME, ~0, BIT(n));

 while (hw_read(ci, OP_ENDPTPRIME, BIT(n)))
  cpu_relax();
 if (is_ctrl && dir == RX && hw_read(ci, OP_ENDPTSETUPSTAT, BIT(num)))
  return -EAGAIN;


 return 0;
}
