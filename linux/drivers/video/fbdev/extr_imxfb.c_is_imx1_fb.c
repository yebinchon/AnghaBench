
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxfb_info {scalar_t__ devtype; } ;


 scalar_t__ IMX1_FB ;

__attribute__((used)) static inline int is_imx1_fb(struct imxfb_info *fbi)
{
 return fbi->devtype == IMX1_FB;
}
