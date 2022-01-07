; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.sirfsoc_rtc_drv = type { i64 }

@RTC_CN = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i64 0, align 8
@RTC_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @sirfsoc_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sirfsoc_rtc_drv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sirfsoc_rtc_drv* @dev_get_drvdata(%struct.device* %7)
  store %struct.sirfsoc_rtc_drv* %8, %struct.sirfsoc_rtc_drv** %6, align 8
  br label %9

9:                                                ; preds = %14, %2
  %10 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %11 = load i32, i32* @RTC_CN, align 4
  %12 = call i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = call i32 (...) @cpu_relax()
  br label %14

14:                                               ; preds = %9
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %17 = load i32, i32* @RTC_CN, align 4
  %18 = call i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %16, i32 %17)
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %9, label %20

20:                                               ; preds = %14
  %21 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BITS_PER_LONG, align 8
  %25 = load i64, i64* @RTC_SHIFT, align 8
  %26 = sub i64 %24, %25
  %27 = shl i64 %23, %26
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @RTC_SHIFT, align 8
  %30 = lshr i64 %28, %29
  %31 = or i64 %27, %30
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = call i32 @rtc_time_to_tm(i64 %31, %struct.rtc_time* %32)
  ret i32 0
}

declare dso_local %struct.sirfsoc_rtc_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
