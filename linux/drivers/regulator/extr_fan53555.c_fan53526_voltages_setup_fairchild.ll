; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53526_voltages_setup_fairchild.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53526_voltages_setup_fairchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fan53555_device_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Chip ID %d with rev %d not supported!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Chip ID %d not supported!\0A\00", align 1
@FAN53526_NVOLTAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fan53555_device_info*)* @fan53526_voltages_setup_fairchild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan53526_voltages_setup_fairchild(%struct.fan53555_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fan53555_device_info*, align 8
  store %struct.fan53555_device_info* %0, %struct.fan53555_device_info** %3, align 8
  %4 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %5 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %30 [
    i32 129, label %7
  ]

7:                                                ; preds = %1
  %8 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %9 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %16 [
    i32 128, label %11
  ]

11:                                               ; preds = %7
  %12 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %13 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %12, i32 0, i32 1
  store i32 600000, i32* %13, align 4
  %14 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %15 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %14, i32 0, i32 2
  store i32 6250, i32* %15, align 4
  br label %29

16:                                               ; preds = %7
  %17 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %18 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %21 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %24 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %11
  br label %40

30:                                               ; preds = %1
  %31 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %32 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %35 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @FAN53526_NVOLTAGES, align 4
  %42 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %43 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %30, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
