
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_dev {int hopcount; int destid; TYPE_1__* net; } ;
struct TYPE_2__ {int hport; } ;


 int rio_mport_chk_dev_access (int ,int ,int ) ;

__attribute__((used)) static int rio_chk_dev_access(struct rio_dev *rdev)
{
 return rio_mport_chk_dev_access(rdev->net->hport,
     rdev->destid, rdev->hopcount);
}
