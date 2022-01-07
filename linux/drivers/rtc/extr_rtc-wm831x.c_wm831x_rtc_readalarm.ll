; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_readalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_readalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.wm831x_rtc = type { i32 }

@WM831X_RTC_ALARM_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read alarm time: %d\0A\00", align 1
@WM831X_RTC_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read RTC control: %d\0A\00", align 1
@WM831X_RTC_ALM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @wm831x_rtc_readalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_rtc_readalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.wm831x_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.wm831x_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.wm831x_rtc* %11, %struct.wm831x_rtc** %6, align 8
  %12 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WM831X_RTC_ALARM_1, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %17 = call i32 @wm831x_bulk_read(i32 %14, i32 %15, i32 2, i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %28, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 1
  %35 = call i32 @rtc_time64_to_tm(i32 %32, i32* %34)
  %36 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %37 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @WM831X_RTC_CONTROL, align 4
  %40 = call i32 @wm831x_reg_read(i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %25
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %60

48:                                               ; preds = %25
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @WM831X_RTC_ALM_ENA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %59

56:                                               ; preds = %48
  %57 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %43, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.wm831x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @wm831x_bulk_read(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i32, i32*) #1

declare dso_local i32 @wm831x_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
