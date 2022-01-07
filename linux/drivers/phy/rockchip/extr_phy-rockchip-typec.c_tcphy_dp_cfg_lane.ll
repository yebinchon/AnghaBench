; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_dp_cfg_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_dp_cfg_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_typec_phy = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_typec_phy*, i32)* @tcphy_dp_cfg_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcphy_dp_cfg_lane(%struct.rockchip_typec_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_typec_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @XCVR_PSM_RCTRL(i32 %9)
  %11 = add nsw i64 %8, %10
  %12 = call i32 @writel(i32 48892, i64 %11)
  %13 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %14 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @TX_PSC_A0(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = call i32 @writel(i32 26521, i64 %18)
  %20 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %21 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @TX_PSC_A1(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i32 @writel(i32 26520, i64 %25)
  %27 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %28 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @TX_PSC_A2(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @writel(i32 152, i64 %32)
  %34 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %35 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @TX_PSC_A3(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @writel(i32 152, i64 %39)
  %41 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %42 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @TX_TXCC_MGNFS_MULT_000(i32 %44)
  %46 = add nsw i64 %43, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  %48 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %49 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @TX_TXCC_MGNFS_MULT_001(i32 %51)
  %53 = add nsw i64 %50, %52
  %54 = call i32 @writel(i32 0, i64 %53)
  %55 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %56 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @TX_TXCC_MGNFS_MULT_010(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = call i32 @writel(i32 0, i64 %60)
  %62 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %63 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @TX_TXCC_MGNFS_MULT_011(i32 %65)
  %67 = add nsw i64 %64, %66
  %68 = call i32 @writel(i32 0, i64 %67)
  %69 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %70 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @TX_TXCC_MGNFS_MULT_100(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @writel(i32 0, i64 %74)
  %76 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %77 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @TX_TXCC_MGNFS_MULT_101(i32 %79)
  %81 = add nsw i64 %78, %80
  %82 = call i32 @writel(i32 0, i64 %81)
  %83 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %84 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @TX_TXCC_MGNFS_MULT_110(i32 %86)
  %88 = add nsw i64 %85, %87
  %89 = call i32 @writel(i32 0, i64 %88)
  %90 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %91 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @TX_TXCC_MGNFS_MULT_111(i32 %93)
  %95 = add nsw i64 %92, %94
  %96 = call i32 @writel(i32 0, i64 %95)
  %97 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %98 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i64 @TX_TXCC_CPOST_MULT_10(i32 %100)
  %102 = add nsw i64 %99, %101
  %103 = call i32 @writel(i32 0, i64 %102)
  %104 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %105 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @TX_TXCC_CPOST_MULT_01(i32 %107)
  %109 = add nsw i64 %106, %108
  %110 = call i32 @writel(i32 0, i64 %109)
  %111 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %112 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i64 @TX_TXCC_CPOST_MULT_00(i32 %114)
  %116 = add nsw i64 %113, %115
  %117 = call i32 @writel(i32 0, i64 %116)
  %118 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %119 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i64 @TX_TXCC_CPOST_MULT_11(i32 %121)
  %123 = add nsw i64 %120, %122
  %124 = call i32 @writel(i32 0, i64 %123)
  %125 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %126 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i64 @TX_TXCC_CAL_SCLR_MULT(i32 %128)
  %130 = add nsw i64 %127, %129
  %131 = call i32 @writel(i32 296, i64 %130)
  %132 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %133 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i64 @TX_DIAG_TX_DRV(i32 %135)
  %137 = add nsw i64 %134, %136
  %138 = call i32 @writel(i32 1024, i64 %137)
  %139 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %140 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i64 @XCVR_DIAG_PLLDRC_CTRL(i32 %142)
  %144 = add nsw i64 %141, %143
  %145 = call i32 @readl(i64 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, 36863
  %148 = or i32 %147, 24576
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %151 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i64 @XCVR_DIAG_PLLDRC_CTRL(i32 %153)
  %155 = add nsw i64 %152, %154
  %156 = call i32 @writel(i32 %149, i64 %155)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @XCVR_PSM_RCTRL(i32) #1

declare dso_local i64 @TX_PSC_A0(i32) #1

declare dso_local i64 @TX_PSC_A1(i32) #1

declare dso_local i64 @TX_PSC_A2(i32) #1

declare dso_local i64 @TX_PSC_A3(i32) #1

declare dso_local i64 @TX_TXCC_MGNFS_MULT_000(i32) #1

declare dso_local i64 @TX_TXCC_MGNFS_MULT_001(i32) #1

declare dso_local i64 @TX_TXCC_MGNFS_MULT_010(i32) #1

declare dso_local i64 @TX_TXCC_MGNFS_MULT_011(i32) #1

declare dso_local i64 @TX_TXCC_MGNFS_MULT_100(i32) #1

declare dso_local i64 @TX_TXCC_MGNFS_MULT_101(i32) #1

declare dso_local i64 @TX_TXCC_MGNFS_MULT_110(i32) #1

declare dso_local i64 @TX_TXCC_MGNFS_MULT_111(i32) #1

declare dso_local i64 @TX_TXCC_CPOST_MULT_10(i32) #1

declare dso_local i64 @TX_TXCC_CPOST_MULT_01(i32) #1

declare dso_local i64 @TX_TXCC_CPOST_MULT_00(i32) #1

declare dso_local i64 @TX_TXCC_CPOST_MULT_11(i32) #1

declare dso_local i64 @TX_TXCC_CAL_SCLR_MULT(i32) #1

declare dso_local i64 @TX_DIAG_TX_DRV(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @XCVR_DIAG_PLLDRC_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
