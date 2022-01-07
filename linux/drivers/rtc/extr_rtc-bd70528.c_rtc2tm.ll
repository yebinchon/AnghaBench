; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_rtc2tm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_rtc2tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd70528_rtc_data = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }

@BD70528_MASK_RTC_SEC = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_MINUTE = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_HOUR = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_HOUR_24H = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_HOUR_PM = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_DAY = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_MONTH = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_YEAR = common dso_local global i32 0, align 4
@BD70528_MASK_RTC_WEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bd70528_rtc_data*, %struct.rtc_time*)* @rtc2tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc2tm(%struct.bd70528_rtc_data* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.bd70528_rtc_data*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store %struct.bd70528_rtc_data* %0, %struct.bd70528_rtc_data** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %3, align 8
  %6 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BD70528_MASK_RTC_SEC, align 4
  %10 = and i32 %8, %9
  %11 = call i8* @bcd2bin(i32 %10)
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %3, align 8
  %15 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BD70528_MASK_RTC_MINUTE, align 4
  %19 = and i32 %17, %18
  %20 = call i8* @bcd2bin(i32 %19)
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %3, align 8
  %24 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BD70528_MASK_RTC_HOUR, align 4
  %28 = and i32 %26, %27
  %29 = call i8* @bcd2bin(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %3, align 8
  %34 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BD70528_MASK_RTC_HOUR_24H, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %2
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = srem i32 %43, 12
  store i32 %44, i32* %42, align 8
  %45 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %3, align 8
  %46 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BD70528_MASK_RTC_HOUR_PM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 12
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %52, %40
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %3, align 8
  %60 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BD70528_MASK_RTC_DAY, align 4
  %63 = and i32 %61, %62
  %64 = call i8* @bcd2bin(i32 %63)
  %65 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %3, align 8
  %68 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BD70528_MASK_RTC_MONTH, align 4
  %71 = and i32 %69, %70
  %72 = call i8* @bcd2bin(i32 %71)
  %73 = getelementptr i8, i8* %72, i64 -1
  %74 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %3, align 8
  %77 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BD70528_MASK_RTC_YEAR, align 4
  %80 = and i32 %78, %79
  %81 = call i8* @bcd2bin(i32 %80)
  %82 = getelementptr i8, i8* %81, i64 100
  %83 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.bd70528_rtc_data*, %struct.bd70528_rtc_data** %3, align 8
  %86 = getelementptr inbounds %struct.bd70528_rtc_data, %struct.bd70528_rtc_data* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BD70528_MASK_RTC_WEEK, align 4
  %89 = and i32 %87, %88
  %90 = call i8* @bcd2bin(i32 %89)
  %91 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  ret void
}

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
