
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hantro_reg {int mask; int shift; int base; } ;
struct hantro_dev {int dummy; } ;


 int vdpu_read (struct hantro_dev*,int ) ;
 int vdpu_write_relaxed (struct hantro_dev*,int,int ) ;

__attribute__((used)) static inline void hantro_reg_write(struct hantro_dev *vpu,
        const struct hantro_reg *reg,
        u32 val)
{
 u32 v;

 v = vdpu_read(vpu, reg->base);
 v &= ~(reg->mask << reg->shift);
 v |= ((val & reg->mask) << reg->shift);
 vdpu_write_relaxed(vpu, v, reg->base);
}
