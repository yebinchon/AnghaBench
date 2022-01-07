; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_helpers.c_get_tz_trend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_helpers.c_get_tz_trend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 (%struct.thermal_zone_device*, i32, i32*)* }

@THERMAL_TREND_RAISING = common dso_local global i32 0, align 4
@THERMAL_TREND_DROPPING = common dso_local global i32 0, align 4
@THERMAL_TREND_STABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_tz_trend(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %7 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %12 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64 (%struct.thermal_zone_device*, i32, i32*)*, i64 (%struct.thermal_zone_device*, i32, i32*)** %14, align 8
  %16 = icmp ne i64 (%struct.thermal_zone_device*, i32, i32*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %19 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (%struct.thermal_zone_device*, i32, i32*)*, i64 (%struct.thermal_zone_device*, i32, i32*)** %21, align 8
  %23 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 %22(%struct.thermal_zone_device* %23, i32 %24, i32* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %17, %10, %2
  %28 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %29 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %32 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @THERMAL_TREND_RAISING, align 4
  store i32 %36, i32* %5, align 4
  br label %50

37:                                               ; preds = %27
  %38 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %39 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %42 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @THERMAL_TREND_DROPPING, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @THERMAL_TREND_STABLE, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
