; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_pll_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_pll_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32 }

@DSI_PLL_POWER_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PLL uninit done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @dsi_pll_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_pll_uninit(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsi_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %6)
  store %struct.dsi_data* %7, %struct.dsi_data** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @DSI_PLL_POWER_OFF, align 4
  %10 = call i32 @dsi_pll_power(%struct.platform_device* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %22 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regulator_disable(i32 %23)
  %25 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %26 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %13, %2
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @dsi_disable_scp_clk(%struct.platform_device* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i32 @dsi_runtime_put(%struct.platform_device* %30)
  %32 = call i32 @DSSDBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dsi_pll_power(%struct.platform_device*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dsi_disable_scp_clk(%struct.platform_device*) #1

declare dso_local i32 @dsi_runtime_put(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
