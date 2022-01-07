; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_tm2rtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_tm2rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i64, i64, i64, i64 }
%struct.bd70528_rtc_data = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BD70528_MASK_RTC_DAY = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_WEEK = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_MONTH = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_HOUR_PM = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_HOUR_24H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*, %struct.bd70528_rtc_data*)* @tm2rtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm2rtc(%struct.rtc_time* %0, %struct.bd70528_rtc_data* %1) #0 {
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca %struct.bd70528_rtc_data*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  store %struct.bd70528_rtc_data* %1, %struct.bd70528_rtc_data** %4, align 8
  %5 = load i32, i32* @BD70528_MASK_RTC_DAY, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %8 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @BD70528_MASK_RTC_WEEK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %14 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @BD70528_MASK_RTC_MONTH, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %20 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @BD70528_MASK_RTC_HOUR_PM, align 4
  %24 = load i32, i32* @BD70528_MASK_RTC_HOUR_24H, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %28 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %33 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %34 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %33, i32 0, i32 4
  %35 = call i32 @tmday2rtc(%struct.rtc_time* %32, %struct.TYPE_2__* %34)
  %36 = load i32, i32* @BD70528_MASK_RTC_HOUR_24H, align 4
  %37 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %38 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bin2bcd(i64 %44)
  %46 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %47 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @bin2bcd(i64 %52)
  %54 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %55 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @bin2bcd(i64 %61)
  %63 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %64 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 100
  %71 = call i32 @bin2bcd(i64 %70)
  %72 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %4, align 8
  %73 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  ret void
}

declare dso_local i32 @tmday2rtc(%struct.rtc_time*, %struct.TYPE_2__*) #1

declare dso_local i32 @bin2bcd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
