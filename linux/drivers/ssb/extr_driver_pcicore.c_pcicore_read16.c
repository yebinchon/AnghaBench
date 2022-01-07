
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ssb_pcicore {int dev; } ;


 int ssb_read16 (int ,int ) ;

__attribute__((used)) static inline
u16 pcicore_read16(struct ssb_pcicore *pc, u16 offset)
{
 return ssb_read16(pc->dev, offset);
}
