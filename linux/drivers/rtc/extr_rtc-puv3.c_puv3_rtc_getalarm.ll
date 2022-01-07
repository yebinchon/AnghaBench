; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-puv3.c_puv3_rtc_getalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-puv3.c_puv3_rtc_getalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32 }

@RTC_RTAR = common dso_local global i32 0, align 4
@RTC_RTSR = common dso_local global i32 0, align 4
@RTC_RTSR_ALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"read alarm: %d, %ptRr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @puv3_rtc_getalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_rtc_getalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %7 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %6, i32 0, i32 1
  store %struct.rtc_time* %7, %struct.rtc_time** %5, align 8
  %8 = load i32, i32* @RTC_RTAR, align 4
  %9 = call i32 @readl(i32 %8)
  %10 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %11 = call i32 @rtc_time_to_tm(i32 %9, %struct.rtc_time* %10)
  %12 = load i32, i32* @RTC_RTSR, align 4
  %13 = call i32 @readl(i32 %12)
  %14 = load i32, i32* @RTC_RTSR_ALE, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %17 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %23 = call i32 @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.rtc_time* %22)
  ret i32 0
}

declare dso_local i32 @rtc_time_to_tm(i32, %struct.rtc_time*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
