; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_init_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_init_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_thermal_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"invalid sensor calibration data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TEMPMON_IMX7D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @imx_init_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_init_calib(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx_thermal_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = call %struct.imx_thermal_data* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.imx_thermal_data* %10, %struct.imx_thermal_data** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %13, %2
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %13
  %23 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %24 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TEMPMON_IMX7D, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 9
  %33 = and i32 %32, 511
  %34 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %35 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %3, align 4
  br label %57

36:                                               ; preds = %22
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 20
  store i32 %38, i32* %7, align 4
  store i32 10000000, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, 1000
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 15423, %42
  %44 = sub nsw i32 %43, 4148468
  %45 = call i32 @do_div(i32 %41, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %48 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %51 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  %54 = add nsw i32 %53, 28581
  %55 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %56 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %36, %30, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.imx_thermal_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
