
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int* part_idx_map; } ;
struct TYPE_4__ {TYPE_1__* msgs; } ;
struct TYPE_3__ {int in; int src; } ;


 int EINVAL ;
 int IDT_MSG_CNT ;
 size_t idt_nt_read (struct idt_ntb_dev*,int ) ;
 TYPE_2__ ntdata_tbl ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static u32 idt_ntb_msg_read(struct ntb_dev *ntb, int *pidx, int midx)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);

 if (midx < 0 || IDT_MSG_CNT <= midx)
  return ~(u32)0;


 if (pidx != ((void*)0)) {
  u32 srcpart;

  srcpart = idt_nt_read(ndev, ntdata_tbl.msgs[midx].src);
  *pidx = ndev->part_idx_map[srcpart];


  if (*pidx == -EINVAL)
   *pidx = 0;
 }


 return idt_nt_read(ndev, ntdata_tbl.msgs[midx].in);
}
