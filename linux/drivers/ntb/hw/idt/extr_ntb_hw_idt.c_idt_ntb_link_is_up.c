
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u64 ;
typedef int u32 ;
struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {unsigned char peer_cnt; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;


 int GET_FIELD (int ,int ) ;
 int IDT_NT_PCIELCTLSTS ;
 int PCIELCTLSTS_CLS ;
 int PCIELCTLSTS_NLW ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 int idt_ntb_local_link_is_up (struct idt_ntb_dev*) ;
 scalar_t__ idt_ntb_peer_link_is_up (struct idt_ntb_dev*,unsigned char) ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static u64 idt_ntb_link_is_up(struct ntb_dev *ntb,
         enum ntb_speed *speed, enum ntb_width *width)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);
 unsigned char pidx;
 u64 status;
 u32 data;


 if (speed != ((void*)0) || width != ((void*)0)) {
  data = idt_nt_read(ndev, IDT_NT_PCIELCTLSTS);
  if (speed != ((void*)0))
   *speed = GET_FIELD(PCIELCTLSTS_CLS, data);
  if (width != ((void*)0))
   *width = GET_FIELD(PCIELCTLSTS_NLW, data);
 }


 if (!idt_ntb_local_link_is_up(ndev))
  return 0;


 status = 0;
 for (pidx = 0; pidx < ndev->peer_cnt; pidx++) {
  if (idt_ntb_peer_link_is_up(ndev, pidx))
   status |= ((u64)1 << pidx);
 }

 return status;
}
