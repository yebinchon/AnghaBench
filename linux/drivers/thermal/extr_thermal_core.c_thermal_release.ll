; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_thermal_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_thermal_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.thermal_zone_device = type { i32 }
%struct.thermal_cooling_device = type opaque

@.str = private unnamed_addr constant [13 x i8] c"thermal_zone\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cooling_device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @thermal_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thermal_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca %struct.thermal_cooling_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call i32 @dev_name(%struct.device* %5)
  %7 = call i32 @strncmp(i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.thermal_zone_device* @to_thermal_zone(%struct.device* %10)
  store %struct.thermal_zone_device* %11, %struct.thermal_zone_device** %3, align 8
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %13 = call i32 @thermal_zone_destroy_device_groups(%struct.thermal_zone_device* %12)
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %15 = call i32 @kfree(%struct.thermal_zone_device* %14)
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call i32 @dev_name(%struct.device* %17)
  %19 = call i32 @strncmp(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 14)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call %struct.thermal_zone_device* @to_cooling_device(%struct.device* %22)
  %24 = bitcast %struct.thermal_zone_device* %23 to %struct.thermal_cooling_device*
  store %struct.thermal_cooling_device* %24, %struct.thermal_cooling_device** %4, align 8
  %25 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %26 = bitcast %struct.thermal_cooling_device* %25 to %struct.thermal_zone_device*
  %27 = call i32 @kfree(%struct.thermal_zone_device* %26)
  br label %28

28:                                               ; preds = %21, %16
  br label %29

29:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.thermal_zone_device* @to_thermal_zone(%struct.device*) #1

declare dso_local i32 @thermal_zone_destroy_device_groups(%struct.thermal_zone_device*) #1

declare dso_local i32 @kfree(%struct.thermal_zone_device*) #1

declare dso_local %struct.thermal_zone_device* @to_cooling_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
