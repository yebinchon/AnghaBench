; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-utmi.c_mvebu_a3700_utmi_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-utmi.c_mvebu_a3700_utmi_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.device }
%struct.device = type { i32 }
%struct.mvebu_a3700_utmi = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB2_PHY_PLL_CTRL_REG0 = common dso_local global i64 0, align 8
@PLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@PLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@PLL_SEL_LPFR_MASK = common dso_local global i32 0, align 4
@PLL_REF_DIV_5 = common dso_local global i32 0, align 4
@PLL_REF_DIV_OFF = common dso_local global i32 0, align 4
@PLL_FB_DIV_96 = common dso_local global i32 0, align 4
@PLL_FB_DIV_OFF = common dso_local global i32 0, align 4
@RB_USB2PHY_PU = common dso_local global i32 0, align 4
@USB2_PHY_OTG_CTRL = common dso_local global i64 0, align 8
@PHY_PU_OTG = common dso_local global i32 0, align 4
@USB2_PHY_CHRGR_DETECT = common dso_local global i64 0, align 8
@PHY_CDP_EN = common dso_local global i32 0, align 4
@PHY_DCP_EN = common dso_local global i32 0, align 4
@PHY_PD_EN = common dso_local global i32 0, align 4
@PHY_PU_CHRG_DTC = common dso_local global i32 0, align 4
@PHY_CDP_DM_AUTO = common dso_local global i32 0, align 4
@PHY_ENSWITCH_DP = common dso_local global i32 0, align 4
@PHY_ENSWITCH_DM = common dso_local global i32 0, align 4
@USB2_DP_PULLDN_DEV_MODE = common dso_local global i32 0, align 4
@USB2_DM_PULLDN_DEV_MODE = common dso_local global i32 0, align 4
@USB2_PHY_CAL_CTRL = common dso_local global i64 0, align 8
@PHY_PLLCAL_DONE = common dso_local global i32 0, align 4
@PLL_LOCK_DELAY_US = common dso_local global i32 0, align 4
@PLL_LOCK_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to end USB2 PLL calibration\0A\00", align 1
@PHY_IMPCAL_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to end USB2 impedance calibration\0A\00", align 1
@USB2_RX_CHAN_CTRL1 = common dso_local global i64 0, align 8
@USB2PHY_SQCAL_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to end USB2 unknown calibration\0A\00", align 1
@PLL_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to lock USB2 PLL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mvebu_a3700_utmi_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_a3700_utmi_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.mvebu_a3700_utmi*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.mvebu_a3700_utmi* @phy_get_drvdata(%struct.phy* %9)
  store %struct.mvebu_a3700_utmi* %10, %struct.mvebu_a3700_utmi** %4, align 8
  %11 = load %struct.phy*, %struct.phy** %3, align 8
  %12 = getelementptr inbounds %struct.phy, %struct.phy* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %14 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %19 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USB2_PHY_PLL_CTRL_REG0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @PLL_REF_DIV_MASK, align 4
  %25 = load i32, i32* @PLL_FB_DIV_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PLL_SEL_LPFR_MASK, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @PLL_REF_DIV_5, align 4
  %33 = load i32, i32* @PLL_REF_DIV_OFF, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @PLL_FB_DIV_96, align 4
  %36 = load i32, i32* @PLL_FB_DIV_OFF, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %34, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %43 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @USB2_PHY_PLL_CTRL_REG0, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %49 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @USB2_PHY_CTRL(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @RB_USB2PHY_SUSPM(i32 %53)
  %55 = load i32, i32* @RB_USB2PHY_PU, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @RB_USB2PHY_SUSPM(i32 %57)
  %59 = load i32, i32* @RB_USB2PHY_PU, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @regmap_update_bits(i32 %50, i32 %52, i32 %56, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %119

64:                                               ; preds = %1
  %65 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %66 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @USB2_PHY_OTG_CTRL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @PHY_PU_OTG, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %76 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @USB2_PHY_OTG_CTRL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %82 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @USB2_PHY_CHRGR_DETECT, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl(i64 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @PHY_CDP_EN, align 4
  %88 = load i32, i32* @PHY_DCP_EN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PHY_PD_EN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PHY_PU_CHRG_DTC, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @PHY_CDP_DM_AUTO, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @PHY_ENSWITCH_DP, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @PHY_ENSWITCH_DM, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %105 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @USB2_PHY_CHRGR_DETECT, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  %110 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %111 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @USB2_PHY_CTRL(i32 %113)
  %115 = load i32, i32* @USB2_DP_PULLDN_DEV_MODE, align 4
  %116 = load i32, i32* @USB2_DM_PULLDN_DEV_MODE, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @regmap_update_bits(i32 %112, i32 %114, i32 %117, i32 0)
  br label %119

119:                                              ; preds = %64, %1
  %120 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %121 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @USB2_PHY_CAL_CTRL, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @PHY_PLLCAL_DONE, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @PLL_LOCK_DELAY_US, align 4
  %130 = load i32, i32* @PLL_LOCK_TIMEOUT_US, align 4
  %131 = call i32 @readl_poll_timeout(i64 %124, i32 %125, i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %119
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = call i32 @dev_err(%struct.device* %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %196

138:                                              ; preds = %119
  %139 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %140 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @USB2_PHY_CAL_CTRL, align 8
  %143 = add nsw i64 %141, %142
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @PHY_IMPCAL_DONE, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @PLL_LOCK_DELAY_US, align 4
  %149 = load i32, i32* @PLL_LOCK_TIMEOUT_US, align 4
  %150 = call i32 @readl_poll_timeout(i64 %143, i32 %144, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %138
  %154 = load %struct.device*, %struct.device** %5, align 8
  %155 = call i32 @dev_err(%struct.device* %154, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %196

157:                                              ; preds = %138
  %158 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %159 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @USB2_RX_CHAN_CTRL1, align 8
  %162 = add nsw i64 %160, %161
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @USB2PHY_SQCAL_DONE, align 4
  %166 = and i32 %164, %165
  %167 = load i32, i32* @PLL_LOCK_DELAY_US, align 4
  %168 = load i32, i32* @PLL_LOCK_TIMEOUT_US, align 4
  %169 = call i32 @readl_poll_timeout(i64 %162, i32 %163, i32 %166, i32 %167, i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %157
  %173 = load %struct.device*, %struct.device** %5, align 8
  %174 = call i32 @dev_err(%struct.device* %173, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %2, align 4
  br label %196

176:                                              ; preds = %157
  %177 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %4, align 8
  %178 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @USB2_PHY_PLL_CTRL_REG0, align 8
  %181 = add nsw i64 %179, %180
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @PLL_READY, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* @PLL_LOCK_DELAY_US, align 4
  %187 = load i32, i32* @PLL_LOCK_TIMEOUT_US, align 4
  %188 = call i32 @readl_poll_timeout(i64 %181, i32 %182, i32 %185, i32 %186, i32 %187)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %176
  %192 = load %struct.device*, %struct.device** %5, align 8
  %193 = call i32 @dev_err(%struct.device* %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %176
  %195 = load i32, i32* %7, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %194, %172, %153, %134
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.mvebu_a3700_utmi* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @USB2_PHY_CTRL(i32) #1

declare dso_local i32 @RB_USB2PHY_SUSPM(i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
