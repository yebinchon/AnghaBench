; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9055 = type { i32 }
%struct.da9055_pdata = type { i64 }

@DA9055_REG_CONTROL_B = common dso_local global i32 0, align 4
@DA9055_RTC_EN = common dso_local global i32 0, align 4
@DA9055_REG_EN_32K = common dso_local global i32 0, align 4
@DA9055_CRYSTAL_EN = common dso_local global i32 0, align 4
@DA9055_RTC_MODE_PD = common dso_local global i32 0, align 4
@DA9055_RTC_MODE_SD = common dso_local global i32 0, align 4
@DA9055_RTC_MODE_SD_SHIFT = common dso_local global i32 0, align 4
@DA9055_REG_ALARM_MO = common dso_local global i32 0, align 4
@DA9055_RTC_TICK_WAKE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9055*, %struct.da9055_pdata*)* @da9055_rtc_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_rtc_device_init(%struct.da9055* %0, %struct.da9055_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9055*, align 8
  %5 = alloca %struct.da9055_pdata*, align 8
  %6 = alloca i32, align 4
  store %struct.da9055* %0, %struct.da9055** %4, align 8
  store %struct.da9055_pdata* %1, %struct.da9055_pdata** %5, align 8
  %7 = load %struct.da9055*, %struct.da9055** %4, align 8
  %8 = load i32, i32* @DA9055_REG_CONTROL_B, align 4
  %9 = load i32, i32* @DA9055_RTC_EN, align 4
  %10 = load i32, i32* @DA9055_RTC_EN, align 4
  %11 = call i32 @da9055_reg_update(%struct.da9055* %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.da9055*, %struct.da9055** %4, align 8
  %18 = load i32, i32* @DA9055_REG_EN_32K, align 4
  %19 = load i32, i32* @DA9055_CRYSTAL_EN, align 4
  %20 = load i32, i32* @DA9055_CRYSTAL_EN, align 4
  %21 = call i32 @da9055_reg_update(%struct.da9055* %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %67

26:                                               ; preds = %16
  %27 = load %struct.da9055*, %struct.da9055** %4, align 8
  %28 = load i32, i32* @DA9055_REG_CONTROL_B, align 4
  %29 = load i32, i32* @DA9055_RTC_MODE_PD, align 4
  %30 = load i32, i32* @DA9055_RTC_MODE_PD, align 4
  %31 = call i32 @da9055_reg_update(%struct.da9055* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %26
  %37 = load %struct.da9055_pdata*, %struct.da9055_pdata** %5, align 8
  %38 = icmp ne %struct.da9055_pdata* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load %struct.da9055_pdata*, %struct.da9055_pdata** %5, align 8
  %41 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.da9055*, %struct.da9055** %4, align 8
  %46 = load i32, i32* @DA9055_REG_CONTROL_B, align 4
  %47 = load i32, i32* @DA9055_RTC_MODE_SD, align 4
  %48 = load i32, i32* @DA9055_RTC_MODE_SD, align 4
  %49 = load i32, i32* @DA9055_RTC_MODE_SD_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = call i32 @da9055_reg_update(%struct.da9055* %45, i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %67

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %39, %36
  %58 = load %struct.da9055*, %struct.da9055** %4, align 8
  %59 = load i32, i32* @DA9055_REG_ALARM_MO, align 4
  %60 = load i32, i32* @DA9055_RTC_TICK_WAKE_MASK, align 4
  %61 = call i32 @da9055_reg_update(%struct.da9055* %58, i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %54, %34, %24, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @da9055_reg_update(%struct.da9055*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
