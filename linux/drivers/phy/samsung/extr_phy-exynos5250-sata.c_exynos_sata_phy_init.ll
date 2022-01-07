; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-sata.c_exynos_sata_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-sata.c_exynos_sata_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.exynos_sata_phy = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@__const.exynos_sata_phy_init.buf = private unnamed_addr constant [2 x i32] [i32 58, i32 11], align 4
@SATAPHY_CONTROL_OFFSET = common dso_local global i32 0, align 4
@EXYNOS5_SATAPHY_PMU_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"phy init failed\0A\00", align 1
@EXYNOS5_SATA_RESET = common dso_local global i64 0, align 8
@RESET_GLOBAL_RST_N = common dso_local global i32 0, align 4
@RESET_CMN_RST_N = common dso_local global i32 0, align 4
@RESET_CMN_BLOCK_RST_N = common dso_local global i32 0, align 4
@RESET_CMN_I2C_RST_N = common dso_local global i32 0, align 4
@RESET_TX_RX_PIPE_RST_N = common dso_local global i32 0, align 4
@RESET_TX_RX_BLOCK_RST_N = common dso_local global i32 0, align 4
@RESET_TX_RX_I2C_RST_N = common dso_local global i32 0, align 4
@LINK_RESET = common dso_local global i32 0, align 4
@EXYNOS5_SATA_PHSATA_CTRLM = common dso_local global i64 0, align 8
@PHCTRLM_REF_RATE = common dso_local global i32 0, align 4
@PHCTRLM_HIGH_SPEED = common dso_local global i32 0, align 4
@EXYNOS5_SATA_CTRL0 = common dso_local global i64 0, align 8
@CTRL0_P0_PHY_CALIBRATED_SEL = common dso_local global i32 0, align 4
@CTRL0_P0_PHY_CALIBRATED = common dso_local global i32 0, align 4
@EXYNOS5_SATA_MODE0 = common dso_local global i64 0, align 8
@SATA_SPD_GEN3 = common dso_local global i32 0, align 4
@EXYNOS5_SATA_PHSATA_STATM = common dso_local global i32 0, align 4
@PHSTATM_PLL_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PHY PLL locking failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @exynos_sata_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_sata_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca %struct.exynos_sata_phy*, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([2 x i32]* @__const.exynos_sata_phy_init.buf to i8*), i64 8, i1 false)
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.exynos_sata_phy* @phy_get_drvdata(%struct.phy* %9)
  store %struct.exynos_sata_phy* %10, %struct.exynos_sata_phy** %7, align 8
  %11 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %12 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SATAPHY_CONTROL_OFFSET, align 4
  %15 = load i32, i32* @EXYNOS5_SATAPHY_PMU_ENABLE, align 4
  %16 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 1)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %21 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %19, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %28 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %34 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @RESET_GLOBAL_RST_N, align 4
  %40 = load i32, i32* @RESET_CMN_RST_N, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RESET_CMN_BLOCK_RST_N, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RESET_CMN_I2C_RST_N, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RESET_TX_RX_PIPE_RST_N, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RESET_TX_RX_BLOCK_RST_N, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RESET_TX_RX_I2C_RST_N, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %56 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %62 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @LINK_RESET, align 4
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %72 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %78 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @RESET_CMN_RST_N, align 4
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %88 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %94 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @EXYNOS5_SATA_PHSATA_CTRLM, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @readl(i64 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @PHCTRLM_REF_RATE, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %105 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @EXYNOS5_SATA_PHSATA_CTRLM, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  %110 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %111 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @EXYNOS5_SATA_PHSATA_CTRLM, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @readl(i64 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* @PHCTRLM_HIGH_SPEED, align 4
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %121 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @EXYNOS5_SATA_PHSATA_CTRLM, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  %126 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %127 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @EXYNOS5_SATA_CTRL0, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @readl(i64 %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* @CTRL0_P0_PHY_CALIBRATED_SEL, align 4
  %133 = load i32, i32* @CTRL0_P0_PHY_CALIBRATED, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %4, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %139 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @EXYNOS5_SATA_CTRL0, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @writel(i32 %137, i64 %142)
  %144 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %145 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @EXYNOS5_SATA_MODE0, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @readl(i64 %148)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* @SATA_SPD_GEN3, align 4
  %151 = load i32, i32* %4, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %155 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @EXYNOS5_SATA_MODE0, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 %153, i64 %158)
  %160 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %161 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %164 = call i32 @i2c_master_send(i32 %162, i32* %163, i32 8)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %25
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* %2, align 4
  br label %219

169:                                              ; preds = %25
  %170 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %171 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @readl(i64 %174)
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* @RESET_CMN_RST_N, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %4, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %182 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  %187 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %188 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @readl(i64 %191)
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* @RESET_CMN_RST_N, align 4
  %194 = load i32, i32* %4, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %4, align 4
  %196 = load i32, i32* %4, align 4
  %197 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %198 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @EXYNOS5_SATA_RESET, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @writel(i32 %196, i64 %201)
  %203 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %204 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* @EXYNOS5_SATA_PHSATA_STATM, align 4
  %207 = load i32, i32* @PHSTATM_PLL_LOCKED, align 4
  %208 = call i32 @wait_for_reg_status(i64 %205, i32 %206, i32 %207, i32 1)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %169
  %212 = load %struct.exynos_sata_phy*, %struct.exynos_sata_phy** %7, align 8
  %213 = getelementptr inbounds %struct.exynos_sata_phy, %struct.exynos_sata_phy* %212, i32 0, i32 0
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = call i32 @dev_err(i32* %215, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %217

217:                                              ; preds = %211, %169
  %218 = load i32, i32* %5, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %217, %167
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.exynos_sata_phy* @phy_get_drvdata(%struct.phy*) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i32 @readl(i64) #2

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #2

declare dso_local i32 @wait_for_reg_status(i64, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
