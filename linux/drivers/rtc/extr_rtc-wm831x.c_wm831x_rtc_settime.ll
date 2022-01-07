; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.wm831x_rtc = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_RTC_TIME_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to write TIME_1: %d\0A\00", align 1
@WM831X_RTC_TIME_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to write TIME_2: %d\0A\00", align 1
@WM831X_RTC_CONTROL = common dso_local global i32 0, align 4
@WM831X_RTC_SYNC_BUSY = common dso_local global i32 0, align 4
@WM831X_SET_TIME_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Timed out writing RTC update\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"RTC update not permitted by hardware\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @wm831x_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_rtc_settime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.wm831x_rtc*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca %struct.rtc_time, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.wm831x_rtc* @dev_get_drvdata(%struct.device* %13)
  store %struct.wm831x_rtc* %14, %struct.wm831x_rtc** %6, align 8
  %15 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %16 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %15, i32 0, i32 0
  %17 = load %struct.wm831x*, %struct.wm831x** %16, align 8
  store %struct.wm831x* %17, %struct.wm831x** %7, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %19 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %21 = load i32, i32* @WM831X_RTC_TIME_1, align 4
  %22 = load i64, i64* %9, align 8
  %23 = lshr i64 %22, 16
  %24 = and i64 %23, 65535
  %25 = call i32 @wm831x_reg_write(%struct.wm831x* %20, i32 %21, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %3, align 4
  br label %98

33:                                               ; preds = %2
  %34 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %35 = load i32, i32* @WM831X_RTC_TIME_2, align 4
  %36 = load i64, i64* %9, align 8
  %37 = and i64 %36, 65535
  %38 = call i32 @wm831x_reg_write(%struct.wm831x* %34, i32 %35, i64 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %3, align 4
  br label %98

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %67, %46
  %48 = call i32 @msleep(i32 1)
  %49 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %50 = load i32, i32* @WM831X_RTC_CONTROL, align 4
  %51 = call i32 @wm831x_reg_read(%struct.wm831x* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @WM831X_RTC_SYNC_BUSY, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @WM831X_RTC_SYNC_BUSY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* @WM831X_SET_TIME_RETRIES, align 4
  %66 = icmp slt i32 %64, %65
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  br i1 %68, label %47, label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @WM831X_RTC_SYNC_BUSY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %98

79:                                               ; preds = %69
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @wm831x_rtc_readtime(%struct.device* %80, %struct.rtc_time* %8)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %98

86:                                               ; preds = %79
  %87 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %8)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %9, align 8
  %90 = sub i64 %88, %89
  %91 = icmp ugt i64 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @EPERM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %92, %84, %74, %41, %28
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.wm831x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @wm831x_rtc_readtime(%struct.device*, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
