; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_set_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_set_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qpnp_tm_chip = type { i32, i32 }
%struct.thermal_trip = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@THERMAL_TRIP_CRITICAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @qpnp_tm_set_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpnp_tm_set_trip_temp(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qpnp_tm_chip*, align 8
  %9 = alloca %struct.thermal_trip*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.qpnp_tm_chip*
  store %struct.qpnp_tm_chip* %12, %struct.qpnp_tm_chip** %8, align 8
  %13 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %8, align 8
  %14 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.thermal_trip* @of_thermal_get_trip_points(i32 %15)
  store %struct.thermal_trip* %16, %struct.thermal_trip** %9, align 8
  %17 = load %struct.thermal_trip*, %struct.thermal_trip** %9, align 8
  %18 = icmp ne %struct.thermal_trip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load %struct.thermal_trip*, %struct.thermal_trip** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %23, i64 %25
  %27 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @THERMAL_TRIP_CRITICAL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %8, align 8
  %34 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @qpnp_tm_update_critical_trip_temp(%struct.qpnp_tm_chip* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %8, align 8
  %40 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %32, %31, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.thermal_trip* @of_thermal_get_trip_points(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qpnp_tm_update_critical_trip_temp(%struct.qpnp_tm_chip*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
