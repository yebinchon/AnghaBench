; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dsi_display_disable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, i32, i32)* @dsi_display_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_display_disable(%struct.omap_dss_device* %0, i32 %1, i32 %2) #0 {
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
  %13 = call i32 @DSSDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %15 = call i32 @dsi_bus_is_locked(%struct.platform_device* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %21 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %24 = call i32 @dsi_sync_vc(%struct.platform_device* %23, i32 0)
  %25 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %26 = call i32 @dsi_sync_vc(%struct.platform_device* %25, i32 1)
  %27 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %28 = call i32 @dsi_sync_vc(%struct.platform_device* %27, i32 2)
  %29 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %30 = call i32 @dsi_sync_vc(%struct.platform_device* %29, i32 3)
  %31 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dsi_display_uninit_dsi(%struct.platform_device* %31, i32 %32, i32 %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %36 = call i32 @dsi_runtime_put(%struct.platform_device* %35)
  %37 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %38 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsi_sync_vc(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_display_uninit_dsi(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dsi_runtime_put(%struct.platform_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
