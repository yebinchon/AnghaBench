; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.jz4740_rtc = type { i32 }

@JZ_REG_RTC_SCRATCHPAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@JZ_REG_RTC_SEC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @jz4740_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.jz4740_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.jz4740_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.jz4740_rtc* %11, %struct.jz4740_rtc** %6, align 8
  store i32 5, i32* %9, align 4
  %12 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %6, align 8
  %13 = load i32, i32* @JZ_REG_RTC_SCRATCHPAD, align 4
  %14 = call i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc* %12, i32 %13)
  %15 = icmp ne i32 %14, 305419896
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %6, align 8
  %21 = load i32, i32* @JZ_REG_RTC_SEC, align 4
  %22 = call i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %6, align 8
  %24 = load i32, i32* @JZ_REG_RTC_SEC, align 4
  %25 = call i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %36, %19
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %6, align 8
  %39 = load i32, i32* @JZ_REG_RTC_SEC, align 4
  %40 = call i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %26

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %50 = call i32 @rtc_time64_to_tm(i32 %48, %struct.rtc_time* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %44, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.jz4740_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc*, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
