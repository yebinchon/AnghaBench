; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_show_eoc_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_show_eoc_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp8788_charger = type { i32 }

@lp8788_show_eoc_level.abs_level = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"25mA\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"49mA\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"75mA\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"98mA\00", align 1
@lp8788_show_eoc_level.relative_level = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c"5%\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"10%\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"15%\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"20%\00", align 1
@LP8788_CHG_EOC = common dso_local global i32 0, align 4
@LP8788_CHG_EOC_MODE_M = common dso_local global i32 0, align 4
@LP8788_CHG_EOC_LEVEL_M = common dso_local global i32 0, align 4
@LP8788_CHG_EOC_LEVEL_S = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"End Of Charge Level: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lp8788_show_eoc_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_show_eoc_level(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lp8788_charger*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.lp8788_charger* @dev_get_drvdata(%struct.device* %11)
  store %struct.lp8788_charger* %12, %struct.lp8788_charger** %7, align 8
  %13 = load %struct.lp8788_charger*, %struct.lp8788_charger** %7, align 8
  %14 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LP8788_CHG_EOC, align 4
  %17 = call i32 @lp8788_read_byte(i32 %15, i32 %16, i32* %9)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @LP8788_CHG_EOC_MODE_M, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @LP8788_CHG_EOC_LEVEL_M, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @LP8788_CHG_EOC_LEVEL_S, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* @lp8788_show_eoc_level.abs_level, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  br label %38

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8*], [4 x i8*]* @lp8788_show_eoc_level.relative_level, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i8* [ %32, %28 ], [ %37, %33 ]
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @scnprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %42)
  ret i32 %43
}

declare dso_local %struct.lp8788_charger* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lp8788_read_byte(i32, i32, i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
