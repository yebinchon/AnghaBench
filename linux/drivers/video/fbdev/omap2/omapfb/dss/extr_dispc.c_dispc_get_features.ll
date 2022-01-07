; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_features = type { i32 }

@omap24xx_dispc_feats = common dso_local global %struct.dispc_features zeroinitializer, align 4
@omap34xx_rev1_0_dispc_feats = common dso_local global %struct.dispc_features zeroinitializer, align 4
@omap34xx_rev3_0_dispc_feats = common dso_local global %struct.dispc_features zeroinitializer, align 4
@omap44xx_dispc_feats = common dso_local global %struct.dispc_features zeroinitializer, align 4
@omap54xx_dispc_feats = common dso_local global %struct.dispc_features zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dispc_features* ()* @dispc_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dispc_features* @dispc_get_features() #0 {
  %1 = alloca %struct.dispc_features*, align 8
  %2 = call i32 (...) @omapdss_get_version()
  switch i32 %2, label %8 [
    i32 135, label %3
    i32 134, label %4
    i32 133, label %5
    i32 132, label %5
    i32 138, label %5
    i32 137, label %5
    i32 130, label %6
    i32 129, label %6
    i32 131, label %6
    i32 128, label %7
    i32 136, label %7
  ]

3:                                                ; preds = %0
  store %struct.dispc_features* @omap24xx_dispc_feats, %struct.dispc_features** %1, align 8
  br label %9

4:                                                ; preds = %0
  store %struct.dispc_features* @omap34xx_rev1_0_dispc_feats, %struct.dispc_features** %1, align 8
  br label %9

5:                                                ; preds = %0, %0, %0, %0
  store %struct.dispc_features* @omap34xx_rev3_0_dispc_feats, %struct.dispc_features** %1, align 8
  br label %9

6:                                                ; preds = %0, %0, %0
  store %struct.dispc_features* @omap44xx_dispc_feats, %struct.dispc_features** %1, align 8
  br label %9

7:                                                ; preds = %0, %0
  store %struct.dispc_features* @omap54xx_dispc_feats, %struct.dispc_features** %1, align 8
  br label %9

8:                                                ; preds = %0
  store %struct.dispc_features* null, %struct.dispc_features** %1, align 8
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %4, %3
  %10 = load %struct.dispc_features*, %struct.dispc_features** %1, align 8
  ret %struct.dispc_features* %10
}

declare dso_local i32 @omapdss_get_version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
