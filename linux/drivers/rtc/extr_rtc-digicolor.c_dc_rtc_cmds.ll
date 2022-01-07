; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-digicolor.c_dc_rtc_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-digicolor.c_dc_rtc_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_rtc = type { i64 }

@DC_RTC_CMD_MASK = common dso_local global i32 0, align 4
@DC_RTC_GO_BUSY = common dso_local global i32 0, align 4
@DC_RTC_CONTROL = common dso_local global i64 0, align 8
@CMD_DELAY_US = common dso_local global i32 0, align 4
@CMD_TIMEOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_rtc*, i32*, i32)* @dc_rtc_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_rtc_cmds(%struct.dc_rtc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_rtc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dc_rtc* %0, %struct.dc_rtc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %51, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DC_RTC_CMD_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @DC_RTC_GO_BUSY, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.dc_rtc*, %struct.dc_rtc** %5, align 8
  %26 = getelementptr inbounds %struct.dc_rtc, %struct.dc_rtc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DC_RTC_CONTROL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb_relaxed(i32 %24, i64 %29)
  %31 = load %struct.dc_rtc*, %struct.dc_rtc** %5, align 8
  %32 = getelementptr inbounds %struct.dc_rtc, %struct.dc_rtc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DC_RTC_CONTROL, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @DC_RTC_GO_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @CMD_DELAY_US, align 4
  %44 = load i32, i32* @CMD_TIMEOUT_US, align 4
  %45 = call i32 @readb_relaxed_poll_timeout(i64 %35, i32 %36, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %15
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %55

50:                                               ; preds = %15
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %11

54:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @readb_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
