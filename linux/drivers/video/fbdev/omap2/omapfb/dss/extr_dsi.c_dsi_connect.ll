; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.omap_overlay_manager = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to connect output to new device: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)* @dsi_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_connect(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.omap_overlay_manager*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %10 = call %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = call i32 @dsi_regulator_init(%struct.platform_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %19 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %20)
  store %struct.omap_overlay_manager* %21, %struct.omap_overlay_manager** %7, align 8
  %22 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %23 = icmp ne %struct.omap_overlay_manager* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %17
  %28 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %30 = call i32 @dss_mgr_connect(%struct.omap_overlay_manager* %28, %struct.omap_dss_device* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %51

35:                                               ; preds = %27
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %38 = call i32 @omapdss_output_set_device(%struct.omap_dss_device* %36, %struct.omap_dss_device* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %43 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DSSERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %48 = call i32 @dss_mgr_disconnect(%struct.omap_overlay_manager* %46, %struct.omap_dss_device* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %41, %33, %24, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local i32 @dsi_regulator_init(%struct.platform_device*) #1

declare dso_local %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32) #1

declare dso_local i32 @dss_mgr_connect(%struct.omap_overlay_manager*, %struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_output_set_device(%struct.omap_dss_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @dss_mgr_disconnect(%struct.omap_overlay_manager*, %struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
