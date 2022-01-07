; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dss_restore_context\0A\00", align 1
@dss = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CONTROL = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_SDI = common dso_local global i32 0, align 4
@SDI_CONTROL = common dso_local global i32 0, align 4
@PLL_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"context restored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dss_restore_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_restore_context() #0 {
  %1 = call i32 @DSSDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss, i32 0, i32 0), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %20

5:                                                ; preds = %0
  %6 = load i32, i32* @CONTROL, align 4
  %7 = call i32 @RR(i32 %6)
  %8 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  %9 = call i32 @dss_feat_get_supported_displays(i32 %8)
  %10 = load i32, i32* @OMAP_DISPLAY_TYPE_SDI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = load i32, i32* @SDI_CONTROL, align 4
  %15 = call i32 @RR(i32 %14)
  %16 = load i32, i32* @PLL_CONTROL, align 4
  %17 = call i32 @RR(i32 %16)
  br label %18

18:                                               ; preds = %13, %5
  %19 = call i32 @DSSDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %4
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @RR(i32) #1

declare dso_local i32 @dss_feat_get_supported_displays(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
