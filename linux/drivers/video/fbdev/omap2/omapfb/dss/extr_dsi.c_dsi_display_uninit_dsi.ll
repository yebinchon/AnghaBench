; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_uninit_dsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_uninit_dsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32 }

@OMAP_DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32, i32)* @dsi_display_uninit_dsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_display_uninit_dsi(%struct.platform_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsi_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %8)
  store %struct.dsi_data* %9, %struct.dsi_data** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = call i32 @dsi_enter_ulps(%struct.platform_device* %18)
  br label %20

20:                                               ; preds = %17, %12, %3
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = call i32 @dsi_if_enable(%struct.platform_device* %21, i32 0)
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = call i32 @dsi_vc_enable(%struct.platform_device* %23, i32 0, i32 0)
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = call i32 @dsi_vc_enable(%struct.platform_device* %25, i32 1, i32 0)
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = call i32 @dsi_vc_enable(%struct.platform_device* %27, i32 2, i32 0)
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = call i32 @dsi_vc_enable(%struct.platform_device* %29, i32 3, i32 0)
  %31 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %32 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OMAP_DSS_CLK_SRC_FCK, align 4
  %35 = call i32 @dss_select_dsi_clk_source(i32 %33, i32 %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = call i32 @dsi_cio_uninit(%struct.platform_device* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dsi_pll_uninit(%struct.platform_device* %38, i32 %39)
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dsi_enter_ulps(%struct.platform_device*) #1

declare dso_local i32 @dsi_if_enable(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_vc_enable(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dss_select_dsi_clk_source(i32, i32) #1

declare dso_local i32 @dsi_cio_uninit(%struct.platform_device*) #1

declare dso_local i32 @dsi_pll_uninit(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
