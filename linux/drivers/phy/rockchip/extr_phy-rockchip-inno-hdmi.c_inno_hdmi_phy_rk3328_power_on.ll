; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3328_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3328_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi_phy = type { i32, i32 }
%struct.post_pll_config = type { i32, i32, i32 }
%struct.phy_config = type { i32*, i32 }

@RK3328_PDATA_EN = common dso_local global i32 0, align 4
@RK3328_POST_PLL_POWER_DOWN = common dso_local global i32 0, align 4
@RK3328_POST_PLL_REFCLK_SEL_TMDS = common dso_local global i32 0, align 4
@RK3328_POST_PLL_POST_DIV_MASK = common dso_local global i32 0, align 4
@RK3328_POST_PLL_POST_DIV_ENABLE = common dso_local global i32 0, align 4
@RK3328_ESD_DETECT_MASK = common dso_local global i32 0, align 4
@RK3328_ESD_DETECT_340MV = common dso_local global i32 0, align 4
@RK3328_BYPASS_TERM_RESISTOR_CALIB = common dso_local global i32 0, align 4
@RK3328_TERM_RESISTOR_100 = common dso_local global i32 0, align 4
@RK3328_TMDS_TERM_RESIST_MASK = common dso_local global i32 0, align 4
@RK3328_TMDS_TERM_RESIST_75 = common dso_local global i32 0, align 4
@RK3328_TMDS_TERM_RESIST_150 = common dso_local global i32 0, align 4
@RK3328_BANDGAP_ENABLE = common dso_local global i32 0, align 4
@RK3328_TMDS_DRIVER_ENABLE = common dso_local global i32 0, align 4
@RK3328_POST_PLL_LOCK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Post-PLL locking failed\0A\00", align 1
@RK3328_INT_VSS_AGND_ESD_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi_phy*, %struct.post_pll_config*, %struct.phy_config*)* @inno_hdmi_phy_rk3328_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_phy_rk3328_power_on(%struct.inno_hdmi_phy* %0, %struct.post_pll_config* %1, %struct.phy_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inno_hdmi_phy*, align 8
  %6 = alloca %struct.post_pll_config*, align 8
  %7 = alloca %struct.phy_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inno_hdmi_phy* %0, %struct.inno_hdmi_phy** %5, align 8
  store %struct.post_pll_config* %1, %struct.post_pll_config** %6, align 8
  store %struct.phy_config* %2, %struct.phy_config** %7, align 8
  %10 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %11 = load i32, i32* @RK3328_PDATA_EN, align 4
  %12 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %10, i32 2, i32 %11, i32 0)
  %13 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %14 = load i32, i32* @RK3328_POST_PLL_POWER_DOWN, align 4
  %15 = load i32, i32* @RK3328_POST_PLL_POWER_DOWN, align 4
  %16 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %13, i32 170, i32 %14, i32 %15)
  %17 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %18 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %19 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @RK3328_POST_PLL_FB_DIV_7_0(i32 %20)
  %22 = call i32 @inno_write(%struct.inno_hdmi_phy* %17, i32 172, i32 %21)
  %23 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %24 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %42

27:                                               ; preds = %3
  %28 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %29 = load i32, i32* @RK3328_POST_PLL_REFCLK_SEL_TMDS, align 4
  %30 = call i32 @inno_write(%struct.inno_hdmi_phy* %28, i32 170, i32 %29)
  %31 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %32 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %33 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @RK3328_POST_PLL_FB_DIV_8(i32 %34)
  %36 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %37 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @RK3328_POST_PLL_PRE_DIV(i32 %38)
  %40 = or i32 %35, %39
  %41 = call i32 @inno_write(%struct.inno_hdmi_phy* %31, i32 171, i32 %40)
  br label %70

42:                                               ; preds = %3
  %43 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %44 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 2
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @RK3328_POST_PLL_POST_DIV_MASK, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @inno_write(%struct.inno_hdmi_phy* %51, i32 173, i32 %52)
  %54 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %55 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %56 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @RK3328_POST_PLL_FB_DIV_8(i32 %57)
  %59 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %60 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @RK3328_POST_PLL_PRE_DIV(i32 %61)
  %63 = or i32 %58, %62
  %64 = call i32 @inno_write(%struct.inno_hdmi_phy* %54, i32 171, i32 %63)
  %65 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %66 = load i32, i32* @RK3328_POST_PLL_POST_DIV_ENABLE, align 4
  %67 = load i32, i32* @RK3328_POST_PLL_REFCLK_SEL_TMDS, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @inno_write(%struct.inno_hdmi_phy* %65, i32 170, i32 %68)
  br label %70

70:                                               ; preds = %42, %27
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %86, %70
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 14
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 181, %76
  %78 = load %struct.phy_config*, %struct.phy_config** %7, align 8
  %79 = getelementptr inbounds %struct.phy_config, %struct.phy_config* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @inno_write(%struct.inno_hdmi_phy* %75, i32 %77, i32 %84)
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %71

89:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %100, %89
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 200, %95
  %97 = load i32, i32* @RK3328_ESD_DETECT_MASK, align 4
  %98 = load i32, i32* @RK3328_ESD_DETECT_340MV, align 4
  %99 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %94, i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %90

103:                                              ; preds = %90
  %104 = load %struct.phy_config*, %struct.phy_config** %7, align 8
  %105 = getelementptr inbounds %struct.phy_config, %struct.phy_config* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 340000000
  br i1 %107, label %108, label %130

108:                                              ; preds = %103
  %109 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %110 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @clk_get_rate(i32 %111)
  %113 = sdiv i32 %112, 100000
  store i32 %113, i32* %9, align 4
  %114 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @RK3328_TERM_RESISTOR_CALIB_SPEED_14_8(i32 %115)
  %117 = load i32, i32* @RK3328_BYPASS_TERM_RESISTOR_CALIB, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @inno_write(%struct.inno_hdmi_phy* %114, i32 197, i32 %118)
  %120 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(i32 %121)
  %123 = call i32 @inno_write(%struct.inno_hdmi_phy* %120, i32 198, i32 %122)
  %124 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %125 = load i32, i32* @RK3328_TERM_RESISTOR_100, align 4
  %126 = call i32 @inno_write(%struct.inno_hdmi_phy* %124, i32 199, i32 %125)
  %127 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %128 = load i32, i32* @RK3328_BYPASS_TERM_RESISTOR_CALIB, align 4
  %129 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %127, i32 197, i32 %128, i32 0)
  br label %160

130:                                              ; preds = %103
  %131 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %132 = load i32, i32* @RK3328_BYPASS_TERM_RESISTOR_CALIB, align 4
  %133 = call i32 @inno_write(%struct.inno_hdmi_phy* %131, i32 197, i32 %132)
  %134 = load %struct.phy_config*, %struct.phy_config** %7, align 8
  %135 = getelementptr inbounds %struct.phy_config, %struct.phy_config* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp sgt i32 %136, 165000000
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %140 = load i32, i32* @RK3328_TMDS_TERM_RESIST_MASK, align 4
  %141 = load i32, i32* @RK3328_TMDS_TERM_RESIST_75, align 4
  %142 = load i32, i32* @RK3328_TMDS_TERM_RESIST_150, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %139, i32 200, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %138, %130
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %156, %145
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 201, %151
  %153 = load i32, i32* @RK3328_TMDS_TERM_RESIST_MASK, align 4
  %154 = load i32, i32* @RK3328_TMDS_TERM_RESIST_150, align 4
  %155 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %150, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %146

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %108
  %161 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %162 = load i32, i32* @RK3328_POST_PLL_POWER_DOWN, align 4
  %163 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %161, i32 170, i32 %162, i32 0)
  %164 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %165 = load i32, i32* @RK3328_BANDGAP_ENABLE, align 4
  %166 = load i32, i32* @RK3328_BANDGAP_ENABLE, align 4
  %167 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %164, i32 176, i32 %165, i32 %166)
  %168 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %169 = load i32, i32* @RK3328_TMDS_DRIVER_ENABLE, align 4
  %170 = load i32, i32* @RK3328_TMDS_DRIVER_ENABLE, align 4
  %171 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %168, i32 178, i32 %169, i32 %170)
  %172 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @RK3328_POST_PLL_LOCK_STATUS, align 4
  %176 = and i32 %174, %175
  %177 = call i32 @inno_poll(%struct.inno_hdmi_phy* %172, i32 175, i32 %173, i32 %176, i32 1000, i32 10000)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %160
  %181 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %182 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dev_err(i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %4, align 4
  br label %212

186:                                              ; preds = %160
  %187 = load %struct.phy_config*, %struct.phy_config** %7, align 8
  %188 = getelementptr inbounds %struct.phy_config, %struct.phy_config* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp sgt i32 %189, 340000000
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = call i32 @msleep(i32 100)
  br label %193

193:                                              ; preds = %191, %186
  %194 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %195 = load i32, i32* @RK3328_PDATA_EN, align 4
  %196 = load i32, i32* @RK3328_PDATA_EN, align 4
  %197 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %194, i32 2, i32 %195, i32 %196)
  %198 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %199 = load i32, i32* @RK3328_INT_VSS_AGND_ESD_DET, align 4
  %200 = call i32 @RK3328_INT_TMDS_CLK(i32 %199)
  %201 = load i32, i32* @RK3328_INT_VSS_AGND_ESD_DET, align 4
  %202 = call i32 @RK3328_INT_TMDS_D2(i32 %201)
  %203 = or i32 %200, %202
  %204 = call i32 @inno_write(%struct.inno_hdmi_phy* %198, i32 5, i32 %203)
  %205 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %206 = load i32, i32* @RK3328_INT_VSS_AGND_ESD_DET, align 4
  %207 = call i32 @RK3328_INT_TMDS_D1(i32 %206)
  %208 = load i32, i32* @RK3328_INT_VSS_AGND_ESD_DET, align 4
  %209 = call i32 @RK3328_INT_TMDS_D0(i32 %208)
  %210 = or i32 %207, %209
  %211 = call i32 @inno_write(%struct.inno_hdmi_phy* %205, i32 7, i32 %210)
  store i32 0, i32* %4, align 4
  br label %212

212:                                              ; preds = %193, %180
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @inno_update_bits(%struct.inno_hdmi_phy*, i32, i32, i32) #1

declare dso_local i32 @inno_write(%struct.inno_hdmi_phy*, i32, i32) #1

declare dso_local i32 @RK3328_POST_PLL_FB_DIV_7_0(i32) #1

declare dso_local i32 @RK3328_POST_PLL_FB_DIV_8(i32) #1

declare dso_local i32 @RK3328_POST_PLL_PRE_DIV(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @RK3328_TERM_RESISTOR_CALIB_SPEED_14_8(i32) #1

declare dso_local i32 @RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(i32) #1

declare dso_local i32 @inno_poll(%struct.inno_hdmi_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @RK3328_INT_TMDS_CLK(i32) #1

declare dso_local i32 @RK3328_INT_TMDS_D2(i32) #1

declare dso_local i32 @RK3328_INT_TMDS_D1(i32) #1

declare dso_local i32 @RK3328_INT_TMDS_D0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
