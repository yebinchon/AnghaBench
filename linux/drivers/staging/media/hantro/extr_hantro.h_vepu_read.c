
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hantro_dev {scalar_t__ enc_base; } ;


 int readl (scalar_t__) ;
 int vpu_debug (int,char*,int,int) ;

__attribute__((used)) static inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
{
 u32 val = readl(vpu->enc_base + reg);

 vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
 return val;
}
