; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_spear_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_spear_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.spear_rtc_config = type { i64 }

@TIME_REG = common dso_local global i64 0, align 8
@DATE_REG = common dso_local global i64 0, align 8
@SECOND_SHIFT = common dso_local global i32 0, align 4
@SECOND_MASK = common dso_local global i32 0, align 4
@MINUTE_SHIFT = common dso_local global i32 0, align 4
@MIN_MASK = common dso_local global i32 0, align 4
@HOUR_SHIFT = common dso_local global i32 0, align 4
@HOUR_MASK = common dso_local global i32 0, align 4
@MDAY_SHIFT = common dso_local global i32 0, align 4
@DAY_MASK = common dso_local global i32 0, align 4
@MONTH_SHIFT = common dso_local global i32 0, align 4
@MONTH_MASK = common dso_local global i32 0, align 4
@YEAR_SHIFT = common dso_local global i32 0, align 4
@YEAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @spear_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.spear_rtc_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.spear_rtc_config* @dev_get_drvdata(%struct.device* %8)
  store %struct.spear_rtc_config* %9, %struct.spear_rtc_config** %5, align 8
  %10 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %11 = call i32 @rtc_wait_not_busy(%struct.spear_rtc_config* %10)
  %12 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %13 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TIME_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %19 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DATE_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SECOND_SHIFT, align 4
  %26 = lshr i32 %24, %25
  %27 = load i32, i32* @SECOND_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MINUTE_SHIFT, align 4
  %33 = lshr i32 %31, %32
  %34 = load i32, i32* @MIN_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @HOUR_SHIFT, align 4
  %40 = lshr i32 %38, %39
  %41 = load i32, i32* @HOUR_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MDAY_SHIFT, align 4
  %47 = lshr i32 %45, %46
  %48 = load i32, i32* @DAY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @MONTH_SHIFT, align 4
  %54 = lshr i32 %52, %53
  %55 = load i32, i32* @MONTH_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @YEAR_SHIFT, align 4
  %61 = lshr i32 %59, %60
  %62 = load i32, i32* @YEAR_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = call i32 @bcd2tm(%struct.rtc_time* %66)
  ret i32 0
}

declare dso_local %struct.spear_rtc_config* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_wait_not_busy(%struct.spear_rtc_config*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bcd2tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
