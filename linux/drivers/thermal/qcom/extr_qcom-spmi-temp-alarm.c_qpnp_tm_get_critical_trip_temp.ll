; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_get_critical_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_get_critical_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qpnp_tm_chip = type { i32 }
%struct.thermal_trip = type { i64, i32 }

@THERMAL_TEMP_INVALID = common dso_local global i32 0, align 4
@THERMAL_TRIP_CRITICAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qpnp_tm_chip*)* @qpnp_tm_get_critical_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpnp_tm_get_critical_trip_temp(%struct.qpnp_tm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qpnp_tm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_trip*, align 8
  %6 = alloca i32, align 4
  store %struct.qpnp_tm_chip* %0, %struct.qpnp_tm_chip** %3, align 8
  %7 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %8 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @of_thermal_get_ntrips(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @THERMAL_TEMP_INVALID, align 4
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %17 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.thermal_trip* @of_thermal_get_trip_points(i32 %18)
  store %struct.thermal_trip* %19, %struct.thermal_trip** %5, align 8
  %20 = load %struct.thermal_trip*, %struct.thermal_trip** %5, align 8
  %21 = icmp ne %struct.thermal_trip* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @THERMAL_TEMP_INVALID, align 4
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %53, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %31 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @of_thermal_is_trip_valid(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load %struct.thermal_trip*, %struct.thermal_trip** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %37, i64 %39
  %41 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @THERMAL_TRIP_CRITICAL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.thermal_trip*, %struct.thermal_trip** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %46, i64 %48
  %50 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %36, %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %25

56:                                               ; preds = %25
  %57 = load i32, i32* @THERMAL_TEMP_INVALID, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %45, %22, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @of_thermal_get_ntrips(i32) #1

declare dso_local %struct.thermal_trip* @of_thermal_get_trip_points(i32) #1

declare dso_local i64 @of_thermal_is_trip_valid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
