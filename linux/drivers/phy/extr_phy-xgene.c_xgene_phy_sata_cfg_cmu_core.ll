; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_sata_cfg_cmu_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_sata_cfg_cmu_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_phy_ctx = type { i32 }

@REF_CMU = common dso_local global i32 0, align 4
@CMU_REG34 = common dso_local global i32 0, align 4
@CMU_REG0 = common dso_local global i32 0, align 4
@preA3Chip = common dso_local global i64 0, align 8
@CMU_REG1 = common dso_local global i32 0, align 4
@CMU_REG5 = common dso_local global i32 0, align 4
@CMU_REG5_PLL_RESETB_MASK = common dso_local global i32 0, align 4
@CMU_REG2 = common dso_local global i32 0, align 4
@CLK_EXT_DIFF = common dso_local global i32 0, align 4
@FBDIV_VAL_100M = common dso_local global i32 0, align 4
@REFDIV_VAL_100M = common dso_local global i32 0, align 4
@FBDIV_VAL_50M = common dso_local global i32 0, align 4
@REFDIV_VAL_50M = common dso_local global i32 0, align 4
@CMU_REG3 = common dso_local global i32 0, align 4
@CMU_REG26 = common dso_local global i32 0, align 4
@CMU_REG6 = common dso_local global i32 0, align 4
@PHY_CMU = common dso_local global i32 0, align 4
@CMU_REG9 = common dso_local global i32 0, align 4
@CMU_REG9_WORD_LEN_20BIT = common dso_local global i32 0, align 4
@CMU_REG10 = common dso_local global i32 0, align 4
@CMU_REG16 = common dso_local global i32 0, align 4
@CMU_REG30 = common dso_local global i32 0, align 4
@CMU_REG31 = common dso_local global i32 0, align 4
@CMU_REG32 = common dso_local global i32 0, align 4
@CMU_REG37 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_phy_ctx*, i32, i32)* @xgene_phy_sata_cfg_cmu_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_phy_sata_cfg_cmu_core(%struct.xgene_phy_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xgene_phy_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgene_phy_ctx* %0, %struct.xgene_phy_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @REF_CMU, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CMU_REG34, align 4
  %16 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %13, i32 %14, i32 %15, i32* %7)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @CMU_REG34_VCO_CAL_VTH_LO_MAX_SET(i32 %17, i32 7)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @CMU_REG34_VCO_CAL_VTH_HI_MAX_SET(i32 %19, i32 12)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @CMU_REG34_VCO_CAL_VTH_LO_MIN_SET(i32 %21, i32 3)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @CMU_REG34_VCO_CAL_VTH_HI_MIN_SET(i32 %23, i32 8)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CMU_REG34, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %12, %3
  %31 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CMU_REG0, align 4
  %34 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %31, i32 %32, i32 %33, i32* %7)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @REF_CMU, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* @preA3Chip, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @CMU_REG0_CAL_COUNT_RESOL_SET(i32 %42, i32 4)
  store i32 %43, i32* %7, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @CMU_REG0_CAL_COUNT_RESOL_SET(i32 %45, i32 7)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CMU_REG0, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @CMU_REG1, align 4
  %56 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %53, i32 %54, i32 %55, i32* %7)
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @CMU_REG1_PLL_CP_SET(i32 %57, i32 1)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @REF_CMU, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %47
  %63 = load i64, i64* @preA3Chip, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %47
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @CMU_REG1_PLL_CP_SEL_SET(i32 %66, i32 5)
  store i32 %67, i32* %7, align 4
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @CMU_REG1_PLL_CP_SEL_SET(i32 %69, i32 3)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @REF_CMU, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @CMU_REG1_PLL_MANUALCAL_SET(i32 %76, i32 0)
  store i32 %77, i32* %7, align 4
  br label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @CMU_REG1_PLL_MANUALCAL_SET(i32 %79, i32 1)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @CMU_REG1, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @REF_CMU, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @CMU_REG5, align 4
  %94 = load i32, i32* @CMU_REG5_PLL_RESETB_MASK, align 4
  %95 = call i32 @cmu_clrbits(%struct.xgene_phy_ctx* %91, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %81
  %97 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @CMU_REG2, align 4
  %100 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %97, i32 %98, i32 %99, i32* %7)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @REF_CMU, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @CMU_REG2_PLL_LFRES_SET(i32 %105, i32 10)
  store i32 %106, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %116

107:                                              ; preds = %96
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @CMU_REG2_PLL_LFRES_SET(i32 %108, i32 3)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @CLK_EXT_DIFF, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %115

114:                                              ; preds = %107
  store i32 1, i32* %8, align 4
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %104
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @FBDIV_VAL_100M, align 4
  %122 = call i32 @CMU_REG2_PLL_FBDIV_SET(i32 %120, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @REFDIV_VAL_100M, align 4
  %125 = call i32 @CMU_REG2_PLL_REFDIV_SET(i32 %123, i32 %124)
  store i32 %125, i32* %7, align 4
  br label %133

126:                                              ; preds = %116
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @FBDIV_VAL_50M, align 4
  %129 = call i32 @CMU_REG2_PLL_FBDIV_SET(i32 %127, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @REFDIV_VAL_50M, align 4
  %132 = call i32 @CMU_REG2_PLL_REFDIV_SET(i32 %130, i32 %131)
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %126, %119
  %134 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @CMU_REG2, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @CMU_REG3, align 4
  %142 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %139, i32 %140, i32 %141, i32* %7)
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @REF_CMU, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %133
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @CMU_REG3_VCOVARSEL_SET(i32 %147, i32 3)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @CMU_REG3_VCO_MOMSEL_INIT_SET(i32 %149, i32 16)
  store i32 %150, i32* %7, align 4
  br label %165

151:                                              ; preds = %133
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @CMU_REG3_VCOVARSEL_SET(i32 %152, i32 15)
  store i32 %153, i32* %7, align 4
  %154 = load i64, i64* @preA3Chip, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @CMU_REG3_VCO_MOMSEL_INIT_SET(i32 %157, i32 21)
  store i32 %158, i32* %7, align 4
  br label %162

159:                                              ; preds = %151
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @CMU_REG3_VCO_MOMSEL_INIT_SET(i32 %160, i32 26)
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @CMU_REG3_VCO_MANMOMSEL_SET(i32 %163, i32 21)
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %162, %146
  %166 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @CMU_REG3, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %166, i32 %167, i32 %168, i32 %169)
  %171 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @CMU_REG26, align 4
  %174 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %171, i32 %172, i32 %173, i32* %7)
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @CMU_REG26_FORCE_PLL_LOCK_SET(i32 %175, i32 0)
  store i32 %176, i32* %7, align 4
  %177 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @CMU_REG26, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %177, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @CMU_REG5, align 4
  %185 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %182, i32 %183, i32 %184, i32* %7)
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @CMU_REG5_PLL_LFSMCAP_SET(i32 %186, i32 3)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @CMU_REG5_PLL_LFCAP_SET(i32 %188, i32 3)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @REF_CMU, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %196, label %193

193:                                              ; preds = %165
  %194 = load i64, i64* @preA3Chip, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193, %165
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @CMU_REG5_PLL_LOCK_RESOLUTION_SET(i32 %197, i32 7)
  store i32 %198, i32* %7, align 4
  br label %202

199:                                              ; preds = %193
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @CMU_REG5_PLL_LOCK_RESOLUTION_SET(i32 %200, i32 4)
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %199, %196
  %203 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @CMU_REG5, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %203, i32 %204, i32 %205, i32 %206)
  %208 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @CMU_REG6, align 4
  %211 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %208, i32 %209, i32 %210, i32* %7)
  %212 = load i32, i32* %7, align 4
  %213 = load i64, i64* @preA3Chip, align 8
  %214 = icmp ne i64 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 0, i32 2
  %217 = call i32 @CMU_REG6_PLL_VREGTRIM_SET(i32 %212, i32 %216)
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %7, align 4
  %219 = load i64, i64* @preA3Chip, align 8
  %220 = icmp ne i64 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 1, i32 0
  %223 = call i32 @CMU_REG6_MAN_PVT_CAL_SET(i32 %218, i32 %222)
  store i32 %223, i32* %7, align 4
  %224 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* @CMU_REG6, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %224, i32 %225, i32 %226, i32 %227)
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @PHY_CMU, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %273

232:                                              ; preds = %202
  %233 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* @CMU_REG9, align 4
  %236 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %233, i32 %234, i32 %235, i32* %7)
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @CMU_REG9_WORD_LEN_20BIT, align 4
  %239 = call i32 @CMU_REG9_TX_WORD_MODE_CH1_SET(i32 %237, i32 %238)
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* @CMU_REG9_WORD_LEN_20BIT, align 4
  %242 = call i32 @CMU_REG9_TX_WORD_MODE_CH0_SET(i32 %240, i32 %241)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @CMU_REG9_PLL_POST_DIVBY2_SET(i32 %243, i32 1)
  store i32 %244, i32* %7, align 4
  %245 = load i64, i64* @preA3Chip, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %232
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @CMU_REG9_VBG_BYPASSB_SET(i32 %248, i32 0)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @CMU_REG9_IGEN_BYPASS_SET(i32 %250, i32 0)
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %247, %232
  %253 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %254 = load i32, i32* %5, align 4
  %255 = load i32, i32* @CMU_REG9, align 4
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %253, i32 %254, i32 %255, i32 %256)
  %258 = load i64, i64* @preA3Chip, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %272, label %260

260:                                              ; preds = %252
  %261 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %262 = load i32, i32* %5, align 4
  %263 = load i32, i32* @CMU_REG10, align 4
  %264 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %261, i32 %262, i32 %263, i32* %7)
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @CMU_REG10_VREG_REFSEL_SET(i32 %265, i32 1)
  store i32 %266, i32* %7, align 4
  %267 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %268 = load i32, i32* %5, align 4
  %269 = load i32, i32* @CMU_REG10, align 4
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %267, i32 %268, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %260, %252
  br label %273

273:                                              ; preds = %272, %202
  %274 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %275 = load i32, i32* %5, align 4
  %276 = load i32, i32* @CMU_REG16, align 4
  %277 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %274, i32 %275, i32 %276, i32* %7)
  %278 = load i32, i32* %7, align 4
  %279 = call i32 @CMU_REG16_CALIBRATION_DONE_OVERRIDE_SET(i32 %278, i32 1)
  store i32 %279, i32* %7, align 4
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @CMU_REG16_BYPASS_PLL_LOCK_SET(i32 %280, i32 1)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %5, align 4
  %283 = load i32, i32* @REF_CMU, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %288, label %285

285:                                              ; preds = %273
  %286 = load i64, i64* @preA3Chip, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285, %273
  %289 = load i32, i32* %7, align 4
  %290 = call i32 @CMU_REG16_VCOCAL_WAIT_BTW_CODE_SET(i32 %289, i32 4)
  store i32 %290, i32* %7, align 4
  br label %294

291:                                              ; preds = %285
  %292 = load i32, i32* %7, align 4
  %293 = call i32 @CMU_REG16_VCOCAL_WAIT_BTW_CODE_SET(i32 %292, i32 7)
  store i32 %293, i32* %7, align 4
  br label %294

294:                                              ; preds = %291, %288
  %295 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %296 = load i32, i32* %5, align 4
  %297 = load i32, i32* @CMU_REG16, align 4
  %298 = load i32, i32* %7, align 4
  %299 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %295, i32 %296, i32 %297, i32 %298)
  %300 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %301 = load i32, i32* %5, align 4
  %302 = load i32, i32* @CMU_REG30, align 4
  %303 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %300, i32 %301, i32 %302, i32* %7)
  %304 = load i32, i32* %7, align 4
  %305 = call i32 @CMU_REG30_PCIE_MODE_SET(i32 %304, i32 0)
  store i32 %305, i32* %7, align 4
  %306 = load i32, i32* %7, align 4
  %307 = call i32 @CMU_REG30_LOCK_COUNT_SET(i32 %306, i32 3)
  store i32 %307, i32* %7, align 4
  %308 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %309 = load i32, i32* %5, align 4
  %310 = load i32, i32* @CMU_REG30, align 4
  %311 = load i32, i32* %7, align 4
  %312 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %308, i32 %309, i32 %310, i32 %311)
  %313 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %314 = load i32, i32* %5, align 4
  %315 = load i32, i32* @CMU_REG31, align 4
  %316 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %313, i32 %314, i32 %315, i32 15)
  %317 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %318 = load i32, i32* %5, align 4
  %319 = load i32, i32* @CMU_REG32, align 4
  %320 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %317, i32 %318, i32 %319, i32* %7)
  %321 = load i32, i32* %7, align 4
  %322 = call i32 @CMU_REG32_PVT_CAL_WAIT_SEL_SET(i32 %321, i32 3)
  store i32 %322, i32* %7, align 4
  %323 = load i32, i32* %5, align 4
  %324 = load i32, i32* @REF_CMU, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %329, label %326

326:                                              ; preds = %294
  %327 = load i64, i64* @preA3Chip, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326, %294
  %330 = load i32, i32* %7, align 4
  %331 = call i32 @CMU_REG32_IREF_ADJ_SET(i32 %330, i32 3)
  store i32 %331, i32* %7, align 4
  br label %335

332:                                              ; preds = %326
  %333 = load i32, i32* %7, align 4
  %334 = call i32 @CMU_REG32_IREF_ADJ_SET(i32 %333, i32 1)
  store i32 %334, i32* %7, align 4
  br label %335

335:                                              ; preds = %332, %329
  %336 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %337 = load i32, i32* %5, align 4
  %338 = load i32, i32* @CMU_REG32, align 4
  %339 = load i32, i32* %7, align 4
  %340 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %336, i32 %337, i32 %338, i32 %339)
  %341 = load i32, i32* %5, align 4
  %342 = load i32, i32* @REF_CMU, align 4
  %343 = icmp ne i32 %341, %342
  br i1 %343, label %344, label %352

344:                                              ; preds = %335
  %345 = load i64, i64* @preA3Chip, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %344
  %348 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* @CMU_REG34, align 4
  %351 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %348, i32 %349, i32 %350, i32 36135)
  br label %357

352:                                              ; preds = %344, %335
  %353 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %354 = load i32, i32* %5, align 4
  %355 = load i32, i32* @CMU_REG34, align 4
  %356 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %353, i32 %354, i32 %355, i32 34620)
  br label %357

357:                                              ; preds = %352, %347
  %358 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %359 = load i32, i32* %5, align 4
  %360 = load i32, i32* @CMU_REG37, align 4
  %361 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %358, i32 %359, i32 %360, i32 61455)
  ret void
}

declare dso_local i32 @cmu_rd(%struct.xgene_phy_ctx*, i32, i32, i32*) #1

declare dso_local i32 @CMU_REG34_VCO_CAL_VTH_LO_MAX_SET(i32, i32) #1

declare dso_local i32 @CMU_REG34_VCO_CAL_VTH_HI_MAX_SET(i32, i32) #1

declare dso_local i32 @CMU_REG34_VCO_CAL_VTH_LO_MIN_SET(i32, i32) #1

declare dso_local i32 @CMU_REG34_VCO_CAL_VTH_HI_MIN_SET(i32, i32) #1

declare dso_local i32 @cmu_wr(%struct.xgene_phy_ctx*, i32, i32, i32) #1

declare dso_local i32 @CMU_REG0_CAL_COUNT_RESOL_SET(i32, i32) #1

declare dso_local i32 @CMU_REG1_PLL_CP_SET(i32, i32) #1

declare dso_local i32 @CMU_REG1_PLL_CP_SEL_SET(i32, i32) #1

declare dso_local i32 @CMU_REG1_PLL_MANUALCAL_SET(i32, i32) #1

declare dso_local i32 @cmu_clrbits(%struct.xgene_phy_ctx*, i32, i32, i32) #1

declare dso_local i32 @CMU_REG2_PLL_LFRES_SET(i32, i32) #1

declare dso_local i32 @CMU_REG2_PLL_FBDIV_SET(i32, i32) #1

declare dso_local i32 @CMU_REG2_PLL_REFDIV_SET(i32, i32) #1

declare dso_local i32 @CMU_REG3_VCOVARSEL_SET(i32, i32) #1

declare dso_local i32 @CMU_REG3_VCO_MOMSEL_INIT_SET(i32, i32) #1

declare dso_local i32 @CMU_REG3_VCO_MANMOMSEL_SET(i32, i32) #1

declare dso_local i32 @CMU_REG26_FORCE_PLL_LOCK_SET(i32, i32) #1

declare dso_local i32 @CMU_REG5_PLL_LFSMCAP_SET(i32, i32) #1

declare dso_local i32 @CMU_REG5_PLL_LFCAP_SET(i32, i32) #1

declare dso_local i32 @CMU_REG5_PLL_LOCK_RESOLUTION_SET(i32, i32) #1

declare dso_local i32 @CMU_REG6_PLL_VREGTRIM_SET(i32, i32) #1

declare dso_local i32 @CMU_REG6_MAN_PVT_CAL_SET(i32, i32) #1

declare dso_local i32 @CMU_REG9_TX_WORD_MODE_CH1_SET(i32, i32) #1

declare dso_local i32 @CMU_REG9_TX_WORD_MODE_CH0_SET(i32, i32) #1

declare dso_local i32 @CMU_REG9_PLL_POST_DIVBY2_SET(i32, i32) #1

declare dso_local i32 @CMU_REG9_VBG_BYPASSB_SET(i32, i32) #1

declare dso_local i32 @CMU_REG9_IGEN_BYPASS_SET(i32, i32) #1

declare dso_local i32 @CMU_REG10_VREG_REFSEL_SET(i32, i32) #1

declare dso_local i32 @CMU_REG16_CALIBRATION_DONE_OVERRIDE_SET(i32, i32) #1

declare dso_local i32 @CMU_REG16_BYPASS_PLL_LOCK_SET(i32, i32) #1

declare dso_local i32 @CMU_REG16_VCOCAL_WAIT_BTW_CODE_SET(i32, i32) #1

declare dso_local i32 @CMU_REG30_PCIE_MODE_SET(i32, i32) #1

declare dso_local i32 @CMU_REG30_LOCK_COUNT_SET(i32, i32) #1

declare dso_local i32 @CMU_REG32_PVT_CAL_WAIT_SEL_SET(i32, i32) #1

declare dso_local i32 @CMU_REG32_IREF_ADJ_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
