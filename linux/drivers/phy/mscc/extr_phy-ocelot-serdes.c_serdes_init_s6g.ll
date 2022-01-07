; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_init_s6g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_init_s6g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@PHY_INTERFACE_MODE_QSGMII = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG_SYS_RST = common dso_local global i32 0, align 4
@HSIO_S6G_PLL_CFG = common dso_local global i32 0, align 4
@HSIO_S6G_PLL_CFG_PLL_FSM_ENA = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG_IB_SIG_DET_ENA = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG_IB_REG_ENA = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG_IB_SAM_ENA = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG_IB_EQZ_ENA = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG_IB_CONCUR = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG_IB_CAL_ENA = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1 = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1_IB_FRC_OFFSET = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1_IB_FRC_LP = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1_IB_FRC_MID = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1_IB_FRC_HP = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1_IB_FILT_OFFSET = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1_IB_FILT_LP = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1_IB_FILT_MID = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1_IB_FILT_HP = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG2 = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG2_IB_UREG_M = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG3 = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG3_IB_INI_OFFSET_M = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG3_IB_INI_LP_M = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG3_IB_INI_MID_M = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG3_IB_INI_HP_M = common dso_local global i32 0, align 4
@HSIO_S6G_MISC_CFG = common dso_local global i32 0, align 4
@HSIO_S6G_MISC_CFG_LANE_RST = common dso_local global i32 0, align 4
@HSIO_S6G_OB_CFG = common dso_local global i32 0, align 4
@HSIO_S6G_OB_CFG_OB_IDLE = common dso_local global i32 0, align 4
@HSIO_S6G_OB_CFG_OB_ENA1V_MODE = common dso_local global i32 0, align 4
@HSIO_S6G_OB_CFG_OB_POST0_M = common dso_local global i32 0, align 4
@HSIO_S6G_OB_CFG_OB_PREC_M = common dso_local global i32 0, align 4
@HSIO_S6G_OB_CFG1 = common dso_local global i32 0, align 4
@HSIO_S6G_OB_CFG1_OB_ENA_CAS_M = common dso_local global i32 0, align 4
@HSIO_S6G_OB_CFG1_OB_LEV_M = common dso_local global i32 0, align 4
@HSIO_S6G_DES_CFG = common dso_local global i32 0, align 4
@HSIO_S6G_DES_CFG_DES_PHS_CTRL_M = common dso_local global i32 0, align 4
@HSIO_S6G_DES_CFG_DES_CPMD_SEL_M = common dso_local global i32 0, align 4
@HSIO_S6G_DES_CFG_DES_BW_ANA_M = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG_IB_SIG_DET_CLK_SEL_M = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG_IB_REG_PAT_SEL_OFFSET_M = common dso_local global i32 0, align 4
@HSIO_S6G_IB_CFG1_IB_TSDET_M = common dso_local global i32 0, align 4
@HSIO_S6G_SER_CFG = common dso_local global i32 0, align 4
@HSIO_S6G_SER_CFG_SER_ALISEL_M = common dso_local global i32 0, align 4
@HSIO_S6G_SER_CFG_SER_ENALI = common dso_local global i32 0, align 4
@HSIO_S6G_PLL_CFG_PLL_DIV4 = common dso_local global i32 0, align 4
@HSIO_S6G_PLL_CFG_PLL_ENA_ROT = common dso_local global i32 0, align 4
@HSIO_S6G_PLL_CFG_PLL_FSM_CTRL_DATA_M = common dso_local global i32 0, align 4
@HSIO_S6G_PLL_CFG_PLL_ROT_DIR = common dso_local global i32 0, align 4
@HSIO_S6G_PLL_CFG_PLL_ROT_FRQ = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG_ENA_LANE = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG_PWD_RX = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG_PWD_TX = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG_HRATE = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG_QRATE = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG_ENA_ELOOP = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG_ENA_FLOOP = common dso_local global i32 0, align 4
@HSIO_S6G_COMMON_CFG_IF_MODE_M = common dso_local global i32 0, align 4
@HSIO_S6G_MISC_CFG_DES_100FX_CPMD_ENA = common dso_local global i32 0, align 4
@HSIO_S6G_MISC_CFG_RX_LPI_MODE_ENA = common dso_local global i32 0, align 4
@HSIO_S6G_MISC_CFG_TX_LPI_MODE_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32)* @serdes_init_s6g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_init_s6g(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PHY_INTERFACE_MODE_QSGMII, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 120, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 5, i32* %10, align 4
  store i32 24, i32* %13, align 4
  store i32 3, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %21

20:                                               ; preds = %3
  store i32 60, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 2, i32* %11, align 4
  store i32 3, i32* %10, align 4
  store i32 48, i32* %13, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @serdes_update_mcb_s6g(%struct.regmap* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %4, align 4
  br label %303

29:                                               ; preds = %21
  %30 = load %struct.regmap*, %struct.regmap** %5, align 8
  %31 = load i32, i32* @HSIO_S6G_COMMON_CFG, align 4
  %32 = load i32, i32* @HSIO_S6G_COMMON_CFG_SYS_RST, align 4
  %33 = call i32 @regmap_update_bits(%struct.regmap* %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.regmap*, %struct.regmap** %5, align 8
  %35 = load i32, i32* @HSIO_S6G_PLL_CFG, align 4
  %36 = load i32, i32* @HSIO_S6G_PLL_CFG_PLL_FSM_ENA, align 4
  %37 = call i32 @regmap_update_bits(%struct.regmap* %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.regmap*, %struct.regmap** %5, align 8
  %39 = load i32, i32* @HSIO_S6G_IB_CFG, align 4
  %40 = load i32, i32* @HSIO_S6G_IB_CFG_IB_SIG_DET_ENA, align 4
  %41 = load i32, i32* @HSIO_S6G_IB_CFG_IB_REG_ENA, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @HSIO_S6G_IB_CFG_IB_SAM_ENA, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @HSIO_S6G_IB_CFG_IB_EQZ_ENA, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @HSIO_S6G_IB_CFG_IB_CONCUR, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @HSIO_S6G_IB_CFG_IB_CAL_ENA, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @HSIO_S6G_IB_CFG_IB_SIG_DET_ENA, align 4
  %52 = load i32, i32* @HSIO_S6G_IB_CFG_IB_REG_ENA, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @HSIO_S6G_IB_CFG_IB_SAM_ENA, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @HSIO_S6G_IB_CFG_IB_EQZ_ENA, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @HSIO_S6G_IB_CFG_IB_CONCUR, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @regmap_update_bits(%struct.regmap* %38, i32 %39, i32 %50, i32 %59)
  %61 = load %struct.regmap*, %struct.regmap** %5, align 8
  %62 = load i32, i32* @HSIO_S6G_IB_CFG1, align 4
  %63 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FRC_OFFSET, align 4
  %64 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FRC_LP, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FRC_MID, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FRC_HP, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FILT_OFFSET, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FILT_LP, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FILT_MID, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FILT_HP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FILT_OFFSET, align 4
  %79 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FILT_HP, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FILT_LP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_FILT_MID, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @regmap_update_bits(%struct.regmap* %61, i32 %62, i32 %77, i32 %84)
  %86 = load %struct.regmap*, %struct.regmap** %5, align 8
  %87 = load i32, i32* @HSIO_S6G_IB_CFG2, align 4
  %88 = load i32, i32* @HSIO_S6G_IB_CFG2_IB_UREG_M, align 4
  %89 = call i32 @HSIO_S6G_IB_CFG2_IB_UREG(i32 4)
  %90 = call i32 @regmap_update_bits(%struct.regmap* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.regmap*, %struct.regmap** %5, align 8
  %92 = load i32, i32* @HSIO_S6G_IB_CFG3, align 4
  %93 = load i32, i32* @HSIO_S6G_IB_CFG3_IB_INI_OFFSET_M, align 4
  %94 = load i32, i32* @HSIO_S6G_IB_CFG3_IB_INI_LP_M, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @HSIO_S6G_IB_CFG3_IB_INI_MID_M, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @HSIO_S6G_IB_CFG3_IB_INI_HP_M, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @HSIO_S6G_IB_CFG3_IB_INI_OFFSET(i32 31)
  %101 = call i32 @HSIO_S6G_IB_CFG3_IB_INI_LP(i32 1)
  %102 = or i32 %100, %101
  %103 = call i32 @HSIO_S6G_IB_CFG3_IB_INI_MID(i32 31)
  %104 = or i32 %102, %103
  %105 = call i32 @HSIO_S6G_IB_CFG3_IB_INI_HP(i32 0)
  %106 = or i32 %104, %105
  %107 = call i32 @regmap_update_bits(%struct.regmap* %91, i32 %92, i32 %99, i32 %106)
  %108 = load %struct.regmap*, %struct.regmap** %5, align 8
  %109 = load i32, i32* @HSIO_S6G_MISC_CFG, align 4
  %110 = load i32, i32* @HSIO_S6G_MISC_CFG_LANE_RST, align 4
  %111 = load i32, i32* @HSIO_S6G_MISC_CFG_LANE_RST, align 4
  %112 = call i32 @regmap_update_bits(%struct.regmap* %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.regmap*, %struct.regmap** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @serdes_commit_mcb_s6g(%struct.regmap* %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %29
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %4, align 4
  br label %303

120:                                              ; preds = %29
  %121 = load %struct.regmap*, %struct.regmap** %5, align 8
  %122 = load i32, i32* @HSIO_S6G_OB_CFG, align 4
  %123 = load i32, i32* @HSIO_S6G_OB_CFG_OB_IDLE, align 4
  %124 = load i32, i32* @HSIO_S6G_OB_CFG_OB_ENA1V_MODE, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @HSIO_S6G_OB_CFG_OB_POST0_M, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @HSIO_S6G_OB_CFG_OB_PREC_M, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %120
  %133 = load i32, i32* @HSIO_S6G_OB_CFG_OB_ENA1V_MODE, align 4
  br label %135

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ]
  %137 = call i32 @HSIO_S6G_OB_CFG_OB_POST0(i32 0)
  %138 = or i32 %136, %137
  %139 = call i32 @HSIO_S6G_OB_CFG_OB_PREC(i32 0)
  %140 = or i32 %138, %139
  %141 = call i32 @regmap_update_bits(%struct.regmap* %121, i32 %122, i32 %129, i32 %140)
  %142 = load %struct.regmap*, %struct.regmap** %5, align 8
  %143 = load i32, i32* @HSIO_S6G_OB_CFG1, align 4
  %144 = load i32, i32* @HSIO_S6G_OB_CFG1_OB_ENA_CAS_M, align 4
  %145 = load i32, i32* @HSIO_S6G_OB_CFG1_OB_LEV_M, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @HSIO_S6G_OB_CFG1_OB_LEV(i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @HSIO_S6G_OB_CFG1_OB_ENA_CAS(i32 %149)
  %151 = or i32 %148, %150
  %152 = call i32 @regmap_update_bits(%struct.regmap* %142, i32 %143, i32 %146, i32 %151)
  %153 = load %struct.regmap*, %struct.regmap** %5, align 8
  %154 = load i32, i32* @HSIO_S6G_DES_CFG, align 4
  %155 = load i32, i32* @HSIO_S6G_DES_CFG_DES_PHS_CTRL_M, align 4
  %156 = load i32, i32* @HSIO_S6G_DES_CFG_DES_CPMD_SEL_M, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @HSIO_S6G_DES_CFG_DES_BW_ANA_M, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @HSIO_S6G_DES_CFG_DES_PHS_CTRL(i32 2)
  %161 = call i32 @HSIO_S6G_DES_CFG_DES_CPMD_SEL(i32 0)
  %162 = or i32 %160, %161
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @HSIO_S6G_DES_CFG_DES_BW_ANA(i32 %163)
  %165 = or i32 %162, %164
  %166 = call i32 @regmap_update_bits(%struct.regmap* %153, i32 %154, i32 %159, i32 %165)
  %167 = load %struct.regmap*, %struct.regmap** %5, align 8
  %168 = load i32, i32* @HSIO_S6G_IB_CFG, align 4
  %169 = load i32, i32* @HSIO_S6G_IB_CFG_IB_SIG_DET_CLK_SEL_M, align 4
  %170 = load i32, i32* @HSIO_S6G_IB_CFG_IB_REG_PAT_SEL_OFFSET_M, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @HSIO_S6G_IB_CFG_IB_REG_PAT_SEL_OFFSET(i32 0)
  %173 = call i32 @HSIO_S6G_IB_CFG_IB_SIG_DET_CLK_SEL(i32 0)
  %174 = or i32 %172, %173
  %175 = call i32 @regmap_update_bits(%struct.regmap* %167, i32 %168, i32 %171, i32 %174)
  %176 = load %struct.regmap*, %struct.regmap** %5, align 8
  %177 = load i32, i32* @HSIO_S6G_IB_CFG1, align 4
  %178 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_TSDET_M, align 4
  %179 = call i32 @HSIO_S6G_IB_CFG1_IB_TSDET(i32 16)
  %180 = call i32 @regmap_update_bits(%struct.regmap* %176, i32 %177, i32 %178, i32 %179)
  %181 = load %struct.regmap*, %struct.regmap** %5, align 8
  %182 = load i32, i32* @HSIO_S6G_SER_CFG, align 4
  %183 = load i32, i32* @HSIO_S6G_SER_CFG_SER_ALISEL_M, align 4
  %184 = load i32, i32* @HSIO_S6G_SER_CFG_SER_ENALI, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @HSIO_S6G_SER_CFG_SER_ALISEL(i32 0)
  %187 = call i32 @regmap_update_bits(%struct.regmap* %181, i32 %182, i32 %185, i32 %186)
  %188 = load %struct.regmap*, %struct.regmap** %5, align 8
  %189 = load i32, i32* @HSIO_S6G_PLL_CFG, align 4
  %190 = load i32, i32* @HSIO_S6G_PLL_CFG_PLL_DIV4, align 4
  %191 = load i32, i32* @HSIO_S6G_PLL_CFG_PLL_ENA_ROT, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @HSIO_S6G_PLL_CFG_PLL_FSM_CTRL_DATA_M, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @HSIO_S6G_PLL_CFG_PLL_ROT_DIR, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @HSIO_S6G_PLL_CFG_PLL_ROT_FRQ, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @HSIO_S6G_PLL_CFG_PLL_FSM_CTRL_DATA(i32 %199)
  %201 = call i32 @regmap_update_bits(%struct.regmap* %188, i32 %189, i32 %198, i32 %200)
  %202 = load %struct.regmap*, %struct.regmap** %5, align 8
  %203 = load i32, i32* @HSIO_S6G_COMMON_CFG, align 4
  %204 = load i32, i32* @HSIO_S6G_COMMON_CFG_SYS_RST, align 4
  %205 = load i32, i32* @HSIO_S6G_COMMON_CFG_ENA_LANE, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @HSIO_S6G_COMMON_CFG_PWD_RX, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @HSIO_S6G_COMMON_CFG_PWD_TX, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @HSIO_S6G_COMMON_CFG_HRATE, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @HSIO_S6G_COMMON_CFG_QRATE, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @HSIO_S6G_COMMON_CFG_ENA_ELOOP, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @HSIO_S6G_COMMON_CFG_ENA_FLOOP, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @HSIO_S6G_COMMON_CFG_IF_MODE_M, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @HSIO_S6G_COMMON_CFG_SYS_RST, align 4
  %222 = load i32, i32* @HSIO_S6G_COMMON_CFG_ENA_LANE, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* %14, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %135
  %227 = load i32, i32* @HSIO_S6G_COMMON_CFG_QRATE, align 4
  br label %229

228:                                              ; preds = %135
  br label %229

229:                                              ; preds = %228, %226
  %230 = phi i32 [ %227, %226 ], [ 0, %228 ]
  %231 = or i32 %223, %230
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @HSIO_S6G_COMMON_CFG_IF_MODE(i32 %232)
  %234 = or i32 %231, %233
  %235 = call i32 @regmap_update_bits(%struct.regmap* %202, i32 %203, i32 %220, i32 %234)
  %236 = load %struct.regmap*, %struct.regmap** %5, align 8
  %237 = load i32, i32* @HSIO_S6G_MISC_CFG, align 4
  %238 = load i32, i32* @HSIO_S6G_MISC_CFG_LANE_RST, align 4
  %239 = load i32, i32* @HSIO_S6G_MISC_CFG_DES_100FX_CPMD_ENA, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @HSIO_S6G_MISC_CFG_RX_LPI_MODE_ENA, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @HSIO_S6G_MISC_CFG_TX_LPI_MODE_ENA, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @HSIO_S6G_MISC_CFG_LANE_RST, align 4
  %246 = load i32, i32* @HSIO_S6G_MISC_CFG_RX_LPI_MODE_ENA, align 4
  %247 = or i32 %245, %246
  %248 = call i32 @regmap_update_bits(%struct.regmap* %236, i32 %237, i32 %244, i32 %247)
  %249 = load %struct.regmap*, %struct.regmap** %5, align 8
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @serdes_commit_mcb_s6g(%struct.regmap* %249, i32 %250)
  store i32 %251, i32* %15, align 4
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %229
  %255 = load i32, i32* %15, align 4
  store i32 %255, i32* %4, align 4
  br label %303

256:                                              ; preds = %229
  %257 = load %struct.regmap*, %struct.regmap** %5, align 8
  %258 = load i32, i32* @HSIO_S6G_PLL_CFG, align 4
  %259 = load i32, i32* @HSIO_S6G_PLL_CFG_PLL_FSM_ENA, align 4
  %260 = load i32, i32* @HSIO_S6G_PLL_CFG_PLL_FSM_ENA, align 4
  %261 = call i32 @regmap_update_bits(%struct.regmap* %257, i32 %258, i32 %259, i32 %260)
  %262 = load %struct.regmap*, %struct.regmap** %5, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @serdes_commit_mcb_s6g(%struct.regmap* %262, i32 %263)
  store i32 %264, i32* %15, align 4
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %256
  %268 = load i32, i32* %15, align 4
  store i32 %268, i32* %4, align 4
  br label %303

269:                                              ; preds = %256
  %270 = call i32 @msleep(i32 20)
  %271 = load %struct.regmap*, %struct.regmap** %5, align 8
  %272 = load i32, i32* @HSIO_S6G_IB_CFG, align 4
  %273 = load i32, i32* @HSIO_S6G_IB_CFG_IB_CAL_ENA, align 4
  %274 = load i32, i32* @HSIO_S6G_IB_CFG_IB_CAL_ENA, align 4
  %275 = call i32 @regmap_update_bits(%struct.regmap* %271, i32 %272, i32 %273, i32 %274)
  %276 = load %struct.regmap*, %struct.regmap** %5, align 8
  %277 = load i32, i32* @HSIO_S6G_MISC_CFG, align 4
  %278 = load i32, i32* @HSIO_S6G_MISC_CFG_LANE_RST, align 4
  %279 = call i32 @regmap_update_bits(%struct.regmap* %276, i32 %277, i32 %278, i32 0)
  %280 = load %struct.regmap*, %struct.regmap** %5, align 8
  %281 = load i32, i32* %6, align 4
  %282 = call i32 @serdes_commit_mcb_s6g(%struct.regmap* %280, i32 %281)
  store i32 %282, i32* %15, align 4
  %283 = load i32, i32* %15, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %269
  %286 = load i32, i32* %15, align 4
  store i32 %286, i32* %4, align 4
  br label %303

287:                                              ; preds = %269
  %288 = call i32 @msleep(i32 60)
  %289 = load %struct.regmap*, %struct.regmap** %5, align 8
  %290 = load i32, i32* @HSIO_S6G_IB_CFG, align 4
  %291 = load i32, i32* @HSIO_S6G_IB_CFG_IB_REG_PAT_SEL_OFFSET_M, align 4
  %292 = load i32, i32* @HSIO_S6G_IB_CFG_IB_SIG_DET_CLK_SEL_M, align 4
  %293 = or i32 %291, %292
  %294 = call i32 @HSIO_S6G_IB_CFG_IB_REG_PAT_SEL_OFFSET(i32 0)
  %295 = call i32 @HSIO_S6G_IB_CFG_IB_SIG_DET_CLK_SEL(i32 7)
  %296 = or i32 %294, %295
  %297 = call i32 @regmap_update_bits(%struct.regmap* %289, i32 %290, i32 %293, i32 %296)
  %298 = load %struct.regmap*, %struct.regmap** %5, align 8
  %299 = load i32, i32* @HSIO_S6G_IB_CFG1, align 4
  %300 = load i32, i32* @HSIO_S6G_IB_CFG1_IB_TSDET_M, align 4
  %301 = call i32 @HSIO_S6G_IB_CFG1_IB_TSDET(i32 3)
  %302 = call i32 @regmap_update_bits(%struct.regmap* %298, i32 %299, i32 %300, i32 %301)
  store i32 0, i32* %4, align 4
  br label %303

303:                                              ; preds = %287, %285, %267, %254, %118, %27
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i32 @serdes_update_mcb_s6g(%struct.regmap*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @HSIO_S6G_IB_CFG2_IB_UREG(i32) #1

declare dso_local i32 @HSIO_S6G_IB_CFG3_IB_INI_OFFSET(i32) #1

declare dso_local i32 @HSIO_S6G_IB_CFG3_IB_INI_LP(i32) #1

declare dso_local i32 @HSIO_S6G_IB_CFG3_IB_INI_MID(i32) #1

declare dso_local i32 @HSIO_S6G_IB_CFG3_IB_INI_HP(i32) #1

declare dso_local i32 @serdes_commit_mcb_s6g(%struct.regmap*, i32) #1

declare dso_local i32 @HSIO_S6G_OB_CFG_OB_POST0(i32) #1

declare dso_local i32 @HSIO_S6G_OB_CFG_OB_PREC(i32) #1

declare dso_local i32 @HSIO_S6G_OB_CFG1_OB_LEV(i32) #1

declare dso_local i32 @HSIO_S6G_OB_CFG1_OB_ENA_CAS(i32) #1

declare dso_local i32 @HSIO_S6G_DES_CFG_DES_PHS_CTRL(i32) #1

declare dso_local i32 @HSIO_S6G_DES_CFG_DES_CPMD_SEL(i32) #1

declare dso_local i32 @HSIO_S6G_DES_CFG_DES_BW_ANA(i32) #1

declare dso_local i32 @HSIO_S6G_IB_CFG_IB_REG_PAT_SEL_OFFSET(i32) #1

declare dso_local i32 @HSIO_S6G_IB_CFG_IB_SIG_DET_CLK_SEL(i32) #1

declare dso_local i32 @HSIO_S6G_IB_CFG1_IB_TSDET(i32) #1

declare dso_local i32 @HSIO_S6G_SER_CFG_SER_ALISEL(i32) #1

declare dso_local i32 @HSIO_S6G_PLL_CFG_PLL_FSM_CTRL_DATA(i32) #1

declare dso_local i32 @HSIO_S6G_COMMON_CFG_IF_MODE(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
