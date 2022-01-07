; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_intel_soc_dts_iosf_add_read_only_critical_trip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_intel_soc_dts_iosf_add_read_only_critical_trip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_soc_dts_sensors = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SOC_MAX_DTS_SENSORS = common dso_local global i32 0, align 4
@THERMAL_TRIP_CRITICAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_soc_dts_iosf_add_read_only_critical_trip(%struct.intel_soc_dts_sensors* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_soc_dts_sensors*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_soc_dts_sensors* %0, %struct.intel_soc_dts_sensors** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SOC_MAX_DTS_SENSORS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %54, %12
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %4, align 8
  %16 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %14, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %13
  %25 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %4, align 8
  %26 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %24
  %38 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %4, align 8
  %39 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %4, align 8
  %46 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %47, %49
  %51 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %52 = call i32 @update_trip_temp(%struct.TYPE_2__* %43, i32 %44, i64 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %64

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %13

57:                                               ; preds = %13
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %37
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @update_trip_temp(%struct.TYPE_2__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
