; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3403_priv = type { i64, %struct.TYPE_2__*, %struct.int3403_sensor* }
%struct.TYPE_2__ = type { i32 }
%struct.int3403_sensor = type { i32 }

@INT3403_TYPE_SENSOR = common dso_local global i64 0, align 8
@THERMAL_TRIP_VIOLATED = common dso_local global i32 0, align 4
@THERMAL_TRIP_CHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @int3403_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int3403_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.int3403_priv*, align 8
  %8 = alloca %struct.int3403_sensor*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.int3403_priv*
  store %struct.int3403_priv* %10, %struct.int3403_priv** %7, align 8
  %11 = load %struct.int3403_priv*, %struct.int3403_priv** %7, align 8
  %12 = icmp ne %struct.int3403_priv* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %53

14:                                               ; preds = %3
  %15 = load %struct.int3403_priv*, %struct.int3403_priv** %7, align 8
  %16 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %15, i32 0, i32 2
  %17 = load %struct.int3403_sensor*, %struct.int3403_sensor** %16, align 8
  store %struct.int3403_sensor* %17, %struct.int3403_sensor** %8, align 8
  %18 = load %struct.int3403_priv*, %struct.int3403_priv** %7, align 8
  %19 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INT3403_TYPE_SENSOR, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.int3403_sensor*, %struct.int3403_sensor** %8, align 8
  %25 = icmp ne %struct.int3403_sensor* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %14
  br label %53

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %46 [
    i32 130, label %29
    i32 128, label %30
    i32 129, label %36
  ]

29:                                               ; preds = %27
  br label %53

30:                                               ; preds = %27
  %31 = load %struct.int3403_sensor*, %struct.int3403_sensor** %8, align 8
  %32 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @THERMAL_TRIP_VIOLATED, align 4
  %35 = call i32 @int340x_thermal_zone_device_update(i32 %33, i32 %34)
  br label %53

36:                                               ; preds = %27
  %37 = load %struct.int3403_sensor*, %struct.int3403_sensor** %8, align 8
  %38 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @int340x_thermal_read_trips(i32 %39)
  %41 = load %struct.int3403_sensor*, %struct.int3403_sensor** %8, align 8
  %42 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @THERMAL_TRIP_CHANGED, align 4
  %45 = call i32 @int340x_thermal_zone_device_update(i32 %43, i32 %44)
  br label %53

46:                                               ; preds = %27
  %47 = load %struct.int3403_priv*, %struct.int3403_priv** %7, align 8
  %48 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %13, %26, %46, %36, %30, %29
  ret void
}

declare dso_local i32 @int340x_thermal_zone_device_update(i32, i32) #1

declare dso_local i32 @int340x_thermal_read_trips(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
