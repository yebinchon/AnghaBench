; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_gettime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.sunxi_rtc_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SUNXI_RTC_YMD = common dso_local global i64 0, align 8
@SUNXI_RTC_HMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @sunxi_rtc_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_rtc_gettime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.sunxi_rtc_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.sunxi_rtc_dev* @dev_get_drvdata(%struct.device* %8)
  store %struct.sunxi_rtc_dev* %9, %struct.sunxi_rtc_dev** %5, align 8
  br label %10

10:                                               ; preds = %41, %2
  %11 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %5, align 8
  %12 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SUNXI_RTC_YMD, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %5, align 8
  %18 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SUNXI_RTC_HMS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readl(i64 %21)
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %5, align 8
  %26 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SUNXI_RTC_YMD, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @readl(i64 %29)
  %31 = icmp ne i64 %24, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %5, align 8
  %35 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SUNXI_RTC_HMS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i64 @readl(i64 %38)
  %40 = icmp ne i64 %33, %39
  br label %41

41:                                               ; preds = %32, %23
  %42 = phi i1 [ true, %23 ], [ %40, %32 ]
  br i1 %42, label %10, label %43

43:                                               ; preds = %41
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @SUNXI_TIME_GET_SEC_VALUE(i64 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @SUNXI_TIME_GET_MIN_VALUE(i64 %48)
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @SUNXI_TIME_GET_HOUR_VALUE(i64 %52)
  %54 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @SUNXI_DATE_GET_DAY_VALUE(i64 %56)
  %58 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @SUNXI_DATE_GET_MON_VALUE(i64 %60)
  %62 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %5, align 8
  %66 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SUNXI_DATE_GET_YEAR_VALUE(i64 %64, i32 %69)
  %71 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %5, align 8
  %78 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = call i64 @SUNXI_YEAR_OFF(%struct.TYPE_2__* %79)
  %81 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  ret i32 0
}

declare dso_local %struct.sunxi_rtc_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @SUNXI_TIME_GET_SEC_VALUE(i64) #1

declare dso_local i32 @SUNXI_TIME_GET_MIN_VALUE(i64) #1

declare dso_local i32 @SUNXI_TIME_GET_HOUR_VALUE(i64) #1

declare dso_local i32 @SUNXI_DATE_GET_DAY_VALUE(i64) #1

declare dso_local i32 @SUNXI_DATE_GET_MON_VALUE(i64) #1

declare dso_local i32 @SUNXI_DATE_GET_YEAR_VALUE(i64, i32) #1

declare dso_local i64 @SUNXI_YEAR_OFF(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
