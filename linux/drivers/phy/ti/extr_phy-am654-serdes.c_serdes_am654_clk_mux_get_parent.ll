; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_clk_mux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_clk_mux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.serdes_am654_clk_mux = type { i32, i64, %struct.regmap* }
%struct.regmap = type { i32 }

@AM654_SERDES_CTRL_CLKSEL_MASK = common dso_local global i32 0, align 4
@AM654_SERDES_CTRL_CLKSEL_SHIFT = common dso_local global i32 0, align 4
@serdes_am654_mux_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @serdes_am654_clk_mux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_am654_clk_mux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.serdes_am654_clk_mux*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.serdes_am654_clk_mux* @to_serdes_am654_clk_mux(%struct.clk_hw* %7)
  store %struct.serdes_am654_clk_mux* %8, %struct.serdes_am654_clk_mux** %3, align 8
  %9 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %3, align 8
  %10 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %9, i32 0, i32 2
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %3, align 8
  %13 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.regmap*, %struct.regmap** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @regmap_read(%struct.regmap* %15, i32 %16, i32* %6)
  %18 = load i32, i32* @AM654_SERDES_CTRL_CLKSEL_MASK, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @AM654_SERDES_CTRL_CLKSEL_SHIFT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = lshr i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32**, i32*** @serdes_am654_mux_table, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %3, align 8
  %30 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare dso_local %struct.serdes_am654_clk_mux* @to_serdes_am654_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
