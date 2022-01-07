; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_clkout_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_clkout_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ac100_clkout = type { i32, i32 }

@AC100_CLKOUT_MUX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @ac100_clkout_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac100_clkout_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.ac100_clkout*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.ac100_clkout* @to_ac100_clkout(%struct.clk_hw* %5)
  store %struct.ac100_clkout* %6, %struct.ac100_clkout** %3, align 8
  %7 = load %struct.ac100_clkout*, %struct.ac100_clkout** %3, align 8
  %8 = getelementptr inbounds %struct.ac100_clkout, %struct.ac100_clkout* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ac100_clkout*, %struct.ac100_clkout** %3, align 8
  %11 = getelementptr inbounds %struct.ac100_clkout, %struct.ac100_clkout* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_read(i32 %9, i32 %12, i32* %4)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AC100_CLKOUT_MUX_SHIFT, align 4
  %16 = lshr i32 %14, %15
  %17 = and i32 %16, 1
  ret i32 %17
}

declare dso_local %struct.ac100_clkout* @to_ac100_clkout(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
