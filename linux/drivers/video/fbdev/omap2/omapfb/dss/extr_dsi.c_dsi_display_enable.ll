; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"dsi_display_enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"dsi_display_enable FAILED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @dsi_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_display_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.dsi_data*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %8 = call %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device* %7)
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %9)
  store %struct.dsi_data* %10, %struct.dsi_data** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = call i32 @DSSDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = call i32 @dsi_bus_is_locked(%struct.platform_device* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = call i32 @dsi_runtime_get(%struct.platform_device* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %41

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = call i32 @_dsi_initialize_irq(%struct.platform_device* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = call i32 @dsi_display_init_dsi(%struct.platform_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %38

34:                                               ; preds = %26
  %35 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %36 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  store i32 0, i32* %2, align 4
  br label %47

38:                                               ; preds = %33
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = call i32 @dsi_runtime_put(%struct.platform_device* %39)
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %43 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = call i32 @DSSDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %34
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsi_runtime_get(%struct.platform_device*) #1

declare dso_local i32 @_dsi_initialize_irq(%struct.platform_device*) #1

declare dso_local i32 @dsi_display_init_dsi(%struct.platform_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dsi_runtime_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
