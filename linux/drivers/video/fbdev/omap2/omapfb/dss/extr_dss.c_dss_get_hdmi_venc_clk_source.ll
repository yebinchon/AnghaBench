; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_get_hdmi_venc_clk_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_get_hdmi_venc_clk_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_HDMI = common dso_local global i32 0, align 4
@DSS_VENC_TV_CLK = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_VENC = common dso_local global i32 0, align 4
@DSS_HDMI_M_PCLK = common dso_local global i32 0, align 4
@DSS_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_get_hdmi_venc_clk_source() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %4 = call i32 @dss_feat_get_supported_displays(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @OMAP_DISPLAY_TYPE_HDMI, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @DSS_VENC_TV_CLK, align 4
  store i32 %10, i32* %1, align 4
  br label %21

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @OMAP_DISPLAY_TYPE_VENC, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @DSS_HDMI_M_PCLK, align 4
  store i32 %17, i32* %1, align 4
  br label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @DSS_CONTROL, align 4
  %20 = call i32 @REG_GET(i32 %19, i32 15, i32 15)
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %18, %16, %9
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @dss_feat_get_supported_displays(i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
