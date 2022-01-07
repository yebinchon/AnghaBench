; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_pma_lane_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_pma_lane_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dp_phy = type { i64 }

@LANE_MASK = common dso_local global i32 0, align 4
@TX_PSC_A0 = common dso_local global i32 0, align 4
@TX_PSC_A2 = common dso_local global i32 0, align 4
@TX_PSC_A3 = common dso_local global i32 0, align 4
@RX_PSC_A0 = common dso_local global i32 0, align 4
@RX_PSC_A2 = common dso_local global i32 0, align 4
@RX_PSC_A3 = common dso_local global i32 0, align 4
@XCVR_DIAG_PLLDRC_CTRL = common dso_local global i32 0, align 4
@XCVR_DIAG_HSCLK_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_dp_phy*, i32)* @cdns_dp_phy_pma_lane_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dp_phy_pma_lane_cfg(%struct.cdns_dp_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.cdns_dp_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdns_dp_phy* %0, %struct.cdns_dp_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @LANE_MASK, align 4
  %8 = and i32 %6, %7
  %9 = shl i32 %8, 11
  store i32 %9, i32* %5, align 4
  %10 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %3, align 8
  %11 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @TX_PSC_A0, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %12, %16
  %18 = call i32 @writel(i32 251, i64 %17)
  %19 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %3, align 8
  %20 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @TX_PSC_A2, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = call i32 @writel(i32 1194, i64 %26)
  %28 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %3, align 8
  %29 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @TX_PSC_A3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = call i32 @writel(i32 1194, i64 %35)
  %37 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %3, align 8
  %38 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @RX_PSC_A0, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = call i32 @writel(i32 0, i64 %44)
  %46 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %3, align 8
  %47 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @RX_PSC_A2, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = call i32 @writel(i32 0, i64 %53)
  %55 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %3, align 8
  %56 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @RX_PSC_A3, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %58, %59
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = call i32 @writel(i32 0, i64 %62)
  %64 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %3, align 8
  %65 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @XCVR_DIAG_PLLDRC_CTRL, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %67, %68
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %66, %70
  %72 = call i32 @writel(i32 1, i64 %71)
  %73 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %3, align 8
  %74 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @XCVR_DIAG_HSCLK_SEL, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %76, %77
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %75, %79
  %81 = call i32 @writel(i32 0, i64 %80)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
