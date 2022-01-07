; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-dvi.c_dvic_read_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-dvi.c_dvic_read_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.panel_drv_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i64*, i32)* @dvic_read_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvic_read_edid(%struct.omap_dss_device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.panel_drv_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %13 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %12)
  store %struct.panel_drv_data* %13, %struct.panel_drv_data** %8, align 8
  %14 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %15 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load i32, i32* @EDID_LENGTH, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @min(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %26 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @dvic_ddc_read(i32 %27, i64* %28, i32 %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %71

35:                                               ; preds = %21
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EDID_LENGTH, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load i64*, i64** %6, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 126
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load i32, i32* @EDID_LENGTH, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @EDID_LENGTH, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @min(i32 %46, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %52 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64*, i64** %6, align 8
  %55 = load i32, i32* @EDID_LENGTH, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @EDID_LENGTH, align 4
  %60 = call i32 @dvic_ddc_read(i32 %53, i64* %57, i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %71

65:                                               ; preds = %45
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %40, %35
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %63, %33, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dvic_ddc_read(i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
