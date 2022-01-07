; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cio_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cio_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32 }

@DSI_CLK_CTRL = common dso_local global i32 0, align 4
@DSI_COMPLEXIO_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @dsi_cio_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_cio_uninit(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dsi_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %4)
  store %struct.dsi_data* %5, %struct.dsi_data** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = load i32, i32* @DSI_CLK_CTRL, align 4
  %8 = call i32 @REG_FLD_MOD(%struct.platform_device* %6, i32 %7, i32 0, i32 13, i32 13)
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = load i32, i32* @DSI_COMPLEXIO_POWER_OFF, align 4
  %11 = call i32 @dsi_cio_power(%struct.platform_device* %9, i32 %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = call i32 @dsi_disable_scp_clk(%struct.platform_device* %12)
  %14 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = call i32 @dsi_get_lane_mask(%struct.platform_device* %17)
  %19 = call i32 @dss_dsi_disable_pads(i32 %16, i32 %18)
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_cio_power(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_disable_scp_clk(%struct.platform_device*) #1

declare dso_local i32 @dss_dsi_disable_pads(i32, i32) #1

declare dso_local i32 @dsi_get_lane_mask(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
