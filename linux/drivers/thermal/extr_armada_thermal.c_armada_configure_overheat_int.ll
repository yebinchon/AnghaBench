; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_configure_overheat_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_configure_overheat_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_priv = type { i32, %struct.thermal_zone_device* }
%struct.thermal_zone_device = type { i32 }
%struct.thermal_trip = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@THERMAL_TRIP_CRITICAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_thermal_priv*, %struct.thermal_zone_device*, i32)* @armada_configure_overheat_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_configure_overheat_int(%struct.armada_thermal_priv* %0, %struct.thermal_zone_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.armada_thermal_priv*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thermal_trip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.armada_thermal_priv* %0, %struct.armada_thermal_priv** %5, align 8
  store %struct.thermal_zone_device* %1, %struct.thermal_zone_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %12 = call %struct.thermal_trip* @of_thermal_get_trip_points(%struct.thermal_zone_device* %11)
  store %struct.thermal_trip* %12, %struct.thermal_trip** %8, align 8
  %13 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %14 = icmp ne %struct.thermal_trip* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %77

18:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %22 = call i32 @of_thermal_get_ntrips(%struct.thermal_zone_device* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %25, i64 %27
  %29 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @THERMAL_TRIP_CRITICAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %38

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %19

38:                                               ; preds = %33, %19
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %41 = call i32 @of_thermal_get_ntrips(%struct.thermal_zone_device* %40)
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %77

46:                                               ; preds = %38
  %47 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @armada_select_channel(%struct.armada_thermal_priv* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %77

54:                                               ; preds = %46
  %55 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %56 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %56, i64 %58
  %60 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %62, i64 %64
  %66 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @armada_set_overheat_thresholds(%struct.armada_thermal_priv* %55, i32 %61, i32 %67)
  %69 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %70 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %71 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %70, i32 0, i32 1
  store %struct.thermal_zone_device* %69, %struct.thermal_zone_device** %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %74 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %76 = call i32 @armada_enable_overheat_interrupt(%struct.armada_thermal_priv* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %54, %52, %43, %15
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.thermal_trip* @of_thermal_get_trip_points(%struct.thermal_zone_device*) #1

declare dso_local i32 @of_thermal_get_ntrips(%struct.thermal_zone_device*) #1

declare dso_local i32 @armada_select_channel(%struct.armada_thermal_priv*, i32) #1

declare dso_local i32 @armada_set_overheat_thresholds(%struct.armada_thermal_priv*, i32, i32) #1

declare dso_local i32 @armada_enable_overheat_interrupt(%struct.armada_thermal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
