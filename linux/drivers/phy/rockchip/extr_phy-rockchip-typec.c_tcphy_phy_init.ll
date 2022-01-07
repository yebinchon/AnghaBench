; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_typec_phy = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.rockchip_usb3phy_port_cfg* }
%struct.rockchip_usb3phy_port_cfg = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to prepare_enable core clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to prepare_enable ref clock\0A\00", align 1
@MODE_DFP_DP = common dso_local global i64 0, align 8
@PIN_ASSIGN_C_E = common dso_local global i32 0, align 4
@PMA_LANE_CFG = common dso_local global i64 0, align 8
@PIN_ASSIGN_D_F = common dso_local global i32 0, align 4
@DP_MODE_ENTER_A2 = common dso_local global i32 0, align 4
@DP_MODE_CTL = common dso_local global i64 0, align 8
@readl = common dso_local global i32 0, align 4
@PMA_CMN_CTRL1 = common dso_local global i64 0, align 8
@CMN_READY = common dso_local global i32 0, align 4
@PHY_MODE_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"wait pma ready timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_typec_phy*, i64)* @tcphy_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcphy_phy_init(%struct.rockchip_typec_phy* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_typec_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rockchip_usb3phy_port_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %11 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %10, i32 0, i32 8
  %12 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %11, align 8
  store %struct.rockchip_usb3phy_port_cfg* %12, %struct.rockchip_usb3phy_port_cfg** %6, align 8
  %13 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %14 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_prepare_enable(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %21 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %169

25:                                               ; preds = %2
  %26 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_prepare_enable(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %34 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %163

37:                                               ; preds = %25
  %38 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %39 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @reset_control_deassert(i32 %40)
  %42 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %43 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %6, align 8
  %44 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, %struct.rockchip_usb3phy_port_cfg* %43, i32 0, i32 0
  %45 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %46 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @property_enable(%struct.rockchip_typec_phy* %42, i32* %44, i64 %47)
  %49 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %50 = call i32 @tcphy_dp_aux_set_flip(%struct.rockchip_typec_phy* %49)
  %51 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %52 = call i32 @tcphy_cfg_24m(%struct.rockchip_typec_phy* %51)
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @MODE_DFP_DP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %37
  %57 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %58 = call i32 @tcphy_cfg_dp_pll(%struct.rockchip_typec_phy* %57)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %66, %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @tcphy_dp_cfg_lane(%struct.rockchip_typec_phy* %63, i32 %64)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %59

69:                                               ; preds = %59
  %70 = load i32, i32* @PIN_ASSIGN_C_E, align 4
  %71 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %72 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PMA_LANE_CFG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  br label %112

77:                                               ; preds = %37
  %78 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %79 = call i32 @tcphy_cfg_usb3_pll(%struct.rockchip_typec_phy* %78)
  %80 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %81 = call i32 @tcphy_cfg_dp_pll(%struct.rockchip_typec_phy* %80)
  %82 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %83 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %88 = call i32 @tcphy_tx_usb3_cfg_lane(%struct.rockchip_typec_phy* %87, i32 3)
  %89 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %90 = call i32 @tcphy_rx_usb3_cfg_lane(%struct.rockchip_typec_phy* %89, i32 2)
  %91 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %92 = call i32 @tcphy_dp_cfg_lane(%struct.rockchip_typec_phy* %91, i32 0)
  %93 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %94 = call i32 @tcphy_dp_cfg_lane(%struct.rockchip_typec_phy* %93, i32 1)
  br label %104

95:                                               ; preds = %77
  %96 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %97 = call i32 @tcphy_tx_usb3_cfg_lane(%struct.rockchip_typec_phy* %96, i32 0)
  %98 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %99 = call i32 @tcphy_rx_usb3_cfg_lane(%struct.rockchip_typec_phy* %98, i32 1)
  %100 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %101 = call i32 @tcphy_dp_cfg_lane(%struct.rockchip_typec_phy* %100, i32 2)
  %102 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %103 = call i32 @tcphy_dp_cfg_lane(%struct.rockchip_typec_phy* %102, i32 3)
  br label %104

104:                                              ; preds = %95, %86
  %105 = load i32, i32* @PIN_ASSIGN_D_F, align 4
  %106 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %107 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PMA_LANE_CFG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  br label %112

112:                                              ; preds = %104, %69
  %113 = load i32, i32* @DP_MODE_ENTER_A2, align 4
  %114 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %115 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DP_MODE_CTL, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %113, i64 %118)
  %120 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %121 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @reset_control_deassert(i32 %122)
  %124 = load i32, i32* @readl, align 4
  %125 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %126 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PMA_CMN_CTRL1, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @CMN_READY, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @PHY_MODE_SET_TIMEOUT, align 4
  %135 = call i32 @readx_poll_timeout(i32 %124, i64 %129, i32 %130, i32 %133, i32 10, i32 %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %112
  %139 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %140 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @ETIMEDOUT, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  br label %150

145:                                              ; preds = %112
  %146 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %147 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @reset_control_deassert(i32 %148)
  store i32 0, i32* %3, align 4
  br label %169

150:                                              ; preds = %138
  %151 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %152 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @reset_control_assert(i32 %153)
  %155 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %156 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @reset_control_assert(i32 %157)
  %159 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %160 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @clk_disable_unprepare(i32 %161)
  br label %163

163:                                              ; preds = %150, %32
  %164 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %165 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @clk_disable_unprepare(i32 %166)
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %163, %145, %19
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @property_enable(%struct.rockchip_typec_phy*, i32*, i64) #1

declare dso_local i32 @tcphy_dp_aux_set_flip(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @tcphy_cfg_24m(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @tcphy_cfg_dp_pll(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @tcphy_dp_cfg_lane(%struct.rockchip_typec_phy*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tcphy_cfg_usb3_pll(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @tcphy_tx_usb3_cfg_lane(%struct.rockchip_typec_phy*, i32) #1

declare dso_local i32 @tcphy_rx_usb3_cfg_lane(%struct.rockchip_typec_phy*, i32) #1

declare dso_local i32 @readx_poll_timeout(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
