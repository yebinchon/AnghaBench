; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_fg_info = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AXP288_FG_INTR_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"spurious interrupt!!\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Quit Battery under temperature in work mode IRQ (QWBTU)\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Battery under temperature in work mode IRQ (WBTU)\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Quit Battery over temperature in work mode IRQ (QWBTO)\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Battery over temperature in work mode IRQ (WBTO)\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Low Batt Warning(2) INTR\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Low Batt Warning(1) INTR\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Spurious Interrupt!!!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fuel_gauge_thread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuel_gauge_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.axp288_fg_info*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.axp288_fg_info*
  store %struct.axp288_fg_info* %9, %struct.axp288_fg_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @AXP288_FG_INTR_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %16 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %10

29:                                               ; preds = %24, %10
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AXP288_FG_INTR_NUM, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %35 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %90

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %78 [
    i32 132, label %42
    i32 130, label %48
    i32 133, label %54
    i32 131, label %60
    i32 128, label %66
    i32 129, label %72
  ]

42:                                               ; preds = %40
  %43 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %44 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %84

48:                                               ; preds = %40
  %49 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %50 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %84

54:                                               ; preds = %40
  %55 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %56 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %84

60:                                               ; preds = %40
  %61 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %62 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @dev_info(i32* %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %84

66:                                               ; preds = %40
  %67 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %68 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @dev_info(i32* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %84

72:                                               ; preds = %40
  %73 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %74 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @dev_info(i32* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %84

78:                                               ; preds = %40
  %79 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %80 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @dev_warn(i32* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %72, %66, %60, %54, %48, %42
  %85 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %86 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @power_supply_changed(i32 %87)
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %33
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
