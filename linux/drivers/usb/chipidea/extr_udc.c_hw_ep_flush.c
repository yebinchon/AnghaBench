
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;


 int BIT (int) ;
 int OP_ENDPTFLUSH ;
 int OP_ENDPTSTAT ;
 int cpu_relax () ;
 int hw_ep_bit (int,int) ;
 scalar_t__ hw_read (struct ci_hdrc*,int ,int ) ;
 int hw_write (struct ci_hdrc*,int ,int ,int ) ;

__attribute__((used)) static int hw_ep_flush(struct ci_hdrc *ci, int num, int dir)
{
 int n = hw_ep_bit(num, dir);

 do {

  hw_write(ci, OP_ENDPTFLUSH, ~0, BIT(n));
  while (hw_read(ci, OP_ENDPTFLUSH, BIT(n)))
   cpu_relax();
 } while (hw_read(ci, OP_ENDPTSTAT, BIT(n)));

 return 0;
}
