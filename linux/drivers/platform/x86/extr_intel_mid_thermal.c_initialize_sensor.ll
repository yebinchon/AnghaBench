; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_initialize_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_initialize_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_device_info = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ADC_DATA_START_ADDR = common dso_local global i64 0, align 8
@channel_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thermal_device_info* (i32)* @initialize_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thermal_device_info* @initialize_sensor(i32 %0) #0 {
  %2 = alloca %struct.thermal_device_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_device_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.thermal_device_info* @kzalloc(i32 16, i32 %5)
  store %struct.thermal_device_info* %6, %struct.thermal_device_info** %4, align 8
  %7 = load %struct.thermal_device_info*, %struct.thermal_device_info** %4, align 8
  %8 = icmp ne %struct.thermal_device_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.thermal_device_info* null, %struct.thermal_device_info** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load i64, i64* @ADC_DATA_START_ADDR, align 8
  %12 = load i32, i32* @channel_index, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %12, %13
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %11, %16
  %18 = load %struct.thermal_device_info*, %struct.thermal_device_info** %4, align 8
  %19 = getelementptr inbounds %struct.thermal_device_info, %struct.thermal_device_info* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load %struct.thermal_device_info*, %struct.thermal_device_info** %4, align 8
  %24 = getelementptr inbounds %struct.thermal_device_info, %struct.thermal_device_info* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %10
  %26 = load %struct.thermal_device_info*, %struct.thermal_device_info** %4, align 8
  store %struct.thermal_device_info* %26, %struct.thermal_device_info** %2, align 8
  br label %27

27:                                               ; preds = %25, %9
  %28 = load %struct.thermal_device_info*, %struct.thermal_device_info** %2, align 8
  ret %struct.thermal_device_info* %28
}

declare dso_local %struct.thermal_device_info* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
