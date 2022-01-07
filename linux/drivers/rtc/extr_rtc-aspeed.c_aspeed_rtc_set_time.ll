; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-aspeed.c_aspeed_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-aspeed.c_aspeed_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.aspeed_rtc = type { i64 }

@RTC_CTRL = common dso_local global i64 0, align 8
@RTC_UNLOCK = common dso_local global i32 0, align 4
@RTC_TIME = common dso_local global i64 0, align 8
@RTC_YEAR = common dso_local global i64 0, align 8
@RTC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @aspeed_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.aspeed_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.aspeed_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.aspeed_rtc* %12, %struct.aspeed_rtc** %5, align 8
  %13 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1900
  %17 = sdiv i32 %16, 100
  store i32 %17, i32* %10, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 100
  store i32 %21, i32* %9, align 4
  %22 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 24
  %26 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %25, %29
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %30, %34
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 31
  %42 = shl i32 %41, 16
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 127
  %45 = shl i32 %44, 8
  %46 = or i32 %42, %45
  %47 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  %51 = and i32 %50, 15
  %52 = or i32 %46, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %5, align 8
  %54 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RTC_CTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @RTC_UNLOCK, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %5, align 8
  %63 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RTC_CTRL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %5, align 8
  %70 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RTC_TIME, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %5, align 8
  %77 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RTC_YEAR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @RTC_ENABLE, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %5, align 8
  %86 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RTC_CTRL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 %84, i64 %89)
  ret i32 0
}

declare dso_local %struct.aspeed_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
