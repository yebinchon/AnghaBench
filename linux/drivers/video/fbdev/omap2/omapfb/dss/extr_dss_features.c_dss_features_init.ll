; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss_features.c_dss_features_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss_features.c_dss_features_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@omap2_dss_features = common dso_local global i32 0, align 4
@omap_current_dss_features = common dso_local global i32* null, align 8
@omap3430_dss_features = common dso_local global i32 0, align 4
@omap3630_dss_features = common dso_local global i32 0, align 4
@omap4430_es1_0_dss_features = common dso_local global i32 0, align 4
@omap4430_es2_0_1_2_dss_features = common dso_local global i32 0, align 4
@omap4_dss_features = common dso_local global i32 0, align 4
@omap5_dss_features = common dso_local global i32 0, align 4
@am35xx_dss_features = common dso_local global i32 0, align 4
@am43xx_dss_features = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported OMAP version\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_features_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %13 [
    i32 135, label %4
    i32 134, label %5
    i32 133, label %5
    i32 132, label %6
    i32 130, label %7
    i32 129, label %8
    i32 131, label %9
    i32 128, label %10
    i32 136, label %10
    i32 138, label %11
    i32 137, label %12
  ]

4:                                                ; preds = %1
  store i32* @omap2_dss_features, i32** @omap_current_dss_features, align 8
  br label %15

5:                                                ; preds = %1, %1
  store i32* @omap3430_dss_features, i32** @omap_current_dss_features, align 8
  br label %15

6:                                                ; preds = %1
  store i32* @omap3630_dss_features, i32** @omap_current_dss_features, align 8
  br label %15

7:                                                ; preds = %1
  store i32* @omap4430_es1_0_dss_features, i32** @omap_current_dss_features, align 8
  br label %15

8:                                                ; preds = %1
  store i32* @omap4430_es2_0_1_2_dss_features, i32** @omap_current_dss_features, align 8
  br label %15

9:                                                ; preds = %1
  store i32* @omap4_dss_features, i32** @omap_current_dss_features, align 8
  br label %15

10:                                               ; preds = %1, %1
  store i32* @omap5_dss_features, i32** @omap_current_dss_features, align 8
  br label %15

11:                                               ; preds = %1
  store i32* @am35xx_dss_features, i32** @omap_current_dss_features, align 8
  br label %15

12:                                               ; preds = %1
  store i32* @am43xx_dss_features, i32** @omap_current_dss_features, align 8
  br label %15

13:                                               ; preds = %1
  %14 = call i32 @DSSWARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5, %4
  ret void
}

declare dso_local i32 @DSSWARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
