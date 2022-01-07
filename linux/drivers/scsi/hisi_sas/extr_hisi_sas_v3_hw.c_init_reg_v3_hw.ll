; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_init_reg_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_init_reg_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i64, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.hisi_sas_phy* }
%struct.hisi_sas_phy = type { %struct.asd_sas_phy }
%struct.asd_sas_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DLVRY_QUEUE_ENABLE = common dso_local global i64 0, align 8
@SAS_AXI_USER3 = common dso_local global i64 0, align 8
@CFG_MAX_TAG = common dso_local global i64 0, align 8
@HGC_SAS_TXFAIL_RETRY_CTRL = common dso_local global i64 0, align 8
@CFG_AGING_TIME = common dso_local global i64 0, align 8
@INT_COAL_EN = common dso_local global i64 0, align 8
@OQ_INT_COAL_TIME = common dso_local global i64 0, align 8
@OQ_INT_COAL_CNT = common dso_local global i64 0, align 8
@CQ_INT_CONVERGE_EN = common dso_local global i64 0, align 8
@hisi_sas_intr_conv = common dso_local global i32 0, align 4
@OQ_INT_SRC = common dso_local global i64 0, align 8
@ENT_INT_SRC1 = common dso_local global i64 0, align 8
@ENT_INT_SRC2 = common dso_local global i64 0, align 8
@ENT_INT_SRC3 = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK1 = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK2 = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK3 = common dso_local global i64 0, align 8
@CHNL_PHYUPDOWN_INT_MSK = common dso_local global i64 0, align 8
@CHNL_ENT_INT_MSK = common dso_local global i64 0, align 8
@HGC_COM_INT_MSK = common dso_local global i64 0, align 8
@SAS_ECC_INTR_MSK = common dso_local global i64 0, align 8
@AWQOS_AWCACHE_CFG = common dso_local global i64 0, align 8
@ARQOS_ARCACHE_CFG = common dso_local global i64 0, align 8
@OQ0_INT_SRC_MSK = common dso_local global i64 0, align 8
@HYPER_STREAM_ID_EN_CFG = common dso_local global i64 0, align 8
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i64 0, align 8
@PROG_PHY_LINK_RATE = common dso_local global i32 0, align 4
@SERDES_CFG = common dso_local global i32 0, align 4
@SAS_RX_TRAIN_TIMER = common dso_local global i32 0, align 4
@CHL_INT0 = common dso_local global i32 0, align 4
@CHL_INT1 = common dso_local global i32 0, align 4
@CHL_INT2 = common dso_local global i32 0, align 4
@RXOP_CHECK_CFG_H = common dso_local global i32 0, align 4
@CHL_INT1_MSK = common dso_local global i32 0, align 4
@CHL_INT2_MSK = common dso_local global i32 0, align 4
@PHY_CTRL_RDY_MSK = common dso_local global i32 0, align 4
@PHYCTRL_NOT_RDY_MSK = common dso_local global i32 0, align 4
@PHYCTRL_DWS_RESET_MSK = common dso_local global i32 0, align 4
@PHYCTRL_PHY_ENA_MSK = common dso_local global i32 0, align 4
@SL_RX_BCAST_CHK_MSK = common dso_local global i32 0, align 4
@PHYCTRL_OOB_RESTART_MSK = common dso_local global i32 0, align 4
@STP_LINK_TIMER = common dso_local global i32 0, align 4
@CON_CFG_DRIVER = common dso_local global i32 0, align 4
@SAS_SSP_CON_TIMER_CFG = common dso_local global i32 0, align 4
@SAS_EC_INT_COAL_TIME = common dso_local global i32 0, align 4
@COARSETUNE_TIME = common dso_local global i32 0, align 4
@AIP_LIMIT = common dso_local global i32 0, align 4
@DLVRY_Q_0_BASE_ADDR_HI = common dso_local global i64 0, align 8
@DLVRY_Q_0_BASE_ADDR_LO = common dso_local global i64 0, align 8
@DLVRY_Q_0_DEPTH = common dso_local global i64 0, align 8
@HISI_SAS_QUEUE_SLOTS = common dso_local global i32 0, align 4
@COMPL_Q_0_BASE_ADDR_HI = common dso_local global i64 0, align 8
@COMPL_Q_0_BASE_ADDR_LO = common dso_local global i64 0, align 8
@COMPL_Q_0_DEPTH = common dso_local global i64 0, align 8
@ITCT_BASE_ADDR_LO = common dso_local global i64 0, align 8
@ITCT_BASE_ADDR_HI = common dso_local global i64 0, align 8
@IOST_BASE_ADDR_LO = common dso_local global i64 0, align 8
@IOST_BASE_ADDR_HI = common dso_local global i64 0, align 8
@IO_BROKEN_MSG_ADDR_LO = common dso_local global i64 0, align 8
@IO_BROKEN_MSG_ADDR_HI = common dso_local global i64 0, align 8
@IO_SATA_BROKEN_MSG_ADDR_LO = common dso_local global i64 0, align 8
@IO_SATA_BROKEN_MSG_ADDR_HI = common dso_local global i64 0, align 8
@SATA_INITI_D2H_STORE_ADDR_LO = common dso_local global i64 0, align 8
@SATA_INITI_D2H_STORE_ADDR_HI = common dso_local global i64 0, align 8
@SAS_RAS_INTR0_MASK = common dso_local global i64 0, align 8
@SAS_RAS_INTR1_MASK = common dso_local global i64 0, align 8
@SAS_RAS_INTR2_MASK = common dso_local global i64 0, align 8
@CFG_SAS_RAS_INTR_MASK = common dso_local global i64 0, align 8
@SAS_CFG_DRIVE_VLD = common dso_local global i64 0, align 8
@SAS_GPIO_TX_0_1 = common dso_local global i64 0, align 8
@SAS_GPIO_CFG_1 = common dso_local global i64 0, align 8
@SAS_GPIO_CFG_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @init_reg_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_reg_v3_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_sas_phy*, align 8
  %5 = alloca %struct.asd_sas_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %8 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %9 = load i64, i64* @DLVRY_QUEUE_ENABLE, align 8
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = shl i64 1, %12
  %14 = sub i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = call i32 @hisi_sas_write32(%struct.hisi_hba* %8, i64 %9, i32 %15)
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %18 = load i64, i64* @SAS_AXI_USER3, align 8
  %19 = call i32 @hisi_sas_write32(%struct.hisi_hba* %17, i64 %18, i32 0)
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %21 = load i64, i64* @CFG_MAX_TAG, align 8
  %22 = call i32 @hisi_sas_write32(%struct.hisi_hba* %20, i64 %21, i32 268370944)
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %24 = load i64, i64* @HGC_SAS_TXFAIL_RETRY_CTRL, align 8
  %25 = call i32 @hisi_sas_write32(%struct.hisi_hba* %23, i64 %24, i32 264)
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %27 = load i64, i64* @CFG_AGING_TIME, align 8
  %28 = call i32 @hisi_sas_write32(%struct.hisi_hba* %26, i64 %27, i32 1)
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %30 = load i64, i64* @INT_COAL_EN, align 8
  %31 = call i32 @hisi_sas_write32(%struct.hisi_hba* %29, i64 %30, i32 1)
  %32 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %33 = load i64, i64* @OQ_INT_COAL_TIME, align 8
  %34 = call i32 @hisi_sas_write32(%struct.hisi_hba* %32, i64 %33, i32 1)
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %36 = load i64, i64* @OQ_INT_COAL_CNT, align 8
  %37 = call i32 @hisi_sas_write32(%struct.hisi_hba* %35, i64 %36, i32 1)
  %38 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %39 = load i64, i64* @CQ_INT_CONVERGE_EN, align 8
  %40 = load i32, i32* @hisi_sas_intr_conv, align 4
  %41 = call i32 @hisi_sas_write32(%struct.hisi_hba* %38, i64 %39, i32 %40)
  %42 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %43 = load i64, i64* @OQ_INT_SRC, align 8
  %44 = call i32 @hisi_sas_write32(%struct.hisi_hba* %42, i64 %43, i32 65535)
  %45 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %46 = load i64, i64* @ENT_INT_SRC1, align 8
  %47 = call i32 @hisi_sas_write32(%struct.hisi_hba* %45, i64 %46, i32 -1)
  %48 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %49 = load i64, i64* @ENT_INT_SRC2, align 8
  %50 = call i32 @hisi_sas_write32(%struct.hisi_hba* %48, i64 %49, i32 -1)
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %52 = load i64, i64* @ENT_INT_SRC3, align 8
  %53 = call i32 @hisi_sas_write32(%struct.hisi_hba* %51, i64 %52, i32 -1)
  %54 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %55 = load i64, i64* @ENT_INT_SRC_MSK1, align 8
  %56 = call i32 @hisi_sas_write32(%struct.hisi_hba* %54, i64 %55, i32 -16843010)
  %57 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %58 = load i64, i64* @ENT_INT_SRC_MSK2, align 8
  %59 = call i32 @hisi_sas_write32(%struct.hisi_hba* %57, i64 %58, i32 -16843010)
  %60 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %61 = load i64, i64* @ENT_INT_SRC_MSK3, align 8
  %62 = call i32 @hisi_sas_write32(%struct.hisi_hba* %60, i64 %61, i32 -4054785)
  %63 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %64 = load i64, i64* @CHNL_PHYUPDOWN_INT_MSK, align 8
  %65 = call i32 @hisi_sas_write32(%struct.hisi_hba* %63, i64 %64, i32 0)
  %66 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %67 = load i64, i64* @CHNL_ENT_INT_MSK, align 8
  %68 = call i32 @hisi_sas_write32(%struct.hisi_hba* %66, i64 %67, i32 0)
  %69 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %70 = load i64, i64* @HGC_COM_INT_MSK, align 8
  %71 = call i32 @hisi_sas_write32(%struct.hisi_hba* %69, i64 %70, i32 0)
  %72 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %73 = load i64, i64* @SAS_ECC_INTR_MSK, align 8
  %74 = call i32 @hisi_sas_write32(%struct.hisi_hba* %72, i64 %73, i32 1398101)
  %75 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %76 = load i64, i64* @AWQOS_AWCACHE_CFG, align 8
  %77 = call i32 @hisi_sas_write32(%struct.hisi_hba* %75, i64 %76, i32 61680)
  %78 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %79 = load i64, i64* @ARQOS_ARCACHE_CFG, align 8
  %80 = call i32 @hisi_sas_write32(%struct.hisi_hba* %78, i64 %79, i32 61680)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %96, %1
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %85 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %90 = load i64, i64* @OQ0_INT_SRC_MSK, align 8
  %91 = load i32, i32* %3, align 4
  %92 = mul nsw i32 4, %91
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = call i32 @hisi_sas_write32(%struct.hisi_hba* %89, i64 %94, i32 0)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %81

99:                                               ; preds = %81
  %100 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %101 = load i64, i64* @HYPER_STREAM_ID_EN_CFG, align 8
  %102 = call i32 @hisi_sas_write32(%struct.hisi_hba* %100, i64 %101, i32 1)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %227, %99
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %106 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %230

109:                                              ; preds = %103
  %110 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %111 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %110, i32 0, i32 9
  %112 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %112, i64 %114
  store %struct.hisi_sas_phy* %115, %struct.hisi_sas_phy** %4, align 8
  %116 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %4, align 8
  %117 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %116, i32 0, i32 0
  store %struct.asd_sas_phy* %117, %struct.asd_sas_phy** %5, align 8
  store i32 2048, i32* %6, align 4
  %118 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %119 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = icmp ne %struct.TYPE_2__* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %109
  %123 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %124 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SAS_LINK_RATE_1_5_GBPS, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %122, %109
  store i32 2133, i32* %6, align 4
  br label %141

131:                                              ; preds = %122
  %132 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %133 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @hisi_sas_get_prog_phy_linkrate_mask(i32 %138)
  %140 = or i32 %139, 2048
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %131, %130
  %142 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @PROG_PHY_LINK_RATE, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %142, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @SERDES_CFG, align 4
  %150 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %147, i32 %148, i32 %149, i32 1047552)
  %151 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @SAS_RX_TRAIN_TIMER, align 4
  %154 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %151, i32 %152, i32 %153, i32 81536)
  %155 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @CHL_INT0, align 4
  %158 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %155, i32 %156, i32 %157, i32 -1)
  %159 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @CHL_INT1, align 4
  %162 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %159, i32 %160, i32 %161, i32 -1)
  %163 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @CHL_INT2, align 4
  %166 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %163, i32 %164, i32 %165, i32 -1)
  %167 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @RXOP_CHECK_CFG_H, align 4
  %170 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %167, i32 %168, i32 %169, i32 4096)
  %171 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* @CHL_INT1_MSK, align 4
  %174 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %171, i32 %172, i32 %173, i32 -234520577)
  %175 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @CHL_INT2_MSK, align 4
  %178 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %175, i32 %176, i32 %177, i32 268434430)
  %179 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* @PHY_CTRL_RDY_MSK, align 4
  %182 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %179, i32 %180, i32 %181, i32 0)
  %183 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %184 = load i32, i32* %3, align 4
  %185 = load i32, i32* @PHYCTRL_NOT_RDY_MSK, align 4
  %186 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %183, i32 %184, i32 %185, i32 0)
  %187 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @PHYCTRL_DWS_RESET_MSK, align 4
  %190 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %187, i32 %188, i32 %189, i32 0)
  %191 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* @PHYCTRL_PHY_ENA_MSK, align 4
  %194 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %191, i32 %192, i32 %193, i32 0)
  %195 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %196 = load i32, i32* %3, align 4
  %197 = load i32, i32* @SL_RX_BCAST_CHK_MSK, align 4
  %198 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %195, i32 %196, i32 %197, i32 0)
  %199 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* @PHYCTRL_OOB_RESTART_MSK, align 4
  %202 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %199, i32 %200, i32 %201, i32 1)
  %203 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @STP_LINK_TIMER, align 4
  %206 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %203, i32 %204, i32 %205, i32 133669152)
  %207 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %208 = load i32, i32* %3, align 4
  %209 = load i32, i32* @CON_CFG_DRIVER, align 4
  %210 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %207, i32 %208, i32 %209, i32 2755073)
  %211 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %212 = load i32, i32* %3, align 4
  %213 = load i32, i32* @SAS_SSP_CON_TIMER_CFG, align 4
  %214 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %211, i32 %212, i32 %213, i32 50)
  %215 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %216 = load i32, i32* %3, align 4
  %217 = load i32, i32* @SAS_EC_INT_COAL_TIME, align 4
  %218 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %215, i32 %216, i32 %217, i32 51331648)
  %219 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %220 = load i32, i32* %3, align 4
  %221 = load i32, i32* @COARSETUNE_TIME, align 4
  %222 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %219, i32 %220, i32 %221, i32 30)
  %223 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %224 = load i32, i32* %3, align 4
  %225 = load i32, i32* @AIP_LIMIT, align 4
  %226 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %223, i32 %224, i32 %225, i32 196607)
  br label %227

227:                                              ; preds = %141
  %228 = load i32, i32* %3, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %3, align 4
  br label %103

230:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %315, %230
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %235 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ult i64 %233, %236
  br i1 %237, label %238, label %318

238:                                              ; preds = %231
  %239 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %240 = load i64, i64* @DLVRY_Q_0_BASE_ADDR_HI, align 8
  %241 = load i32, i32* %3, align 4
  %242 = mul nsw i32 %241, 20
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %240, %243
  %245 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %246 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %245, i32 0, i32 8
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @upper_32_bits(i32 %251)
  %253 = call i32 @hisi_sas_write32(%struct.hisi_hba* %239, i64 %244, i32 %252)
  %254 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %255 = load i64, i64* @DLVRY_Q_0_BASE_ADDR_LO, align 8
  %256 = load i32, i32* %3, align 4
  %257 = mul nsw i32 %256, 20
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %255, %258
  %260 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %261 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %260, i32 0, i32 8
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %3, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @lower_32_bits(i32 %266)
  %268 = call i32 @hisi_sas_write32(%struct.hisi_hba* %254, i64 %259, i32 %267)
  %269 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %270 = load i64, i64* @DLVRY_Q_0_DEPTH, align 8
  %271 = load i32, i32* %3, align 4
  %272 = mul nsw i32 %271, 20
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %270, %273
  %275 = load i32, i32* @HISI_SAS_QUEUE_SLOTS, align 4
  %276 = call i32 @hisi_sas_write32(%struct.hisi_hba* %269, i64 %274, i32 %275)
  %277 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %278 = load i64, i64* @COMPL_Q_0_BASE_ADDR_HI, align 8
  %279 = load i32, i32* %3, align 4
  %280 = mul nsw i32 %279, 20
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %278, %281
  %283 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %284 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %283, i32 0, i32 7
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %3, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @upper_32_bits(i32 %289)
  %291 = call i32 @hisi_sas_write32(%struct.hisi_hba* %277, i64 %282, i32 %290)
  %292 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %293 = load i64, i64* @COMPL_Q_0_BASE_ADDR_LO, align 8
  %294 = load i32, i32* %3, align 4
  %295 = mul nsw i32 %294, 20
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %293, %296
  %298 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %299 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %298, i32 0, i32 7
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %3, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @lower_32_bits(i32 %304)
  %306 = call i32 @hisi_sas_write32(%struct.hisi_hba* %292, i64 %297, i32 %305)
  %307 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %308 = load i64, i64* @COMPL_Q_0_DEPTH, align 8
  %309 = load i32, i32* %3, align 4
  %310 = mul nsw i32 %309, 20
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %308, %311
  %313 = load i32, i32* @HISI_SAS_QUEUE_SLOTS, align 4
  %314 = call i32 @hisi_sas_write32(%struct.hisi_hba* %307, i64 %312, i32 %313)
  br label %315

315:                                              ; preds = %238
  %316 = load i32, i32* %3, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %3, align 4
  br label %231

318:                                              ; preds = %231
  %319 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %320 = load i64, i64* @ITCT_BASE_ADDR_LO, align 8
  %321 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %322 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @lower_32_bits(i32 %323)
  %325 = call i32 @hisi_sas_write32(%struct.hisi_hba* %319, i64 %320, i32 %324)
  %326 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %327 = load i64, i64* @ITCT_BASE_ADDR_HI, align 8
  %328 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %329 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @upper_32_bits(i32 %330)
  %332 = call i32 @hisi_sas_write32(%struct.hisi_hba* %326, i64 %327, i32 %331)
  %333 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %334 = load i64, i64* @IOST_BASE_ADDR_LO, align 8
  %335 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %336 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @lower_32_bits(i32 %337)
  %339 = call i32 @hisi_sas_write32(%struct.hisi_hba* %333, i64 %334, i32 %338)
  %340 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %341 = load i64, i64* @IOST_BASE_ADDR_HI, align 8
  %342 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %343 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @upper_32_bits(i32 %344)
  %346 = call i32 @hisi_sas_write32(%struct.hisi_hba* %340, i64 %341, i32 %345)
  %347 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %348 = load i64, i64* @IO_BROKEN_MSG_ADDR_LO, align 8
  %349 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %350 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @lower_32_bits(i32 %351)
  %353 = call i32 @hisi_sas_write32(%struct.hisi_hba* %347, i64 %348, i32 %352)
  %354 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %355 = load i64, i64* @IO_BROKEN_MSG_ADDR_HI, align 8
  %356 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %357 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @upper_32_bits(i32 %358)
  %360 = call i32 @hisi_sas_write32(%struct.hisi_hba* %354, i64 %355, i32 %359)
  %361 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %362 = load i64, i64* @IO_SATA_BROKEN_MSG_ADDR_LO, align 8
  %363 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %364 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @lower_32_bits(i32 %365)
  %367 = call i32 @hisi_sas_write32(%struct.hisi_hba* %361, i64 %362, i32 %366)
  %368 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %369 = load i64, i64* @IO_SATA_BROKEN_MSG_ADDR_HI, align 8
  %370 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %371 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = call i32 @upper_32_bits(i32 %372)
  %374 = call i32 @hisi_sas_write32(%struct.hisi_hba* %368, i64 %369, i32 %373)
  %375 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %376 = load i64, i64* @SATA_INITI_D2H_STORE_ADDR_LO, align 8
  %377 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %378 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @lower_32_bits(i32 %379)
  %381 = call i32 @hisi_sas_write32(%struct.hisi_hba* %375, i64 %376, i32 %380)
  %382 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %383 = load i64, i64* @SATA_INITI_D2H_STORE_ADDR_HI, align 8
  %384 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %385 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @upper_32_bits(i32 %386)
  %388 = call i32 @hisi_sas_write32(%struct.hisi_hba* %382, i64 %383, i32 %387)
  %389 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %390 = load i64, i64* @SAS_RAS_INTR0_MASK, align 8
  %391 = call i32 @hisi_sas_write32(%struct.hisi_hba* %389, i64 %390, i32 0)
  %392 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %393 = load i64, i64* @SAS_RAS_INTR1_MASK, align 8
  %394 = call i32 @hisi_sas_write32(%struct.hisi_hba* %392, i64 %393, i32 0)
  %395 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %396 = load i64, i64* @SAS_RAS_INTR2_MASK, align 8
  %397 = call i32 @hisi_sas_write32(%struct.hisi_hba* %395, i64 %396, i32 0)
  %398 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %399 = load i64, i64* @CFG_SAS_RAS_INTR_MASK, align 8
  %400 = call i32 @hisi_sas_write32(%struct.hisi_hba* %398, i64 %399, i32 0)
  %401 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %402 = load i64, i64* @SAS_CFG_DRIVE_VLD, align 8
  %403 = call i32 @hisi_sas_write32(%struct.hisi_hba* %401, i64 %402, i32 134217983)
  %404 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %405 = load i64, i64* @SAS_GPIO_TX_0_1, align 8
  %406 = call i32 @hisi_sas_write32(%struct.hisi_hba* %404, i64 %405, i32 -2139062144)
  %407 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %408 = load i64, i64* @SAS_GPIO_TX_0_1, align 8
  %409 = add nsw i64 %408, 4
  %410 = call i32 @hisi_sas_write32(%struct.hisi_hba* %407, i64 %409, i32 -2139062144)
  %411 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %412 = load i64, i64* @SAS_GPIO_CFG_1, align 8
  %413 = call i32 @hisi_sas_write32(%struct.hisi_hba* %411, i64 %412, i32 1185536)
  %414 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %415 = load i64, i64* @SAS_GPIO_CFG_0, align 8
  %416 = call i32 @hisi_sas_write32(%struct.hisi_hba* %414, i64 %415, i32 8388608)
  ret void
}

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i32) #1

declare dso_local i32 @hisi_sas_get_prog_phy_linkrate_mask(i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
