; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_voltages_setup_silergy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_voltages_setup_silergy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fan53555_device_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Chip ID %d not supported!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FAN53555_NVOLTAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fan53555_device_info*)* @fan53555_voltages_setup_silergy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan53555_voltages_setup_silergy(%struct.fan53555_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fan53555_device_info*, align 8
  store %struct.fan53555_device_info* %0, %struct.fan53555_device_info** %3, align 8
  %4 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %5 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %12 [
    i32 128, label %7
  ]

7:                                                ; preds = %1
  %8 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %9 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %8, i32 0, i32 1
  store i32 712500, i32* %9, align 4
  %10 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %11 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %10, i32 0, i32 2
  store i32 12500, i32* %11, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %14 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %17 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %7
  %23 = load i32, i32* @FAN53555_NVOLTAGES, align 4
  %24 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %25 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
