; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_update_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_update_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to read out thermal zone (%d)\0A\00", align 1
@THERMAL_TEMP_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"last_temperature N/A, current_temperature=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"last_temperature=%d, current_temperature=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thermal_zone_device*)* @update_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_temperature(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca %struct.thermal_zone_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %2, align 8
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %6 = call i32 @thermal_zone_get_temp(%struct.thermal_zone_device* %5, i32* %3)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %16 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %15, i32 0, i32 2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_warn(i32* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14, %9
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %22 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %21, i32 0, i32 3
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %25 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %28 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %31 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %33 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %32, i32 0, i32 3
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %36 = call i32 @trace_thermal_temperature(%struct.thermal_zone_device* %35)
  %37 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %38 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @THERMAL_TEMP_INVALID, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %20
  %43 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %44 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %43, i32 0, i32 2
  %45 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %46 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %59

49:                                               ; preds = %20
  %50 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %51 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %50, i32 0, i32 2
  %52 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %53 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %56 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %19, %49, %42
  ret void
}

declare dso_local i32 @thermal_zone_get_temp(%struct.thermal_zone_device*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_thermal_temperature(%struct.thermal_zone_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
