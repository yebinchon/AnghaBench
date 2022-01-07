; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-zynqmp.c_xlnx_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-zynqmp.c_xlnx_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.xlnx_rtc_dev = type { i64 }

@RTC_INT_STS = common dso_local global i64 0, align 8
@RTC_INT_SEC = common dso_local global i32 0, align 4
@RTC_CUR_TM = common dso_local global i64 0, align 8
@RTC_SET_TM_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @xlnx_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.xlnx_rtc_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.xlnx_rtc_dev* @dev_get_drvdata(%struct.device* %8)
  store %struct.xlnx_rtc_dev* %9, %struct.xlnx_rtc_dev** %7, align 8
  %10 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %7, align 8
  %11 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RTC_INT_STS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RTC_INT_SEC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %7, align 8
  %22 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RTC_CUR_TM, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = sext i32 %26 to i64
  %28 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %29 = call i32 @rtc_time64_to_tm(i64 %27, %struct.rtc_time* %28)
  br label %42

30:                                               ; preds = %2
  %31 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %7, align 8
  %32 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RTC_SET_TM_RD, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %41 = call i32 @rtc_time64_to_tm(i64 %39, %struct.rtc_time* %40)
  br label %42

42:                                               ; preds = %30, %20
  ret i32 0
}

declare dso_local %struct.xlnx_rtc_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @rtc_time64_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
