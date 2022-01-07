; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ipq806x-sata.c_qcom_ipq806x_sata_phy_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ipq806x-sata.c_qcom_ipq806x_sata_phy_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.qcom_ipq806x_sata_phy = type { i64 }

@SATA_PHY_P0_PARAM4 = common dso_local global i64 0, align 8
@SATA_PHY_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @qcom_ipq806x_sata_phy_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_ipq806x_sata_phy_exit(%struct.phy* %0) #0 {
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
  %10 = load i64, i64* @SATA_PHY_P0_PARAM4, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SATA_PHY_RESET, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.qcom_ipq806x_sata_phy*, %struct.qcom_ipq806x_sata_phy** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_ipq806x_sata_phy, %struct.qcom_ipq806x_sata_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SATA_PHY_P0_PARAM4, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  ret i32 0
}

declare dso_local %struct.qcom_ipq806x_sata_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
