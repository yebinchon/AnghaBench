; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ipq806x-sata.c_qcom_ipq806x_sata_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ipq806x-sata.c_qcom_ipq806x_sata_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.qcom_ipq806x_sata_phy = type { i64 }

@SATA_PHY_P0_PARAM3 = common dso_local global i64 0, align 8
@SATA_PHY_SSC_EN = common dso_local global i32 0, align 4
@SATA_PHY_P0_PARAM0 = common dso_local global i64 0, align 8
@SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN3_MASK = common dso_local global i32 0, align 4
@SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN2_MASK = common dso_local global i32 0, align 4
@SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN1_MASK = common dso_local global i32 0, align 4
@SATA_PHY_P0_PARAM1 = common dso_local global i64 0, align 8
@SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN3_MASK = common dso_local global i32 0, align 4
@SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN2_MASK = common dso_local global i32 0, align 4
@SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN1_MASK = common dso_local global i32 0, align 4
@SATA_PHY_P0_PARAM2 = common dso_local global i64 0, align 8
@SATA_PHY_P0_PARAM2_RX_EQ_MASK = common dso_local global i32 0, align 4
@SATA_PHY_P0_PARAM4 = common dso_local global i64 0, align 8
@SATA_PHY_RESET = common dso_local global i32 0, align 4
@SATA_PHY_REF_SSP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @qcom_ipq806x_sata_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_ipq806x_sata_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.qcom_ipq806x_sata_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.qcom_ipq806x_sata_phy* @phy_get_drvdata(%struct.phy* %5)
  store %struct.qcom_ipq806x_sata_phy* %6, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %7 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SATA_PHY_P0_PARAM3, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SATA_PHY_SSC_EN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SATA_PHY_P0_PARAM3, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  %23 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %24 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SATA_PHY_P0_PARAM0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  %29 = load i32, i32* @SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN3_MASK, align 4
  %30 = load i32, i32* @SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN2_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN1_MASK, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %28, %34
  store i32 %35, i32* %4, align 4
  %36 = call i32 @SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN3(i32 15)
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %41 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SATA_PHY_P0_PARAM0, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  %46 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %47 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SATA_PHY_P0_PARAM1, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl_relaxed(i64 %50)
  %52 = load i32, i32* @SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN3_MASK, align 4
  %53 = load i32, i32* @SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN2_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN1_MASK, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %51, %57
  store i32 %58, i32* %4, align 4
  %59 = call i32 @SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN3(i32 85)
  %60 = call i32 @SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN2(i32 85)
  %61 = or i32 %59, %60
  %62 = call i32 @SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN1(i32 85)
  %63 = or i32 %61, %62
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %68 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SATA_PHY_P0_PARAM1, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel_relaxed(i32 %66, i64 %71)
  %73 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %74 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SATA_PHY_P0_PARAM2, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl_relaxed(i64 %77)
  %79 = load i32, i32* @SATA_PHY_P0_PARAM2_RX_EQ_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %4, align 4
  %82 = call i32 @SATA_PHY_P0_PARAM2_RX_EQ(i32 3)
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %87 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SATA_PHY_P0_PARAM2, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel_relaxed(i32 %85, i64 %90)
  %92 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %93 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SATA_PHY_P0_PARAM4, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @readl_relaxed(i64 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @SATA_PHY_RESET, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %103 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SATA_PHY_P0_PARAM4, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel_relaxed(i32 %101, i64 %106)
  %108 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %109 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SATA_PHY_P0_PARAM4, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @readl_relaxed(i64 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @SATA_PHY_REF_SSP_EN, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SATA_PHY_RESET, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %121 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SATA_PHY_P0_PARAM4, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel_relaxed(i32 %119, i64 %124)
  %126 = call i32 (...) @mb()
  %127 = call i32 @usleep_range(i32 20, i32 70)
  %128 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %129 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SATA_PHY_P0_PARAM4, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @readl_relaxed(i64 %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @SATA_PHY_RESET, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %140 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SATA_PHY_P0_PARAM4, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel_relaxed(i32 %138, i64 %143)
  ret i32 0
}

declare dso_local %struct.qcom_ipq806x_sata_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN3(i32) #1

declare dso_local i32 @SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN3(i32) #1

declare dso_local i32 @SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN2(i32) #1

declare dso_local i32 @SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN1(i32) #1

declare dso_local i32 @SATA_PHY_P0_PARAM2_RX_EQ(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
