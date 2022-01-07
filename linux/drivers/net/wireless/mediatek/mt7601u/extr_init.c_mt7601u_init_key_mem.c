
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int MT_SKEY_MODE_BASE_0 ;
 int mt7601u_burst_write_regs (struct mt7601u_dev*,int ,int *,int ) ;

__attribute__((used)) static int mt7601u_init_key_mem(struct mt7601u_dev *dev)
{
 u32 vals[4] = {};

 return mt7601u_burst_write_regs(dev, MT_SKEY_MODE_BASE_0,
     vals, ARRAY_SIZE(vals));
}
