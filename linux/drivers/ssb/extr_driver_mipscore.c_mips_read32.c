
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ssb_mipscore {int dev; } ;


 int ssb_read32 (int ,int ) ;

__attribute__((used)) static inline u32 mips_read32(struct ssb_mipscore *mcore,
         u16 offset)
{
 return ssb_read32(mcore->dev, offset);
}
