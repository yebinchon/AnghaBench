
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_host {int dev; int (* reset ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static void reset_deassert(struct anybuss_host *cd)
{
 cd->reset(cd->dev, 0);
}
