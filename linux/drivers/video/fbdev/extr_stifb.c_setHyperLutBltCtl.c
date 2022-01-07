
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bits_per_pixel; } ;
struct TYPE_7__ {TYPE_1__ var; } ;
struct stifb_info {TYPE_2__ info; } ;
struct TYPE_8__ {int length; int lutOffset; int lutType; } ;
struct TYPE_9__ {int all; TYPE_3__ fields; } ;
typedef TYPE_4__ NgleLutBltCtl ;


 int HYPER_CMAP_TYPE ;

__attribute__((used)) static NgleLutBltCtl
setHyperLutBltCtl(struct stifb_info *fb, int offsetWithinLut, int length)
{
 NgleLutBltCtl lutBltCtl;


 lutBltCtl.all = 0x80000000;

 lutBltCtl.fields.length = length;
 lutBltCtl.fields.lutType = HYPER_CMAP_TYPE;


 if (fb->info.var.bits_per_pixel == 8)
  lutBltCtl.fields.lutOffset = 2 * 256;
 else
  lutBltCtl.fields.lutOffset = 0 * 256;


 lutBltCtl.fields.lutOffset += offsetWithinLut;

 return lutBltCtl;
}
