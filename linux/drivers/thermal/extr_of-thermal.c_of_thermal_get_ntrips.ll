; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_get_ntrips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_get_ntrips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.__thermal_zone* }
%struct.__thermal_zone = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_thermal_get_ntrips(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca %struct.__thermal_zone*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %6 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 0
  %7 = load %struct.__thermal_zone*, %struct.__thermal_zone** %6, align 8
  store %struct.__thermal_zone* %7, %struct.__thermal_zone** %4, align 8
  %8 = load %struct.__thermal_zone*, %struct.__thermal_zone** %4, align 8
  %9 = icmp ne %struct.__thermal_zone* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.__thermal_zone*, %struct.__thermal_zone** %4, align 8
  %12 = call i64 @IS_ERR(%struct.__thermal_zone* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %10
  %18 = load %struct.__thermal_zone*, %struct.__thermal_zone** %4, align 8
  %19 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @IS_ERR(%struct.__thermal_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
