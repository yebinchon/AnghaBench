; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_readtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_readtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.wm831x_rtc = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_RTC_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read RTC control: %d\0A\00", align 1
@WM831X_RTC_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"RTC not yet configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM831X_RTC_TIME_1 = common dso_local global i32 0, align 4
@WM831X_GET_TIME_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Timed out reading current time\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @wm831x_rtc_readtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_rtc_readtime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.wm831x_rtc*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
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
  store i32 0, i32* %11, align 4
  %18 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %19 = load i32, i32* @WM831X_RTC_CONTROL, align 4
  %20 = call i32 @wm831x_reg_read(%struct.wm831x* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %81

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @WM831X_RTC_VALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %81

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %71, %38
  %40 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %41 = load i32, i32* @WM831X_RTC_TIME_1, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %43 = call i32 @wm831x_bulk_read(%struct.wm831x* %40, i32 %41, i32 2, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %71

47:                                               ; preds = %39
  %48 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %49 = load i32, i32* @WM831X_RTC_TIME_1, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %51 = call i32 @wm831x_bulk_read(%struct.wm831x* %48, i32 %49, i32 2, i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %71

55:                                               ; preds = %47
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %58 = call i64 @memcmp(i32* %56, i32* %57, i32 8)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 16
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %63, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %69 = call i32 @rtc_time64_to_tm(i32 %67, %struct.rtc_time* %68)
  store i32 0, i32* %3, align 4
  br label %81

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %54, %46
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @WM831X_GET_TIME_RETRIES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %39, label %76

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %60, %33, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.wm831x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @wm831x_bulk_read(%struct.wm831x*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
