; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_clk_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_clk_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.serdes_am654_clk_mux = type { i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@SERDES_NUM_CLOCKS = common dso_local global i32 0, align 4
@AM654_SERDES_CTRL_CLKSEL_MASK = common dso_local global i64 0, align 8
@AM654_SERDES_CTRL_CLKSEL_SHIFT = common dso_local global i64 0, align 8
@serdes_am654_mux_table = common dso_local global i32** null, align 8
@SERDES_NUM_MUX_COMBINATIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to find the parent of %s clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @serdes_am654_clk_mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_am654_clk_mux_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.serdes_am654_clk_mux*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %20 = call %struct.serdes_am654_clk_mux* @to_serdes_am654_clk_mux(%struct.clk_hw* %19)
  store %struct.serdes_am654_clk_mux* %20, %struct.serdes_am654_clk_mux** %6, align 8
  %21 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %6, align 8
  %22 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %21, i32 0, i32 2
  %23 = load %struct.regmap*, %struct.regmap** %22, align 8
  store %struct.regmap* %23, %struct.regmap** %7, align 8
  %24 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %25 = call i8* @clk_hw_get_name(%struct.clk_hw* %24)
  store i8* %25, i8** %8, align 8
  %26 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %6, align 8
  %27 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %6, align 8
  %30 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @SERDES_NUM_CLOCKS, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  %36 = load %struct.regmap*, %struct.regmap** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @regmap_read(%struct.regmap* %36, i32 %37, i64* %14)
  %39 = load i64, i64* @AM654_SERDES_CTRL_CLKSEL_MASK, align 8
  %40 = load i64, i64* %14, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* @AM654_SERDES_CTRL_CLKSEL_SHIFT, align 8
  %43 = load i64, i64* %14, align 8
  %44 = lshr i64 %43, %42
  store i64 %44, i64* %14, align 8
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %61, %2
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @SERDES_NUM_CLOCKS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i32**, i32*** @serdes_am654_mux_table, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %35, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  br label %45

64:                                               ; preds = %45
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %35, i64 %67
  store i32 %65, i32* %68, align 4
  store i64 0, i64* %14, align 8
  br label %69

69:                                               ; preds = %103, %64
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* @SERDES_NUM_MUX_COMBINATIONS, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %106

73:                                               ; preds = %69
  %74 = load i32**, i32*** @serdes_am654_mux_table, align 8
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %13, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %95, %73
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @SERDES_NUM_CLOCKS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %35, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  store i32 0, i32* %15, align 4
  br label %98

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %78

98:                                               ; preds = %93, %78
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %106

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %14, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %14, align 8
  br label %69

106:                                              ; preds = %101, %69
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %124

114:                                              ; preds = %106
  %115 = load i64, i64* @AM654_SERDES_CTRL_CLKSEL_SHIFT, align 8
  %116 = load i64, i64* %14, align 8
  %117 = shl i64 %116, %115
  store i64 %117, i64* %14, align 8
  %118 = load %struct.regmap*, %struct.regmap** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i64, i64* @AM654_SERDES_CTRL_CLKSEL_MASK, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @regmap_update_bits(%struct.regmap* %118, i32 %119, i64 %120, i64 %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %124

124:                                              ; preds = %114, %109
  %125 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.serdes_am654_clk_mux* @to_serdes_am654_clk_mux(%struct.clk_hw*) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i64*) #1

declare dso_local i32 @WARN(i32, i8*, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
