; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_show_eoc_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_show_eoc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp8788_charger = type { i32 }

@lp8788_show_eoc_time.stime = internal constant [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"400ms\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"5min\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"10min\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"15min\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"20min\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"25min\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"30min\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"No timeout\00", align 1
@LP8788_CHG_EOC = common dso_local global i32 0, align 4
@LP8788_CHG_EOC_TIME_M = common dso_local global i64 0, align 8
@LP8788_CHG_EOC_TIME_S = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"End Of Charge Time: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lp8788_show_eoc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_show_eoc_time(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lp8788_charger*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.lp8788_charger* @dev_get_drvdata(%struct.device* %9)
  store %struct.lp8788_charger* %10, %struct.lp8788_charger** %7, align 8
  %11 = load %struct.lp8788_charger*, %struct.lp8788_charger** %7, align 8
  %12 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LP8788_CHG_EOC, align 4
  %15 = call i32 @lp8788_read_byte(i32 %13, i32 %14, i64* %8)
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @LP8788_CHG_EOC_TIME_M, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @LP8788_CHG_EOC_TIME_S, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds [8 x i8*], [8 x i8*]* @lp8788_show_eoc_time.stime, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @scnprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %25)
  ret i32 %26
}

declare dso_local %struct.lp8788_charger* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lp8788_read_byte(i32, i32, i64*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
