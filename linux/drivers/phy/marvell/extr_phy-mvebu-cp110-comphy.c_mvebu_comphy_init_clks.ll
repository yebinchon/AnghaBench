; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_init_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_init_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_comphy_priv = type { i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"mg_clk\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mg_core_clk\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"axi_clk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_comphy_priv*)* @mvebu_comphy_init_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_comphy_init_clks(%struct.mvebu_comphy_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvebu_comphy_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mvebu_comphy_priv* %0, %struct.mvebu_comphy_priv** %3, align 8
  %5 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %6 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @devm_clk_get(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %10, i32 0, i32 2
  store i32* %9, i32** %11, align 8
  %12 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @IS_ERR(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @PTR_ERR(i32* %20)
  store i32 %21, i32* %2, align 4
  br label %101

22:                                               ; preds = %1
  %23 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @clk_prepare_enable(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %101

31:                                               ; preds = %22
  %32 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @devm_clk_get(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @IS_ERR(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %46 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  store i32 %48, i32* %4, align 4
  br label %89

49:                                               ; preds = %31
  %50 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @clk_prepare_enable(i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %89

57:                                               ; preds = %49
  %58 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @devm_clk_get(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %64 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %66 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @IS_ERR(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %72 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @PTR_ERR(i32* %73)
  store i32 %74, i32* %4, align 4
  br label %84

75:                                               ; preds = %57
  %76 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %77 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @clk_prepare_enable(i32* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %101

84:                                               ; preds = %82, %70
  %85 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %86 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @clk_disable_unprepare(i32* %87)
  br label %89

89:                                               ; preds = %84, %56, %44
  %90 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %91 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @clk_disable_unprepare(i32* %92)
  %94 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %95 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %94, i32 0, i32 2
  store i32* null, i32** %95, align 8
  %96 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %97 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  %98 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %3, align 8
  %99 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %89, %83, %29, %17
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
