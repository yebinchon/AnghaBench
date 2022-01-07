
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nozomi {TYPE_1__* pdev; int reg_fcr; } ;
typedef enum port_type { ____Placeholder_port_type } port_type ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 scalar_t__ receive_data (int,struct nozomi*) ;
 int writew (int,int ) ;

__attribute__((used)) static int handle_data_dl(struct nozomi *dc, enum port_type port, u8 *toggle,
   u16 read_iir, u16 mask1, u16 mask2)
{
 if (*toggle == 0 && read_iir & mask1) {
  if (receive_data(port, dc)) {
   writew(mask1, dc->reg_fcr);
   *toggle = !(*toggle);
  }

  if (read_iir & mask2) {
   if (receive_data(port, dc)) {
    writew(mask2, dc->reg_fcr);
    *toggle = !(*toggle);
   }
  }
 } else if (*toggle == 1 && read_iir & mask2) {
  if (receive_data(port, dc)) {
   writew(mask2, dc->reg_fcr);
   *toggle = !(*toggle);
  }

  if (read_iir & mask1) {
   if (receive_data(port, dc)) {
    writew(mask1, dc->reg_fcr);
    *toggle = !(*toggle);
   }
  }
 } else {
  dev_err(&dc->pdev->dev, "port out of sync!, toggle:%d\n",
   *toggle);
  return 0;
 }
 return 1;
}
