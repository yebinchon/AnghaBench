; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_devfreq_cooling_power2state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_devfreq_cooling_power2state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.devfreq_cooling_device* }
%struct.devfreq_cooling_device = type { i64, i32, i64*, i32, %struct.TYPE_2__*, %struct.devfreq* }
%struct.TYPE_2__ = type { i64 }
%struct.devfreq = type { %struct.devfreq_dev_status }
%struct.devfreq_dev_status = type { i64, i64, i64 }
%struct.thermal_zone_device = type { i32 }

@SCALE_ERROR_MITIGATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, %struct.thermal_zone_device*, i64, i64*)* @devfreq_cooling_power2state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfreq_cooling_power2state(%struct.thermal_cooling_device* %0, %struct.thermal_zone_device* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.devfreq_cooling_device*, align 8
  %10 = alloca %struct.devfreq*, align 8
  %11 = alloca %struct.devfreq_dev_status*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %5, align 8
  store %struct.thermal_zone_device* %1, %struct.thermal_zone_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %18 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %19 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %18, i32 0, i32 0
  %20 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %19, align 8
  store %struct.devfreq_cooling_device* %20, %struct.devfreq_cooling_device** %9, align 8
  %21 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %22 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %21, i32 0, i32 5
  %23 = load %struct.devfreq*, %struct.devfreq** %22, align 8
  store %struct.devfreq* %23, %struct.devfreq** %10, align 8
  %24 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %25 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %24, i32 0, i32 0
  store %struct.devfreq_dev_status* %25, %struct.devfreq_dev_status** %11, align 8
  %26 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %11, align 8
  %27 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %30 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %38 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %36, %39
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* @SCALE_ERROR_MITIGATION, align 8
  %42 = load i64, i64* %16, align 8
  %43 = udiv i64 %42, %41
  store i64 %43, i64* %16, align 8
  br label %73

44:                                               ; preds = %4
  %45 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @get_static_power(%struct.devfreq_cooling_device* %45, i64 %46)
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %15, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i64, i64* %14, align 8
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ %54, %53 ], [ 0, %55 ]
  store i64 %57, i64* %14, align 8
  %58 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %11, align 8
  %59 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %62
  %65 = phi i64 [ %60, %62 ], [ 1, %63 ]
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %11, align 8
  %68 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 %66, %69
  %71 = load i64, i64* %13, align 8
  %72 = udiv i64 %70, %71
  store i64 %72, i64* %16, align 8
  br label %73

73:                                               ; preds = %64, %35
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %17, align 4
  %76 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %77 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %74
  %82 = load i64, i64* %16, align 8
  %83 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %84 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp uge i64 %82, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %96

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %74

96:                                               ; preds = %91, %74
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64*, i64** %8, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %102 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @trace_thermal_power_devfreq_limit(%struct.thermal_cooling_device* %103, i64 %104, i64 %106, i64 %107)
  ret i32 0
}

declare dso_local i64 @get_static_power(%struct.devfreq_cooling_device*, i64) #1

declare dso_local i32 @trace_thermal_power_devfreq_limit(%struct.thermal_cooling_device*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
