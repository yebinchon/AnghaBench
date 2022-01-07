; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_devfreq_cooling_state2power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_devfreq_cooling_state2power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.devfreq_cooling_device* }
%struct.devfreq_cooling_device = type { i64, i64*, i64* }
%struct.thermal_zone_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, %struct.thermal_zone_device*, i64, i64*)* @devfreq_cooling_state2power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfreq_cooling_state2power(%struct.thermal_cooling_device* %0, %struct.thermal_zone_device* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thermal_cooling_device*, align 8
  %7 = alloca %struct.thermal_zone_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.devfreq_cooling_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %6, align 8
  store %struct.thermal_zone_device* %1, %struct.thermal_zone_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %14 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %13, i32 0, i32 0
  %15 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %14, align 8
  store %struct.devfreq_cooling_device* %15, %struct.devfreq_cooling_device** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %10, align 8
  %18 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %43

24:                                               ; preds = %4
  %25 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %10, align 8
  %26 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  %31 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @get_static_power(%struct.devfreq_cooling_device* %31, i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %10, align 8
  %35 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %24, %21
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @get_static_power(%struct.devfreq_cooling_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
