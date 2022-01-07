; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_init_reg_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_init_reg_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i64, i32, i32, i32, i32, i32*, i32* }

@DLVRY_QUEUE_ENABLE = common dso_local global i64 0, align 8
@HGC_TRANS_TASK_CNT_LIMIT = common dso_local global i64 0, align 8
@DEVICE_MSG_WORK_MODE = common dso_local global i64 0, align 8
@HGC_SAS_TXFAIL_RETRY_CTRL = common dso_local global i64 0, align 8
@HGC_ERR_STAT_EN = common dso_local global i64 0, align 8
@CFG_1US_TIMER_TRSH = common dso_local global i64 0, align 8
@HGC_GET_ITV_TIME = common dso_local global i64 0, align 8
@I_T_NEXUS_LOSS_TIME = common dso_local global i64 0, align 8
@BUS_INACTIVE_LIMIT_TIME = common dso_local global i64 0, align 8
@REJECT_TO_OPEN_LIMIT_TIME = common dso_local global i64 0, align 8
@CFG_AGING_TIME = common dso_local global i64 0, align 8
@HGC_DFX_CFG2 = common dso_local global i64 0, align 8
@FIS_LIST_BADDR_L = common dso_local global i64 0, align 8
@INT_COAL_EN = common dso_local global i64 0, align 8
@OQ_INT_COAL_TIME = common dso_local global i64 0, align 8
@OQ_INT_COAL_CNT = common dso_local global i64 0, align 8
@ENT_INT_COAL_TIME = common dso_local global i64 0, align 8
@ENT_INT_COAL_CNT = common dso_local global i64 0, align 8
@OQ_INT_SRC = common dso_local global i64 0, align 8
@OQ_INT_SRC_MSK = common dso_local global i64 0, align 8
@ENT_INT_SRC1 = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK1 = common dso_local global i64 0, align 8
@ENT_INT_SRC2 = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK2 = common dso_local global i64 0, align 8
@SAS_ECC_INTR_MSK = common dso_local global i64 0, align 8
@AXI_AHB_CLK_CFG = common dso_local global i64 0, align 8
@CFG_SAS_CONFIG = common dso_local global i64 0, align 8
@PROG_PHY_LINK_RATE = common dso_local global i32 0, align 4
@PHY_CONFIG2 = common dso_local global i32 0, align 4
@PHY_RATE_NEGO = common dso_local global i32 0, align 4
@PHY_PCN = common dso_local global i32 0, align 4
@SL_TOUT_CFG = common dso_local global i32 0, align 4
@DONE_RECEIVED_TIME = common dso_local global i32 0, align 4
@RXOP_CHECK_CFG_H = common dso_local global i32 0, align 4
@CON_CFG_DRIVER = common dso_local global i32 0, align 4
@CHL_INT_COAL_EN = common dso_local global i32 0, align 4
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
@BROKEN_MSG_ADDR_LO = common dso_local global i64 0, align 8
@BROKEN_MSG_ADDR_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @init_reg_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_reg_v1_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %4 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %5 = load i64, i64* @DLVRY_QUEUE_ENABLE, align 8
  %6 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %7 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = shl i64 1, %8
  %10 = sub i64 %9, 1
  %11 = trunc i64 %10 to i32
  %12 = call i32 @hisi_sas_write32(%struct.hisi_hba* %4, i64 %5, i32 %11)
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %14 = load i64, i64* @HGC_TRANS_TASK_CNT_LIMIT, align 8
  %15 = call i32 @hisi_sas_write32(%struct.hisi_hba* %13, i64 %14, i32 17)
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %17 = load i64, i64* @DEVICE_MSG_WORK_MODE, align 8
  %18 = call i32 @hisi_sas_write32(%struct.hisi_hba* %16, i64 %17, i32 1)
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %20 = load i64, i64* @HGC_SAS_TXFAIL_RETRY_CTRL, align 8
  %21 = call i32 @hisi_sas_write32(%struct.hisi_hba* %19, i64 %20, i32 511)
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %23 = load i64, i64* @HGC_ERR_STAT_EN, align 8
  %24 = call i32 @hisi_sas_write32(%struct.hisi_hba* %22, i64 %23, i32 1025)
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %26 = load i64, i64* @CFG_1US_TIMER_TRSH, align 8
  %27 = call i32 @hisi_sas_write32(%struct.hisi_hba* %25, i64 %26, i32 100)
  %28 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %29 = load i64, i64* @HGC_GET_ITV_TIME, align 8
  %30 = call i32 @hisi_sas_write32(%struct.hisi_hba* %28, i64 %29, i32 1)
  %31 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %32 = load i64, i64* @I_T_NEXUS_LOSS_TIME, align 8
  %33 = call i32 @hisi_sas_write32(%struct.hisi_hba* %31, i64 %32, i32 100)
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %35 = load i64, i64* @BUS_INACTIVE_LIMIT_TIME, align 8
  %36 = call i32 @hisi_sas_write32(%struct.hisi_hba* %34, i64 %35, i32 10000)
  %37 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %38 = load i64, i64* @REJECT_TO_OPEN_LIMIT_TIME, align 8
  %39 = call i32 @hisi_sas_write32(%struct.hisi_hba* %37, i64 %38, i32 1)
  %40 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %41 = load i64, i64* @CFG_AGING_TIME, align 8
  %42 = call i32 @hisi_sas_write32(%struct.hisi_hba* %40, i64 %41, i32 31250)
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %44 = load i64, i64* @HGC_DFX_CFG2, align 8
  %45 = call i32 @hisi_sas_write32(%struct.hisi_hba* %43, i64 %44, i32 40000)
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %47 = load i64, i64* @FIS_LIST_BADDR_L, align 8
  %48 = call i32 @hisi_sas_write32(%struct.hisi_hba* %46, i64 %47, i32 2)
  %49 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %50 = load i64, i64* @INT_COAL_EN, align 8
  %51 = call i32 @hisi_sas_write32(%struct.hisi_hba* %49, i64 %50, i32 12)
  %52 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %53 = load i64, i64* @OQ_INT_COAL_TIME, align 8
  %54 = call i32 @hisi_sas_write32(%struct.hisi_hba* %52, i64 %53, i32 100000)
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %56 = load i64, i64* @OQ_INT_COAL_CNT, align 8
  %57 = call i32 @hisi_sas_write32(%struct.hisi_hba* %55, i64 %56, i32 1)
  %58 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %59 = load i64, i64* @ENT_INT_COAL_TIME, align 8
  %60 = call i32 @hisi_sas_write32(%struct.hisi_hba* %58, i64 %59, i32 1)
  %61 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %62 = load i64, i64* @ENT_INT_COAL_CNT, align 8
  %63 = call i32 @hisi_sas_write32(%struct.hisi_hba* %61, i64 %62, i32 1)
  %64 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %65 = load i64, i64* @OQ_INT_SRC, align 8
  %66 = call i32 @hisi_sas_write32(%struct.hisi_hba* %64, i64 %65, i32 -1)
  %67 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %68 = load i64, i64* @OQ_INT_SRC_MSK, align 8
  %69 = call i32 @hisi_sas_write32(%struct.hisi_hba* %67, i64 %68, i32 0)
  %70 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %71 = load i64, i64* @ENT_INT_SRC1, align 8
  %72 = call i32 @hisi_sas_write32(%struct.hisi_hba* %70, i64 %71, i32 -1)
  %73 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %74 = load i64, i64* @ENT_INT_SRC_MSK1, align 8
  %75 = call i32 @hisi_sas_write32(%struct.hisi_hba* %73, i64 %74, i32 0)
  %76 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %77 = load i64, i64* @ENT_INT_SRC2, align 8
  %78 = call i32 @hisi_sas_write32(%struct.hisi_hba* %76, i64 %77, i32 -1)
  %79 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %80 = load i64, i64* @ENT_INT_SRC_MSK2, align 8
  %81 = call i32 @hisi_sas_write32(%struct.hisi_hba* %79, i64 %80, i32 0)
  %82 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %83 = load i64, i64* @SAS_ECC_INTR_MSK, align 8
  %84 = call i32 @hisi_sas_write32(%struct.hisi_hba* %82, i64 %83, i32 0)
  %85 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %86 = load i64, i64* @AXI_AHB_CLK_CFG, align 8
  %87 = call i32 @hisi_sas_write32(%struct.hisi_hba* %85, i64 %86, i32 2)
  %88 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %89 = load i64, i64* @CFG_SAS_CONFIG, align 8
  %90 = call i32 @hisi_sas_write32(%struct.hisi_hba* %88, i64 %89, i32 570425344)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %142, %1
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %94 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %145

97:                                               ; preds = %91
  %98 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @PROG_PHY_LINK_RATE, align 4
  %101 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %98, i32 %99, i32 %100, i32 2186)
  %102 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @PHY_CONFIG2, align 4
  %105 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %102, i32 %103, i32 %104, i32 508032)
  %106 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @PHY_RATE_NEGO, align 4
  %109 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %106, i32 %107, i32 %108, i32 68546048)
  %110 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @PHY_PCN, align 4
  %113 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %110, i32 %111, i32 %112, i32 -2136473600)
  %114 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @SL_TOUT_CFG, align 4
  %117 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %114, i32 %115, i32 %116, i32 2105376125)
  %118 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @DONE_RECEIVED_TIME, align 4
  %121 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %118, i32 %119, i32 %120, i32 0)
  %122 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @RXOP_CHECK_CFG_H, align 4
  %125 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %122, i32 %123, i32 %124, i32 4096)
  %126 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @DONE_RECEIVED_TIME, align 4
  %129 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %126, i32 %127, i32 %128, i32 0)
  %130 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @CON_CFG_DRIVER, align 4
  %133 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %130, i32 %131, i32 %132, i32 81674)
  %134 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @CHL_INT_COAL_EN, align 4
  %137 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %134, i32 %135, i32 %136, i32 3)
  %138 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @DONE_RECEIVED_TIME, align 4
  %141 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %138, i32 %139, i32 %140, i32 8)
  br label %142

142:                                              ; preds = %97
  %143 = load i32, i32* %3, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %3, align 4
  br label %91

145:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %230, %145
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %150 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ult i64 %148, %151
  br i1 %152, label %153, label %233

153:                                              ; preds = %146
  %154 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %155 = load i64, i64* @DLVRY_Q_0_BASE_ADDR_HI, align 8
  %156 = load i32, i32* %3, align 4
  %157 = mul nsw i32 %156, 20
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %155, %158
  %160 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %161 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %160, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @upper_32_bits(i32 %166)
  %168 = call i32 @hisi_sas_write32(%struct.hisi_hba* %154, i64 %159, i32 %167)
  %169 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %170 = load i64, i64* @DLVRY_Q_0_BASE_ADDR_LO, align 8
  %171 = load i32, i32* %3, align 4
  %172 = mul nsw i32 %171, 20
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %170, %173
  %175 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %176 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @lower_32_bits(i32 %181)
  %183 = call i32 @hisi_sas_write32(%struct.hisi_hba* %169, i64 %174, i32 %182)
  %184 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %185 = load i64, i64* @DLVRY_Q_0_DEPTH, align 8
  %186 = load i32, i32* %3, align 4
  %187 = mul nsw i32 %186, 20
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %185, %188
  %190 = load i32, i32* @HISI_SAS_QUEUE_SLOTS, align 4
  %191 = call i32 @hisi_sas_write32(%struct.hisi_hba* %184, i64 %189, i32 %190)
  %192 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %193 = load i64, i64* @COMPL_Q_0_BASE_ADDR_HI, align 8
  %194 = load i32, i32* %3, align 4
  %195 = mul nsw i32 %194, 20
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %193, %196
  %198 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %199 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @upper_32_bits(i32 %204)
  %206 = call i32 @hisi_sas_write32(%struct.hisi_hba* %192, i64 %197, i32 %205)
  %207 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %208 = load i64, i64* @COMPL_Q_0_BASE_ADDR_LO, align 8
  %209 = load i32, i32* %3, align 4
  %210 = mul nsw i32 %209, 20
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %208, %211
  %213 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %214 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @lower_32_bits(i32 %219)
  %221 = call i32 @hisi_sas_write32(%struct.hisi_hba* %207, i64 %212, i32 %220)
  %222 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %223 = load i64, i64* @COMPL_Q_0_DEPTH, align 8
  %224 = load i32, i32* %3, align 4
  %225 = mul nsw i32 %224, 20
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %223, %226
  %228 = load i32, i32* @HISI_SAS_QUEUE_SLOTS, align 4
  %229 = call i32 @hisi_sas_write32(%struct.hisi_hba* %222, i64 %227, i32 %228)
  br label %230

230:                                              ; preds = %153
  %231 = load i32, i32* %3, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %3, align 4
  br label %146

233:                                              ; preds = %146
  %234 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %235 = load i64, i64* @ITCT_BASE_ADDR_LO, align 8
  %236 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %237 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @lower_32_bits(i32 %238)
  %240 = call i32 @hisi_sas_write32(%struct.hisi_hba* %234, i64 %235, i32 %239)
  %241 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %242 = load i64, i64* @ITCT_BASE_ADDR_HI, align 8
  %243 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %244 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @upper_32_bits(i32 %245)
  %247 = call i32 @hisi_sas_write32(%struct.hisi_hba* %241, i64 %242, i32 %246)
  %248 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %249 = load i64, i64* @IOST_BASE_ADDR_LO, align 8
  %250 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %251 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @lower_32_bits(i32 %252)
  %254 = call i32 @hisi_sas_write32(%struct.hisi_hba* %248, i64 %249, i32 %253)
  %255 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %256 = load i64, i64* @IOST_BASE_ADDR_HI, align 8
  %257 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %258 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @upper_32_bits(i32 %259)
  %261 = call i32 @hisi_sas_write32(%struct.hisi_hba* %255, i64 %256, i32 %260)
  %262 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %263 = load i64, i64* @BROKEN_MSG_ADDR_LO, align 8
  %264 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %265 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @lower_32_bits(i32 %266)
  %268 = call i32 @hisi_sas_write32(%struct.hisi_hba* %262, i64 %263, i32 %267)
  %269 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %270 = load i64, i64* @BROKEN_MSG_ADDR_HI, align 8
  %271 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %272 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @upper_32_bits(i32 %273)
  %275 = call i32 @hisi_sas_write32(%struct.hisi_hba* %269, i64 %270, i32 %274)
  ret void
}

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
