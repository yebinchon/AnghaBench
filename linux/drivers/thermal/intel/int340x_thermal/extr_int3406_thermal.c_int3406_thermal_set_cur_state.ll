; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3406_thermal.c_int3406_thermal_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3406_thermal.c_int3406_thermal_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.int3406_thermal_data* }
%struct.int3406_thermal_data = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @int3406_thermal_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3406_thermal_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.int3406_thermal_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %10 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %9, i32 0, i32 0
  %11 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %10, align 8
  store %struct.int3406_thermal_data* %11, %struct.int3406_thermal_data** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %6, align 8
  %14 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %6, align 8
  %17 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = icmp ugt i64 %12, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %6, align 8
  %26 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %6, align 8
  %31 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %32, %33
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %6, align 8
  %39 = call i32 @ACPI_TO_RAW(i32 %37, %struct.int3406_thermal_data* %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %6, align 8
  %41 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @backlight_device_set_brightness(i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %24, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ACPI_TO_RAW(i32, %struct.int3406_thermal_data*) #1

declare dso_local i32 @backlight_device_set_brightness(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
