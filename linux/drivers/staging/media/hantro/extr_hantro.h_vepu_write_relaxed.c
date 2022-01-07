
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hantro_dev {scalar_t__ enc_base; } ;


 int vpu_debug (int,char*,int,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void vepu_write_relaxed(struct hantro_dev *vpu,
          u32 val, u32 reg)
{
 vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
 writel_relaxed(val, vpu->enc_base + reg);
}
