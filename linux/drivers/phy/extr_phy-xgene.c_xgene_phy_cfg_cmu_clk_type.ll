; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_cfg_cmu_clk_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_cfg_cmu_clk_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_phy_ctx = type { i32 }

@CMU_REG12 = common dso_local global i32 0, align 4
@CMU_REG13 = common dso_local global i32 0, align 4
@CMU_REG14 = common dso_local global i32 0, align 4
@CLK_EXT_DIFF = common dso_local global i32 0, align 4
@CMU_REG0 = common dso_local global i32 0, align 4
@CMU_REG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Set external reference clock\0A\00", align 1
@CLK_INT_DIFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Set internal reference clock\0A\00", align 1
@CLK_INT_SING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Set internal single ended reference clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_phy_ctx*, i32, i32)* @xgene_phy_cfg_cmu_clk_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_phy_cfg_cmu_clk_type(%struct.xgene_phy_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xgene_phy_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgene_phy_ctx* %0, %struct.xgene_phy_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CMU_REG12, align 4
  %11 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %8, i32 %9, i32 %10, i32* %7)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @CMU_REG12_STATE_DELAY9_SET(i32 %12, i32 1)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CMU_REG12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CMU_REG13, align 4
  %22 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %19, i32 %20, i32 %21, i32 546)
  %23 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CMU_REG14, align 4
  %26 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %23, i32 %24, i32 %25, i32 8741)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @CLK_EXT_DIFF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %3
  %31 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CMU_REG0, align 4
  %34 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %31, i32 %32, i32 %33, i32* %7)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @CMU_REG0_PLL_REF_SEL_SET(i32 %35, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CMU_REG0, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CMU_REG1, align 4
  %45 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %42, i32 %43, i32 %44, i32* %7)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @CMU_REG1_REFCLK_CMOS_SEL_SET(i32 %46, i32 0)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CMU_REG1, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %121

57:                                               ; preds = %3
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CLK_INT_DIFF, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @CMU_REG0, align 4
  %65 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %62, i32 %63, i32 %64, i32* %7)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @CMU_REG0_PLL_REF_SEL_SET(i32 %66, i32 1)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @CMU_REG0, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @CMU_REG1, align 4
  %76 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %73, i32 %74, i32 %75, i32* %7)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @CMU_REG1_REFCLK_CMOS_SEL_SET(i32 %77, i32 1)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @CMU_REG1, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %120

88:                                               ; preds = %57
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @CLK_INT_SING, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %88
  %93 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @CMU_REG1, align 4
  %96 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %93, i32 %94, i32 %95, i32* %7)
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @CMU_REG1_REFCLK_CMOS_SEL_SET(i32 %97, i32 1)
  store i32 %98, i32* %7, align 4
  %99 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @CMU_REG1, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @CMU_REG1, align 4
  %107 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %104, i32 %105, i32 %106, i32* %7)
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @CMU_REG1_REFCLK_CMOS_SEL_SET(i32 %108, i32 0)
  store i32 %109, i32* %7, align 4
  %110 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @CMU_REG1, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %116 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_dbg(i32 %117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %92, %88
  br label %120

120:                                              ; preds = %119, %61
  br label %121

121:                                              ; preds = %120, %30
  ret void
}

declare dso_local i32 @cmu_rd(%struct.xgene_phy_ctx*, i32, i32, i32*) #1

declare dso_local i32 @CMU_REG12_STATE_DELAY9_SET(i32, i32) #1

declare dso_local i32 @cmu_wr(%struct.xgene_phy_ctx*, i32, i32, i32) #1

declare dso_local i32 @CMU_REG0_PLL_REF_SEL_SET(i32, i32) #1

declare dso_local i32 @CMU_REG1_REFCLK_CMOS_SEL_SET(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
