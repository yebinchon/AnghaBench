; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_config_vp_sync_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_config_vp_sync_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@OMAP_DSS_DSI_PULSE_MODE = common dso_local global i64 0, align 8
@DSI_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @dsi_config_vp_sync_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_config_vp_sync_events(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %6)
  store %struct.dsi_data* %7, %struct.dsi_data** %3, align 8
  %8 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %9 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OMAP_DSS_DSI_PULSE_MODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = load i32, i32* @DSI_CTRL, align 4
  %19 = call i32 @dsi_read_reg(%struct.platform_device* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @FLD_MOD(i32 %20, i32 1, i32 9, i32 9)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @FLD_MOD(i32 %22, i32 1, i32 10, i32 10)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FLD_MOD(i32 %24, i32 1, i32 11, i32 11)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @FLD_MOD(i32 %26, i32 1, i32 15, i32 15)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @FLD_MOD(i32 %28, i32 %29, i32 16, i32 16)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @FLD_MOD(i32 %31, i32 1, i32 17, i32 17)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @FLD_MOD(i32 %33, i32 %34, i32 18, i32 18)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = load i32, i32* @DSI_CTRL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dsi_write_reg(%struct.platform_device* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
