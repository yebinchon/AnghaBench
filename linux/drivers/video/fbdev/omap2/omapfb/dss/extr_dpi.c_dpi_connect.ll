; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, i32 }
%struct.dpi_data = type { i32 }
%struct.omap_overlay_manager = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to connect output to new device: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)* @dpi_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_connect(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.dpi_data*, align 8
  %7 = alloca %struct.omap_overlay_manager*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %10 = call %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device* %9)
  store %struct.dpi_data* %10, %struct.dpi_data** %6, align 8
  %11 = load %struct.dpi_data*, %struct.dpi_data** %6, align 8
  %12 = call i32 @dpi_init_regulator(%struct.dpi_data* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.dpi_data*, %struct.dpi_data** %6, align 8
  %19 = call i32 @dpi_init_pll(%struct.dpi_data* %18)
  %20 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %21 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %22)
  store %struct.omap_overlay_manager* %23, %struct.omap_overlay_manager** %7, align 8
  %24 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %25 = icmp ne %struct.omap_overlay_manager* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %17
  %30 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %32 = call i32 @dss_mgr_connect(%struct.omap_overlay_manager* %30, %struct.omap_dss_device* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %29
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %40 = call i32 @omapdss_output_set_device(%struct.omap_dss_device* %38, %struct.omap_dss_device* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %45 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DSSERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %49 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %50 = call i32 @dss_mgr_disconnect(%struct.omap_overlay_manager* %48, %struct.omap_dss_device* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %43, %35, %26, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local i32 @dpi_init_regulator(%struct.dpi_data*) #1

declare dso_local i32 @dpi_init_pll(%struct.dpi_data*) #1

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
