; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_spear_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_spear_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.spear_rtc_config = type { i64 }

@SECOND_SHIFT = common dso_local global i32 0, align 4
@MINUTE_SHIFT = common dso_local global i32 0, align 4
@HOUR_SHIFT = common dso_local global i32 0, align 4
@MDAY_SHIFT = common dso_local global i32 0, align 4
@MONTH_SHIFT = common dso_local global i32 0, align 4
@YEAR_SHIFT = common dso_local global i32 0, align 4
@TIME_REG = common dso_local global i64 0, align 8
@DATE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @spear_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %10 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %11 = call i32 @tm2bcd(%struct.rtc_time* %10)
  %12 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %13 = call i32 @rtc_wait_not_busy(%struct.spear_rtc_config* %12)
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SECOND_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MINUTE_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %18, %23
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HOUR_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %24, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MDAY_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MONTH_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %35, %40
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @YEAR_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %41, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %50 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TIME_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %57 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DATE_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %63 = call i32 @is_write_complete(%struct.spear_rtc_config* %62)
  ret i32 %63
}

declare dso_local %struct.spear_rtc_config* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tm2bcd(%struct.rtc_time*) #1

declare dso_local i32 @rtc_wait_not_busy(%struct.spear_rtc_config*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @is_write_complete(%struct.spear_rtc_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
