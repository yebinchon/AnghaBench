; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8505_powercut_maxtime_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8505_powercut_maxtime_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_supply = type { i32 }
%struct.ab8500_fg = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Incorrect parameter, echo 0 (0.0s) - 127 (1.98s) for maxtime\0A\00", align 1
@AB8500_RTC = common dso_local global i32 0, align 4
@AB8505_RTC_PCUT_MAX_TIME_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to set AB8505_RTC_PCUT_MAX_TIME_REG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ab8505_powercut_maxtime_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ab8505_powercut_maxtime_write(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.power_supply*, align 8
  %12 = alloca %struct.ab8500_fg*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %13)
  store %struct.power_supply* %14, %struct.power_supply** %11, align 8
  %15 = load %struct.power_supply*, %struct.power_supply** %11, align 8
  %16 = call %struct.ab8500_fg* @power_supply_get_drvdata(%struct.power_supply* %15)
  store %struct.ab8500_fg* %16, %struct.ab8500_fg** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @kstrtoint(i8* %17, i32 10, i32* %10)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %41

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 127
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %41

27:                                               ; preds = %21
  %28 = load %struct.ab8500_fg*, %struct.ab8500_fg** %12, align 8
  %29 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AB8500_RTC, align 4
  %32 = load i32, i32* @AB8505_RTC_PCUT_MAX_TIME_REG, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @abx500_set_register_interruptible(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %40, %24, %20
  %42 = load i64, i64* %8, align 8
  ret i64 %42
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ab8500_fg* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
