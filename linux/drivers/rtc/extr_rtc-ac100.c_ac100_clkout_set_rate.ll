; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_clkout_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_clkout_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.clk_hw = type { i32 }
%struct.ac100_clkout = type { i32, i32 }

@ac100_clkout_prediv = common dso_local global %struct.TYPE_2__* null, align 8
@AC100_CLKOUT_DIV_WIDTH = common dso_local global i32 0, align 4
@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i32 0, align 4
@AC100_RTC_32K_RATE = common dso_local global i64 0, align 8
@AC100_CLKOUT_DIV_SHIFT = common dso_local global i32 0, align 4
@AC100_CLKOUT_PRE_DIV_WIDTH = common dso_local global i32 0, align 4
@AC100_CLKOUT_PRE_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @ac100_clkout_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac100_clkout_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ac100_clkout*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.ac100_clkout* @to_ac100_clkout(%struct.clk_hw* %11)
  store %struct.ac100_clkout* %12, %struct.ac100_clkout** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %43, %3
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ac100_clkout_prediv, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = mul i64 %14, %20
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @AC100_CLKOUT_DIV_WIDTH, align 4
  %24 = load i32, i32* @CLK_DIVIDER_POWER_OF_TWO, align 4
  %25 = call i32 @divider_get_val(i64 %21, i64 %22, i32* null, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  br label %45

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @AC100_RTC_32K_RATE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ac100_clkout_prediv, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %34, %30
  %44 = phi i1 [ false, %30 ], [ %42, %34 ]
  br i1 %44, label %13, label %45

45:                                               ; preds = %43, %28
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %84

50:                                               ; preds = %45
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ac100_clkout_prediv, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %10, align 4
  %57 = load %struct.ac100_clkout*, %struct.ac100_clkout** %8, align 8
  %58 = getelementptr inbounds %struct.ac100_clkout, %struct.ac100_clkout* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ac100_clkout*, %struct.ac100_clkout** %8, align 8
  %61 = getelementptr inbounds %struct.ac100_clkout, %struct.ac100_clkout* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AC100_CLKOUT_DIV_WIDTH, align 4
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* @AC100_CLKOUT_DIV_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* @AC100_CLKOUT_PRE_DIV_WIDTH, align 4
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* @AC100_CLKOUT_PRE_DIV_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %67, %72
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* @AC100_CLKOUT_DIV_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* @AC100_CLKOUT_PRE_DIV_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %77, %81
  %83 = call i32 @regmap_update_bits(i32 %59, i32 %62, i32 %73, i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %50, %48
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.ac100_clkout* @to_ac100_clkout(%struct.clk_hw*) #1

declare dso_local i32 @divider_get_val(i64, i64, i32*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
