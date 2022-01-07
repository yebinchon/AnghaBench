; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_check_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_check_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_rtc = type { i32, i64, i32 }

@SPRD_RTC_PWR_STS = common dso_local global i64 0, align 8
@SPRD_RTC_POWER_RESET_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_rtc*)* @sprd_rtc_check_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_check_power_down(%struct.sprd_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sprd_rtc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sprd_rtc* %0, %struct.sprd_rtc** %3, align 8
  %6 = load %struct.sprd_rtc*, %struct.sprd_rtc** %3, align 8
  %7 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.sprd_rtc*, %struct.sprd_rtc** %3, align 8
  %10 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SPRD_RTC_PWR_STS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @regmap_read(i32 %8, i64 %13, i64* %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @SPRD_RTC_POWER_RESET_VALUE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  %25 = load %struct.sprd_rtc*, %struct.sprd_rtc** %3, align 8
  %26 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @regmap_read(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
