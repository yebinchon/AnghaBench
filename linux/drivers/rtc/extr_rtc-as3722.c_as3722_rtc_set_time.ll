; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.as3722_rtc = type { %struct.as3722* }
%struct.as3722 = type { i32 }

@AS3722_RTC_START_YEAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AS3722_RTC_SECOND_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RTC_SECOND reg block write failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @as3722_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.as3722_rtc*, align 8
  %7 = alloca %struct.as3722*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.as3722_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.as3722_rtc* %11, %struct.as3722_rtc** %6, align 8
  %12 = load %struct.as3722_rtc*, %struct.as3722_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %12, i32 0, i32 0
  %14 = load %struct.as3722*, %struct.as3722** %13, align 8
  store %struct.as3722* %14, %struct.as3722** %7, align 8
  %15 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AS3722_RTC_START_YEAR, align 4
  %19 = sub nsw i32 %18, 1900
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %2
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = call i32 @as3722_time_to_reg(i32* %25, %struct.rtc_time* %26)
  %28 = load %struct.as3722*, %struct.as3722** %7, align 8
  %29 = load i32, i32* @AS3722_RTC_SECOND_REG, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %31 = call i32 @as3722_block_write(%struct.as3722* %28, i32 %29, i32 6, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %24
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.as3722_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @as3722_time_to_reg(i32*, %struct.rtc_time*) #1

declare dso_local i32 @as3722_block_write(%struct.as3722*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
