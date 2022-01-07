; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_dvs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_dvs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wm831x_dcdc = type { i32, i32, i32, i64, i32, i64, %struct.wm831x* }
%struct.wm831x = type { i32 }
%struct.wm831x_buckv_pdata = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"dvs\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to get %s DVS GPIO: %ld\0A\00", align 1
@WM831X_DC1_DVS_SRC_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid DVS control source %d for %s\0A\00", align 1
@WM831X_DCDC_DVS_CONTROL = common dso_local global i64 0, align 8
@WM831X_DC1_DVS_VSEL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to set DVS_VSEL: %d\0A\00", align 1
@WM831X_DC1_DVS_SRC_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to set %s DVS source: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.wm831x_dcdc*, %struct.wm831x_buckv_pdata*)* @wm831x_buckv_dvs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm831x_buckv_dvs_init(%struct.platform_device* %0, %struct.wm831x_dcdc* %1, %struct.wm831x_buckv_pdata* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.wm831x_dcdc*, align 8
  %6 = alloca %struct.wm831x_buckv_pdata*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.wm831x_dcdc* %1, %struct.wm831x_dcdc** %5, align 8
  store %struct.wm831x_buckv_pdata* %2, %struct.wm831x_buckv_pdata** %6, align 8
  %10 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %11 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %10, i32 0, i32 6
  %12 = load %struct.wm831x*, %struct.wm831x** %11, align 8
  store %struct.wm831x* %12, %struct.wm831x** %7, align 8
  %13 = load %struct.wm831x_buckv_pdata*, %struct.wm831x_buckv_pdata** %6, align 8
  %14 = icmp ne %struct.wm831x_buckv_pdata* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %128

16:                                               ; preds = %3
  %17 = load %struct.wm831x_buckv_pdata*, %struct.wm831x_buckv_pdata** %6, align 8
  %18 = getelementptr inbounds %struct.wm831x_buckv_pdata, %struct.wm831x_buckv_pdata* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %21 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %20, i32 0, i32 5
  store i64 %19, i64* %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %25 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  br label %32

30:                                               ; preds = %16
  %31 = load i32, i32* @GPIOD_OUT_LOW, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @devm_gpiod_get(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %36 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %38 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %44 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %47 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %50 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  %53 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %52)
  br label %128

54:                                               ; preds = %32
  %55 = load %struct.wm831x_buckv_pdata*, %struct.wm831x_buckv_pdata** %6, align 8
  %56 = getelementptr inbounds %struct.wm831x_buckv_pdata, %struct.wm831x_buckv_pdata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %64 [
    i32 1, label %58
    i32 2, label %61
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* @WM831X_DC1_DVS_SRC_SHIFT, align 4
  %60 = shl i32 2, %59
  store i32 %60, i32* %9, align 4
  br label %75

61:                                               ; preds = %54
  %62 = load i32, i32* @WM831X_DC1_DVS_SRC_SHIFT, align 4
  %63 = shl i32 3, %62
  store i32 %63, i32* %9, align 4
  br label %75

64:                                               ; preds = %54
  %65 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %66 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wm831x_buckv_pdata*, %struct.wm831x_buckv_pdata** %6, align 8
  %69 = getelementptr inbounds %struct.wm831x_buckv_pdata, %struct.wm831x_buckv_pdata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %72 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73)
  br label %128

75:                                               ; preds = %61, %58
  %76 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %77 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %75
  %81 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %82 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %83 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WM831X_DCDC_DVS_CONTROL, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* @WM831X_DC1_DVS_VSEL_MASK, align 4
  %88 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %89 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @wm831x_set_bits(%struct.wm831x* %81, i64 %86, i32 %87, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %80
  %95 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %96 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %99 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %106

100:                                              ; preds = %80
  %101 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %102 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @dev_warn(i32 %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %94
  br label %107

107:                                              ; preds = %106, %75
  %108 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %109 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %110 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @WM831X_DCDC_DVS_CONTROL, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i32, i32* @WM831X_DC1_DVS_SRC_MASK, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @wm831x_set_bits(%struct.wm831x* %108, i64 %113, i32 %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %107
  %120 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %121 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %124 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %15, %42, %64, %119, %107
  ret void
}

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i64, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
