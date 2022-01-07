; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_fair_share.c_get_target_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_fair_share.c_get_target_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }
%struct.thermal_cooling_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_cooling_device*, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*, i32, i32)* @get_target_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_target_state(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca %struct.thermal_cooling_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %11 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)** %13, align 8
  %15 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %16 = call i32 %14(%struct.thermal_cooling_device* %15, i64* %9)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %9, align 8
  %22 = mul i64 %20, %21
  %23 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %24 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 100, %25
  %27 = sext i32 %26 to i64
  %28 = sdiv i64 %22, %27
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
