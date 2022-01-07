; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.as3722_rtc = type { %struct.as3722* }
%struct.as3722 = type { i32 }

@AS3722_RTC_SECOND_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RTC_SECOND reg block read failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @as3722_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %15 = load %struct.as3722*, %struct.as3722** %7, align 8
  %16 = load i32, i32* @AS3722_RTC_SECOND_REG, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %18 = call i32 @as3722_block_read(%struct.as3722* %15, i32 %16, i32 6, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = call i32 @as3722_reg_to_time(i32* %27, %struct.rtc_time* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.as3722_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @as3722_block_read(%struct.as3722*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @as3722_reg_to_time(i32*, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
