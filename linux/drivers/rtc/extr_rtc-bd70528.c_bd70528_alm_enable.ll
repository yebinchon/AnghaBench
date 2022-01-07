; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_alm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_alm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bd70528_rtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BD70528_MASK_ALM_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to change wake state\0A\00", align 1
@BD70528_REG_RTC_ALM_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to change alarm state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @bd70528_alm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_alm_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bd70528_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @BD70528_MASK_ALM_EN, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.bd70528_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.bd70528_rtc* %10, %struct.bd70528_rtc** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %7, align 8
  %16 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @bd70528_wdt_lock(%struct.TYPE_4__* %17)
  %19 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %7, align 8
  %20 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bd70528_set_wake(%struct.TYPE_4__* %21, i32 %22, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %45

29:                                               ; preds = %14
  %30 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %7, align 8
  %31 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BD70528_REG_RTC_ALM_MASK, align 4
  %36 = load i32, i32* @BD70528_MASK_ALM_EN, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %29
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %7, align 8
  %47 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @bd70528_wdt_unlock(%struct.TYPE_4__* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.bd70528_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @bd70528_wdt_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @bd70528_set_wake(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @bd70528_wdt_unlock(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
