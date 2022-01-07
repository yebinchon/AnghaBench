; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_start_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_start_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_SET_ALM_RETRIES = common dso_local global i32 0, align 4
@WM8350_RTC_TIME_CONTROL = common dso_local global i32 0, align 4
@WM8350_RTC_ALMSET = common dso_local global i32 0, align 4
@WM8350_RTC_ALMSTS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*)* @wm8350_rtc_start_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_rtc_start_alarm(%struct.wm8350* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm8350*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %3, align 8
  %7 = load i32, i32* @WM8350_SET_ALM_RETRIES, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %9 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %10 = load i32, i32* @WM8350_RTC_ALMSET, align 4
  %11 = call i32 @wm8350_clear_bits(%struct.wm8350* %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %32, %16
  %18 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %19 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %20 = call i32 @wm8350_reg_read(%struct.wm8350* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = call i32 @msecs_to_jiffies(i32 1)
  %22 = call i32 @schedule_timeout_uninterruptible(i32 %21)
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @WM8350_RTC_ALMSTS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br i1 %33, label %17, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @WM8350_RTC_ALMSTS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
