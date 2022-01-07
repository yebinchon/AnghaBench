; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_enable_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_enable_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"dsi_vc_enable_hs(%d, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, i32, i32)* @dsi_vc_enable_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_vc_enable_hs(%struct.omap_dss_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.dsi_data*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %10 = call %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %12 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %11)
  store %struct.dsi_data* %12, %struct.dsi_data** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DSSDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %17 = call i32 @dsi_bus_is_locked(%struct.platform_device* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dsi_vc_enable(%struct.platform_device* %22, i32 %23, i32 0)
  %25 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %26 = call i32 @dsi_if_enable(%struct.platform_device* %25, i32 0)
  %27 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @DSI_VC_CTRL(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @REG_FLD_MOD(%struct.platform_device* %27, i32 %29, i32 %30, i32 9, i32 9)
  %32 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dsi_vc_enable(%struct.platform_device* %32, i32 %33, i32 1)
  %35 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %36 = call i32 @dsi_if_enable(%struct.platform_device* %35, i32 1)
  %37 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %38 = call i32 @dsi_force_tx_stop_mode_io(%struct.platform_device* %37)
  %39 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %40 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dsi_vc_send_null(%struct.omap_dss_device* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %44, %3
  ret void
}

declare dso_local %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.platform_device*) #1

declare dso_local i32 @dsi_vc_enable(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dsi_if_enable(%struct.platform_device*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @dsi_force_tx_stop_mode_io(%struct.platform_device*) #1

declare dso_local i32 @dsi_vc_send_null(%struct.omap_dss_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
