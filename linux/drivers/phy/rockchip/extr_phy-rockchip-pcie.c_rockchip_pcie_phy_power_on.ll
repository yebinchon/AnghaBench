; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_pcie_instance = type { i64 }
%struct.rockchip_pcie_phy = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"deassert phy_rst err %d\0A\00", align 1
@PHY_CFG_PLL_LOCK = common dso_local global i32 0, align 4
@PHY_CFG_ADDR_MASK = common dso_local global i32 0, align 4
@PHY_CFG_ADDR_SHIFT = common dso_local global i64 0, align 8
@PHY_LANE_IDLE_OFF = common dso_local global i32 0, align 4
@PHY_LANE_IDLE_MASK = common dso_local global i32 0, align 4
@PHY_LANE_IDLE_A_SHIFT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PHY_PLL_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"pll locked!\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"pll lock timeout!\0A\00", align 1
@PHY_CFG_CLK_TEST = common dso_local global i32 0, align 4
@PHY_CFG_SEPE_RATE = common dso_local global i32 0, align 4
@PHY_CFG_CLK_SCC = common dso_local global i32 0, align 4
@PHY_CFG_PLL_100M = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PHY_PLL_OUTPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"pll output enable done!\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"pll output enable timeout!\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"pll relocked!\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"pll relock timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_pcie_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.phy_pcie_instance*, align 8
  %5 = alloca %struct.rockchip_pcie_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.phy_pcie_instance* @phy_get_drvdata(%struct.phy* %9)
  store %struct.phy_pcie_instance* %10, %struct.phy_pcie_instance** %4, align 8
  %11 = load %struct.phy_pcie_instance*, %struct.phy_pcie_instance** %4, align 8
  %12 = call %struct.rockchip_pcie_phy* @to_pcie_phy(%struct.phy_pcie_instance* %11)
  store %struct.rockchip_pcie_phy* %12, %struct.rockchip_pcie_phy** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %14 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %17 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %197

22:                                               ; preds = %1
  %23 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %24 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @reset_control_deassert(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.phy*, %struct.phy** %3, align 8
  %31 = getelementptr inbounds %struct.phy, %struct.phy* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %206

34:                                               ; preds = %22
  %35 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %36 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %39 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PHY_CFG_PLL_LOCK, align 4
  %44 = load i32, i32* @PHY_CFG_ADDR_MASK, align 4
  %45 = load i64, i64* @PHY_CFG_ADDR_SHIFT, align 8
  %46 = call i32 @HIWORD_UPDATE(i32 %43, i32 %44, i64 %45)
  %47 = call i32 @regmap_write(i32 %37, i32 %42, i32 %46)
  %48 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %49 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %52 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PHY_LANE_IDLE_OFF, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @PHY_LANE_IDLE_MASK, align 4
  %61 = load i64, i64* @PHY_LANE_IDLE_A_SHIFT, align 8
  %62 = load %struct.phy_pcie_instance*, %struct.phy_pcie_instance** %4, align 8
  %63 = getelementptr inbounds %struct.phy_pcie_instance, %struct.phy_pcie_instance* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @HIWORD_UPDATE(i32 %59, i32 %60, i64 %65)
  %67 = call i32 @regmap_write(i32 %50, i32 %55, i32 %66)
  %68 = load i64, i64* @jiffies, align 8
  %69 = call i64 @msecs_to_jiffies(i32 1000)
  %70 = add i64 %68, %69
  store i64 %70, i64* %8, align 8
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %96, %34
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @time_before(i64 %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %73
  %79 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %80 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %83 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @regmap_read(i32 %81, i32 %86, i32* %7)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @PHY_PLL_LOCKED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load %struct.phy*, %struct.phy** %3, align 8
  %94 = getelementptr inbounds %struct.phy, %struct.phy* %93, i32 0, i32 0
  %95 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %98

96:                                               ; preds = %78
  %97 = call i32 @msleep(i32 20)
  br label %73

98:                                               ; preds = %92, %73
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.phy*, %struct.phy** %3, align 8
  %103 = getelementptr inbounds %struct.phy, %struct.phy* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %201

105:                                              ; preds = %98
  %106 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %107 = load i32, i32* @PHY_CFG_CLK_TEST, align 4
  %108 = load i32, i32* @PHY_CFG_SEPE_RATE, align 4
  %109 = call i32 @phy_wr_cfg(%struct.rockchip_pcie_phy* %106, i32 %107, i32 %108)
  %110 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %111 = load i32, i32* @PHY_CFG_CLK_SCC, align 4
  %112 = load i32, i32* @PHY_CFG_PLL_100M, align 4
  %113 = call i32 @phy_wr_cfg(%struct.rockchip_pcie_phy* %110, i32 %111, i32 %112)
  %114 = load i32, i32* @ETIMEDOUT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %139, %105
  %117 = load i64, i64* @jiffies, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i64 @time_before(i64 %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %116
  %122 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %123 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %126 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %125, i32 0, i32 3
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @regmap_read(i32 %124, i32 %129, i32* %7)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @PHY_PLL_OUTPUT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %121
  %136 = load %struct.phy*, %struct.phy** %3, align 8
  %137 = getelementptr inbounds %struct.phy, %struct.phy* %136, i32 0, i32 0
  %138 = call i32 @dev_dbg(i32* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %141

139:                                              ; preds = %121
  %140 = call i32 @msleep(i32 20)
  br label %116

141:                                              ; preds = %135, %116
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.phy*, %struct.phy** %3, align 8
  %146 = getelementptr inbounds %struct.phy, %struct.phy* %145, i32 0, i32 0
  %147 = call i32 (i32*, i8*, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %201

148:                                              ; preds = %141
  %149 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %150 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %153 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PHY_CFG_PLL_LOCK, align 4
  %158 = load i32, i32* @PHY_CFG_ADDR_MASK, align 4
  %159 = load i64, i64* @PHY_CFG_ADDR_SHIFT, align 8
  %160 = call i32 @HIWORD_UPDATE(i32 %157, i32 %158, i64 %159)
  %161 = call i32 @regmap_write(i32 %151, i32 %156, i32 %160)
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %187, %148
  %165 = load i64, i64* @jiffies, align 8
  %166 = load i64, i64* %8, align 8
  %167 = call i64 @time_before(i64 %165, i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %164
  %170 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %171 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %174 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %173, i32 0, i32 3
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @regmap_read(i32 %172, i32 %177, i32* %7)
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @PHY_PLL_LOCKED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %169
  %184 = load %struct.phy*, %struct.phy** %3, align 8
  %185 = getelementptr inbounds %struct.phy, %struct.phy* %184, i32 0, i32 0
  %186 = call i32 @dev_dbg(i32* %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %189

187:                                              ; preds = %169
  %188 = call i32 @msleep(i32 20)
  br label %164

189:                                              ; preds = %183, %164
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load %struct.phy*, %struct.phy** %3, align 8
  %194 = getelementptr inbounds %struct.phy, %struct.phy* %193, i32 0, i32 0
  %195 = call i32 (i32*, i8*, ...) @dev_err(i32* %194, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %201

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %21
  %198 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %199 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %198, i32 0, i32 0
  %200 = call i32 @mutex_unlock(i32* %199)
  store i32 0, i32* %2, align 4
  br label %215

201:                                              ; preds = %192, %144, %101
  %202 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %203 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @reset_control_assert(i32 %204)
  br label %206

206:                                              ; preds = %201, %29
  %207 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %208 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %208, align 4
  %211 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %212 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %211, i32 0, i32 0
  %213 = call i32 @mutex_unlock(i32* %212)
  %214 = load i32, i32* %6, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %206, %197
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.phy_pcie_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.rockchip_pcie_phy* @to_pcie_phy(%struct.phy_pcie_instance*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @HIWORD_UPDATE(i32, i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @phy_wr_cfg(%struct.rockchip_pcie_phy*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
