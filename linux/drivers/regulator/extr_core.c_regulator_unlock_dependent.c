
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct TYPE_2__ {int n_coupled; } ;
struct regulator_dev {TYPE_1__ coupling_desc; } ;


 int regulator_unlock_recursive (struct regulator_dev*,int ) ;
 int ww_acquire_fini (struct ww_acquire_ctx*) ;

__attribute__((used)) static void regulator_unlock_dependent(struct regulator_dev *rdev,
           struct ww_acquire_ctx *ww_ctx)
{
 regulator_unlock_recursive(rdev, rdev->coupling_desc.n_coupled);
 ww_acquire_fini(ww_ctx);
}
