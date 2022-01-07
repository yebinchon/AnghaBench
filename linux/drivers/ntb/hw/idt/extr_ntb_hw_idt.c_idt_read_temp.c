
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt_ntb_dev {int dummy; } ;
typedef enum idt_temp_val { ____Placeholder_idt_temp_val } idt_temp_val ;


 int GET_FIELD (int ,int ) ;
 int IDT_SW_TMPADJ ;
 int IDT_SW_TMPSTS ;




 int TMPADJ_OFFSET ;
 int TMPSTS_HTEMP ;
 int TMPSTS_LTEMP ;
 int TMPSTS_TEMP ;
 long idt_get_temp_sval (int ) ;
 long idt_get_temp_uval (int ) ;
 int idt_sw_read (struct idt_ntb_dev*,int ) ;

__attribute__((used)) static void idt_read_temp(struct idt_ntb_dev *ndev,
     const enum idt_temp_val type, long *val)
{
 u32 data;


 switch (type) {
 case 131:
  data = GET_FIELD(TMPSTS_TEMP,
     idt_sw_read(ndev, IDT_SW_TMPSTS));
  break;
 case 129:
  data = GET_FIELD(TMPSTS_LTEMP,
     idt_sw_read(ndev, IDT_SW_TMPSTS));
  break;
 case 130:
  data = GET_FIELD(TMPSTS_HTEMP,
     idt_sw_read(ndev, IDT_SW_TMPSTS));
  break;
 case 128:

  data = GET_FIELD(TMPADJ_OFFSET,
     idt_sw_read(ndev, IDT_SW_TMPADJ));
  *val = idt_get_temp_sval(data);
  return;
 default:
  data = GET_FIELD(TMPSTS_TEMP,
     idt_sw_read(ndev, IDT_SW_TMPSTS));
  break;
 }


 *val = idt_get_temp_uval(data);
}
