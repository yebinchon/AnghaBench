; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_set_rtc_based_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_set_rtc_based_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd70528_rtc = type { i32, i32 }

@BD70528_WDT_STATE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to disable WDG for RTC setting (%d)\0A\00", align 1
@BD70528_ELAPSED_STATE_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to disable 'elapsed timer' for RTC setting\0A\00", align 1
@BD70528_WAKE_STATE_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Failed to disable 'wake timer' for RTC setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bd70528_rtc*, i32, i32*)* @bd70528_set_rtc_based_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_set_rtc_based_timers(%struct.bd70528_rtc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bd70528_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.bd70528_rtc* %0, %struct.bd70528_rtc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %5, align 8
  %10 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BD70528_WDT_STATE_BIT, align 4
  %14 = and i32 %12, %13
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @bd70528_wdt_set(i32 %11, i32 %14, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %5, align 8
  %28 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BD70528_ELAPSED_STATE_BIT, align 4
  %32 = and i32 %30, %31
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @bd70528_set_elapsed_tmr(i32 %29, i32 %32, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %5, align 8
  %39 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %26
  %44 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %5, align 8
  %45 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @BD70528_WAKE_STATE_BIT, align 4
  %49 = and i32 %47, %48
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @bd70528_set_wake(i32 %46, i32 %49, i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %5, align 8
  %56 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %43
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %54, %37, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @bd70528_wdt_set(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @bd70528_set_elapsed_tmr(i32, i32, i32*) #1

declare dso_local i32 @bd70528_set_wake(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
