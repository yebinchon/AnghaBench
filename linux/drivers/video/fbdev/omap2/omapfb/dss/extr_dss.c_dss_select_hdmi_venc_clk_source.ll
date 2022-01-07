; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_select_hdmi_venc_clk_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_select_hdmi_venc_clk_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@DSS_VENC_TV_CLK = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_VENC = common dso_local global i32 0, align 4
@DSS_HDMI_M_PCLK = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_HDMI = common dso_local global i32 0, align 4
@DSS_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_select_hdmi_venc_clk_source(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %5 = call i32 @dss_feat_get_supported_displays(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @DSS_VENC_TV_CLK, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @OMAP_DISPLAY_TYPE_VENC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ false, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @DSS_HDMI_M_PCLK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @OMAP_DISPLAY_TYPE_HDMI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %15
  %29 = phi i1 [ false, %15 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @OMAP_DISPLAY_TYPE_VENC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @OMAP_DISPLAY_TYPE_HDMI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @DSS_CONTROL, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @REG_FLD_MOD(i32 %42, i32 %43, i32 15, i32 15)
  br label %45

45:                                               ; preds = %41, %36, %28
  ret void
}

declare dso_local i32 @dss_feat_get_supported_displays(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
