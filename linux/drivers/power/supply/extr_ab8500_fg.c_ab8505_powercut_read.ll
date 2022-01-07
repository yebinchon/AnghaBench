; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8505_powercut_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8505_powercut_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_supply = type { i32 }
%struct.ab8500_fg = type { i32 }

@AB8500_RTC = common dso_local global i32 0, align 4
@AB8505_RTC_PCUT_CTL_STATUS_REG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ab8505_powercut_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8505_powercut_read(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.power_supply*, align 8
  %11 = alloca %struct.ab8500_fg*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %12)
  store %struct.power_supply* %13, %struct.power_supply** %10, align 8
  %14 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %15 = call %struct.ab8500_fg* @power_supply_get_drvdata(%struct.power_supply* %14)
  store %struct.ab8500_fg* %15, %struct.ab8500_fg** %11, align 8
  %16 = load %struct.ab8500_fg*, %struct.ab8500_fg** %11, align 8
  %17 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AB8500_RTC, align 4
  %20 = load i32, i32* @AB8505_RTC_PCUT_CTL_STATUS_REG, align 4
  %21 = call i32 @abx500_get_register_interruptible(i32 %18, i32 %19, i32 %20, i32* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %31

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 1
  %30 = call i32 @scnprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ab8500_fg* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i32, i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
