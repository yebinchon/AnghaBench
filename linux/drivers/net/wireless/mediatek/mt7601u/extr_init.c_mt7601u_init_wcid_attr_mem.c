
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MT_WCID_ATTR_BASE ;
 int N_WCIDS ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int mt7601u_burst_write_regs (struct mt7601u_dev*,int ,int*,int) ;

__attribute__((used)) static int mt7601u_init_wcid_attr_mem(struct mt7601u_dev *dev)
{
 u32 *vals;
 int i, ret;

 vals = kmalloc(sizeof(*vals) * N_WCIDS * 2, GFP_KERNEL);
 if (!vals)
  return -ENOMEM;

 for (i = 0; i < N_WCIDS * 2; i++)
  vals[i] = 1;

 ret = mt7601u_burst_write_regs(dev, MT_WCID_ATTR_BASE,
           vals, N_WCIDS * 2);
 kfree(vals);

 return ret;
}
