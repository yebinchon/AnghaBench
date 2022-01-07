; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_init_plls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_init_plls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_comphy_lane = type { i32, %struct.mvebu_comphy_priv* }
%struct.mvebu_comphy_priv = type { i64 }

@MVEBU_COMPHY_SERDES_CFG0_PU_PLL = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SERDES_CFG0_PU_RX = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SERDES_CFG0_PU_TX = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SERDES_STATUS0_RX_PLL_RDY = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SERDES_STATUS0_TX_PLL_RDY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SERDES_CFG1_RX_INIT = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SERDES_STATUS0_RX_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_comphy_lane*)* @mvebu_comphy_init_plls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_comphy_init_plls(%struct.mvebu_comphy_lane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvebu_comphy_lane*, align 8
  %4 = alloca %struct.mvebu_comphy_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mvebu_comphy_lane* %0, %struct.mvebu_comphy_lane** %3, align 8
  %6 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %7 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %6, i32 0, i32 1
  %8 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %7, align 8
  store %struct.mvebu_comphy_priv* %8, %struct.mvebu_comphy_priv** %4, align 8
  %9 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %13 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @MVEBU_COMPHY_SERDES_CFG0(i32 %14)
  %16 = add nsw i64 %11, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @MVEBU_COMPHY_SERDES_CFG0_PU_PLL, align 4
  %19 = load i32, i32* @MVEBU_COMPHY_SERDES_CFG0_PU_RX, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MVEBU_COMPHY_SERDES_CFG0_PU_TX, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %30 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @MVEBU_COMPHY_SERDES_CFG0(i32 %31)
  %33 = add nsw i64 %28, %32
  %34 = call i32 @writel(i32 %25, i64 %33)
  %35 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %39 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @MVEBU_COMPHY_SERDES_STATUS0(i32 %40)
  %42 = add nsw i64 %37, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MVEBU_COMPHY_SERDES_STATUS0_RX_PLL_RDY, align 4
  %46 = load i32, i32* @MVEBU_COMPHY_SERDES_STATUS0_TX_PLL_RDY, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = call i32 @readl_poll_timeout(i64 %42, i32 %43, i32 %48, i32 1000, i32 150000)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MVEBU_COMPHY_SERDES_STATUS0_RX_PLL_RDY, align 4
  %52 = load i32, i32* @MVEBU_COMPHY_SERDES_STATUS0_TX_PLL_RDY, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %1
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %126

59:                                               ; preds = %1
  %60 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %61 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %64 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @MVEBU_COMPHY_SERDES_CFG1(i32 %65)
  %67 = add nsw i64 %62, %66
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @MVEBU_COMPHY_SERDES_CFG1_RX_INIT, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %74 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %77 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @MVEBU_COMPHY_SERDES_CFG1(i32 %78)
  %80 = add nsw i64 %75, %79
  %81 = call i32 @writel(i32 %72, i64 %80)
  %82 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %83 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %86 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @MVEBU_COMPHY_SERDES_STATUS0(i32 %87)
  %89 = add nsw i64 %84, %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @MVEBU_COMPHY_SERDES_STATUS0_RX_INIT, align 4
  %93 = and i32 %91, %92
  %94 = call i32 @readl_poll_timeout(i64 %89, i32 %90, i32 %93, i32 1000, i32 10000)
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @MVEBU_COMPHY_SERDES_STATUS0_RX_INIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %59
  %100 = load i32, i32* @ETIMEDOUT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %126

102:                                              ; preds = %59
  %103 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %104 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %107 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @MVEBU_COMPHY_SERDES_CFG1(i32 %108)
  %110 = add nsw i64 %105, %109
  %111 = call i32 @readl(i64 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @MVEBU_COMPHY_SERDES_CFG1_RX_INIT, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %118 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %121 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @MVEBU_COMPHY_SERDES_CFG1(i32 %122)
  %124 = add nsw i64 %119, %123
  %125 = call i32 @writel(i32 %116, i64 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %102, %99, %56
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @MVEBU_COMPHY_SERDES_CFG0(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i64 @MVEBU_COMPHY_SERDES_STATUS0(i32) #1

declare dso_local i64 @MVEBU_COMPHY_SERDES_CFG1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
