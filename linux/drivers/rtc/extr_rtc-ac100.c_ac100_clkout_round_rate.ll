; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_clkout_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_clkout_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.clk_hw = type { i32 }

@AC100_RTC_32K_RATE = common dso_local global i64 0, align 8
@AC100_CLKOUT_DIV_WIDTH = common dso_local global i32 0, align 4
@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i32 0, align 4
@ac100_clkout_prediv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64)* @ac100_clkout_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ac100_clkout_round_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @AC100_RTC_32K_RATE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @AC100_CLKOUT_DIV_WIDTH, align 4
  %19 = load i32, i32* @CLK_DIVIDER_POWER_OF_TWO, align 4
  %20 = call i64 @divider_round_rate(%struct.clk_hw* %16, i64 %17, i64* %7, i32* null, i32 %18, i32 %19)
  store i64 %20, i64* %4, align 8
  br label %64

21:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %59, %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ac100_clkout_prediv, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ac100_clkout_prediv, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @DIV_ROUND_UP(i64 %31, i32 %37)
  store i64 %38, i64* %10, align 8
  %39 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @AC100_CLKOUT_DIV_WIDTH, align 4
  %42 = load i32, i32* @CLK_DIVIDER_POWER_OF_TWO, align 4
  %43 = call i64 @divider_round_rate(%struct.clk_hw* %39, i64 %40, i64* %10, i32* null, i32 %41, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %59

48:                                               ; preds = %30
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %49, %50
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %52, %53
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %56, %48
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %22

62:                                               ; preds = %22
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %15
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local i64 @divider_round_rate(%struct.clk_hw*, i64, i64*, i32*, i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
