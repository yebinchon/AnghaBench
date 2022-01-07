; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_voltages_setup_fairchild.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_voltages_setup_fairchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fan53555_device_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Chip ID %d with rev %d not supported!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Chip ID %d not supported!\0A\00", align 1
@FAN53555_NVOLTAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fan53555_device_info*)* @fan53555_voltages_setup_fairchild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan53555_voltages_setup_fairchild(%struct.fan53555_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fan53555_device_info*, align 8
  store %struct.fan53555_device_info* %0, %struct.fan53555_device_info** %3, align 8
  %4 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %5 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %45 [
    i32 135, label %7
    i32 134, label %35
    i32 133, label %35
    i32 131, label %35
    i32 130, label %35
    i32 132, label %40
  ]

7:                                                ; preds = %1
  %8 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %9 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 128, label %16
  ]

11:                                               ; preds = %7
  %12 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %13 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %12, i32 0, i32 1
  store i32 600000, i32* %13, align 4
  %14 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %15 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %14, i32 0, i32 2
  store i32 10000, i32* %15, align 4
  br label %34

16:                                               ; preds = %7
  %17 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %18 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %17, i32 0, i32 1
  store i32 800000, i32* %18, align 4
  %19 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %20 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %19, i32 0, i32 2
  store i32 10000, i32* %20, align 4
  br label %34

21:                                               ; preds = %7
  %22 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %23 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %26 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %29 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %16, %11
  br label %55

35:                                               ; preds = %1, %1, %1, %1
  %36 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %37 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %36, i32 0, i32 1
  store i32 600000, i32* %37, align 4
  %38 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %39 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %38, i32 0, i32 2
  store i32 10000, i32* %39, align 4
  br label %55

40:                                               ; preds = %1
  %41 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %42 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %41, i32 0, i32 1
  store i32 603000, i32* %42, align 4
  %43 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %44 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %43, i32 0, i32 2
  store i32 12826, i32* %44, align 4
  br label %55

45:                                               ; preds = %1
  %46 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %47 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %50 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %59

55:                                               ; preds = %40, %35, %34
  %56 = load i32, i32* @FAN53555_NVOLTAGES, align 4
  %57 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %3, align 8
  %58 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %45, %21
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
