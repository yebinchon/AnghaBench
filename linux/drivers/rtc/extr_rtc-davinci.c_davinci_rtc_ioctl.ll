; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.davinci_rtc = type { i32 }

@davinci_rtc_lock = common dso_local global i32 0, align 4
@PRTCSS_RTC_CTRL = common dso_local global i32 0, align 4
@PRTCSS_RTC_CTRL_WEN = common dso_local global i32 0, align 4
@PRTCSS_RTC_CTRL_WDTFLG = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @davinci_rtc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_rtc_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.davinci_rtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.davinci_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.davinci_rtc* %12, %struct.davinci_rtc** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @davinci_rtc_lock, i64 %13)
  %15 = load %struct.davinci_rtc*, %struct.davinci_rtc** %7, align 8
  %16 = load i32, i32* @PRTCSS_RTC_CTRL, align 4
  %17 = call i32 @rtcss_read(%struct.davinci_rtc* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %30 [
    i32 128, label %19
    i32 129, label %25
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @PRTCSS_RTC_CTRL_WEN, align 4
  %21 = load i32, i32* @PRTCSS_RTC_CTRL_WDTFLG, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load i32, i32* @PRTCSS_RTC_CTRL_WEN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOIOCTLCMD, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = load %struct.davinci_rtc*, %struct.davinci_rtc** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @PRTCSS_RTC_CTRL, align 4
  %37 = call i32 @rtcss_write(%struct.davinci_rtc* %34, i32 %35, i32 %36)
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @davinci_rtc_lock, i64 %38)
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local %struct.davinci_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtcss_read(%struct.davinci_rtc*, i32) #1

declare dso_local i32 @rtcss_write(%struct.davinci_rtc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
