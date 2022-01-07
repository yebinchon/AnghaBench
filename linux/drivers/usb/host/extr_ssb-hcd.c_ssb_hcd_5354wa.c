
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int revision; } ;
struct ssb_device {TYPE_2__* bus; TYPE_1__ id; } ;
struct TYPE_4__ {int chip_id; } ;


 int ssb_read32 (struct ssb_device*,int) ;
 int ssb_write32 (struct ssb_device*,int,int) ;

__attribute__((used)) static void ssb_hcd_5354wa(struct ssb_device *dev)
{
}
