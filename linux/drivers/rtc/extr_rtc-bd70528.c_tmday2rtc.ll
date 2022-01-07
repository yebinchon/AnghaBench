; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_tmday2rtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_tmday2rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32 }
%struct.bd70528_rtc_day = type { i32, i32, i32 }

@BD70528_MASK_RTC_SEC = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_MINUTE = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_HOUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*, %struct.bd70528_rtc_day*)* @tmday2rtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmday2rtc(%struct.rtc_time* %0, %struct.bd70528_rtc_day* %1) #0 {
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca %struct.bd70528_rtc_day*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  store %struct.bd70528_rtc_day* %1, %struct.bd70528_rtc_day** %4, align 8
  %5 = load i32, i32* @BD70528_MASK_RTC_SEC, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.bd70528_rtc_day*, %struct.bd70528_rtc_day** %4, align 8
  %8 = getelementptr inbounds %struct.bd70528_rtc_day, %struct.bd70528_rtc_day* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @BD70528_MASK_RTC_MINUTE, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.bd70528_rtc_day*, %struct.bd70528_rtc_day** %4, align 8
  %14 = getelementptr inbounds %struct.bd70528_rtc_day, %struct.bd70528_rtc_day* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @BD70528_MASK_RTC_HOUR, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.bd70528_rtc_day*, %struct.bd70528_rtc_day** %4, align 8
  %20 = getelementptr inbounds %struct.bd70528_rtc_day, %struct.bd70528_rtc_day* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bin2bcd(i32 %25)
  %27 = load %struct.bd70528_rtc_day*, %struct.bd70528_rtc_day** %4, align 8
  %28 = getelementptr inbounds %struct.bd70528_rtc_day, %struct.bd70528_rtc_day* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bin2bcd(i32 %33)
  %35 = load %struct.bd70528_rtc_day*, %struct.bd70528_rtc_day** %4, align 8
  %36 = getelementptr inbounds %struct.bd70528_rtc_day, %struct.bd70528_rtc_day* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bin2bcd(i32 %41)
  %43 = load %struct.bd70528_rtc_day*, %struct.bd70528_rtc_day** %4, align 8
  %44 = getelementptr inbounds %struct.bd70528_rtc_day, %struct.bd70528_rtc_day* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  ret void
}

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
