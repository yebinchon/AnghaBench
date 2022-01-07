; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.wm831x_rtc = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to stop alarm: %d\0A\00", align 1
@WM831X_RTC_ALARM_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to write ALARM_1: %d\0A\00", align 1
@WM831X_RTC_ALARM_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to write ALARM_2: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to start alarm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @wm831x_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.wm831x_rtc*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.wm831x_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.wm831x_rtc* %11, %struct.wm831x_rtc** %6, align 8
  %12 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %12, i32 0, i32 0
  %14 = load %struct.wm831x*, %struct.wm831x** %13, align 8
  store %struct.wm831x* %14, %struct.wm831x** %7, align 8
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 1
  %17 = call i64 @rtc_tm_to_time64(i32* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %19 = call i32 @wm831x_rtc_stop_alarm(%struct.wm831x_rtc* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %29 = load i32, i32* @WM831X_RTC_ALARM_1, align 4
  %30 = load i64, i64* %9, align 8
  %31 = lshr i64 %30, 16
  %32 = and i64 %31, 65535
  %33 = call i32 @wm831x_reg_write(%struct.wm831x* %28, i32 %29, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %71

41:                                               ; preds = %27
  %42 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %43 = load i32, i32* @WM831X_RTC_ALARM_2, align 4
  %44 = load i64, i64* %9, align 8
  %45 = and i64 %44, 65535
  %46 = call i32 @wm831x_reg_write(%struct.wm831x* %42, i32 %43, i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %41
  %55 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %61 = call i32 @wm831x_rtc_start_alarm(%struct.wm831x_rtc* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %54
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %64, %49, %36, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.wm831x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @wm831x_rtc_stop_alarm(%struct.wm831x_rtc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i64) #1

declare dso_local i32 @wm831x_rtc_start_alarm(%struct.wm831x_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
