; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_sata_cfg_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_sata_cfg_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_phy_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@MAX_LANE = common dso_local global i32 0, align 4
@RXTX_REG147 = common dso_local global i32 0, align 4
@RXTX_REG0 = common dso_local global i32 0, align 4
@RXTX_REG1 = common dso_local global i32 0, align 4
@RXTX_REG2 = common dso_local global i32 0, align 4
@RXTX_REG4 = common dso_local global i32 0, align 4
@CMU_REG9_WORD_LEN_20BIT = common dso_local global i32 0, align 4
@preA3Chip = common dso_local global i64 0, align 8
@RXTX_REG5 = common dso_local global i32 0, align 4
@RXTX_REG6 = common dso_local global i32 0, align 4
@RXTX_REG7 = common dso_local global i32 0, align 4
@RXTX_REG8 = common dso_local global i32 0, align 4
@RXTX_REG11 = common dso_local global i32 0, align 4
@RXTX_REG12 = common dso_local global i32 0, align 4
@RXTX_REG26 = common dso_local global i32 0, align 4
@RXTX_REG28 = common dso_local global i32 0, align 4
@RXTX_REG31 = common dso_local global i32 0, align 4
@RXTX_REG61 = common dso_local global i32 0, align 4
@RXTX_REG62 = common dso_local global i32 0, align 4
@RXTX_REG81 = common dso_local global i32 0, align 4
@RXTX_REG96 = common dso_local global i32 0, align 4
@RXTX_REG99 = common dso_local global i32 0, align 4
@RXTX_REG102 = common dso_local global i32 0, align 4
@RXTX_REG114 = common dso_local global i32 0, align 4
@RXTX_REG125 = common dso_local global i32 0, align 4
@RXTX_REG127 = common dso_local global i32 0, align 4
@RXTX_REG128 = common dso_local global i32 0, align 4
@RXTX_REG145 = common dso_local global i32 0, align 4
@RXTX_REG148 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_phy_ctx*)* @xgene_phy_sata_cfg_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_phy_sata_cfg_lanes(%struct.xgene_phy_ctx* %0) #0 {
  %2 = alloca %struct.xgene_phy_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgene_phy_ctx* %0, %struct.xgene_phy_ctx** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %529, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAX_LANE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %532

11:                                               ; preds = %7
  %12 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RXTX_REG147, align 4
  %15 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %12, i32 %13, i32 %14, i32 6)
  %16 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RXTX_REG0, align 4
  %19 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %16, i32 %17, i32 %18, i32* %3)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @RXTX_REG0_CTLE_EQ_HR_SET(i32 %20, i32 16)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @RXTX_REG0_CTLE_EQ_QR_SET(i32 %22, i32 16)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @RXTX_REG0_CTLE_EQ_FR_SET(i32 %24, i32 16)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RXTX_REG0, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RXTX_REG1, align 4
  %34 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %31, i32 %32, i32 %33, i32* %3)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @RXTX_REG1_RXACVCM_SET(i32 %35, i32 7)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 3
  %44 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %43, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %41, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @RXTX_REG1_CTLE_EQ_SET(i32 %37, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @RXTX_REG1, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @RXTX_REG2, align 4
  %65 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %62, i32 %63, i32 %64, i32* %3)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @RXTX_REG2_VTT_ENA_SET(i32 %66, i32 1)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @RXTX_REG2_VTT_SEL_SET(i32 %68, i32 1)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @RXTX_REG2_TX_FIFO_ENA_SET(i32 %70, i32 1)
  store i32 %71, i32* %3, align 4
  %72 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @RXTX_REG2, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @RXTX_REG4, align 4
  %80 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %77, i32 %78, i32 %79, i32* %3)
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @CMU_REG9_WORD_LEN_20BIT, align 4
  %83 = call i32 @RXTX_REG4_TX_WORD_MODE_SET(i32 %81, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @RXTX_REG4, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i64, i64* @preA3Chip, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %11
  %92 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @RXTX_REG1, align 4
  %95 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %92, i32 %93, i32 %94, i32* %3)
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @RXTX_REG1_RXVREG1_SET(i32 %96, i32 2)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @RXTX_REG1_RXIREF_ADJ_SET(i32 %98, i32 2)
  store i32 %99, i32* %3, align 4
  %100 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @RXTX_REG1, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %91, %11
  %106 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @RXTX_REG5, align 4
  %109 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %106, i32 %107, i32 %108, i32* %3)
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %112 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = mul nsw i32 %115, 3
  %117 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %118 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %116, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %114, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @RXTX_REG5_TX_CN1_SET(i32 %110, i32 %128)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %132 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 5
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = mul nsw i32 %135, 3
  %137 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %138 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %136, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %134, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @RXTX_REG5_TX_CP1_SET(i32 %130, i32 %148)
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* %3, align 4
  %151 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %152 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = mul nsw i32 %155, 3
  %157 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %158 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %156, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %154, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @RXTX_REG5_TX_CN2_SET(i32 %150, i32 %168)
  store i32 %169, i32* %3, align 4
  %170 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @RXTX_REG5, align 4
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %170, i32 %171, i32 %172, i32 %173)
  %175 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @RXTX_REG6, align 4
  %178 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %175, i32 %176, i32 %177, i32* %3)
  %179 = load i32, i32* %3, align 4
  %180 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %181 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = mul nsw i32 %184, 3
  %186 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %187 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %185, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %183, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @RXTX_REG6_TXAMP_CNTL_SET(i32 %179, i32 %197)
  store i32 %198, i32* %3, align 4
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @RXTX_REG6_TXAMP_ENA_SET(i32 %199, i32 1)
  store i32 %200, i32* %3, align 4
  %201 = load i32, i32* %3, align 4
  %202 = call i32 @RXTX_REG6_TX_IDLE_SET(i32 %201, i32 0)
  store i32 %202, i32* %3, align 4
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @RXTX_REG6_RX_BIST_RESYNC_SET(i32 %203, i32 0)
  store i32 %204, i32* %3, align 4
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @RXTX_REG6_RX_BIST_ERRCNT_RD_SET(i32 %205, i32 0)
  store i32 %206, i32* %3, align 4
  %207 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @RXTX_REG6, align 4
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @RXTX_REG7, align 4
  %215 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %212, i32 %213, i32 %214, i32* %3)
  %216 = load i32, i32* %3, align 4
  %217 = call i32 @RXTX_REG7_BIST_ENA_RX_SET(i32 %216, i32 0)
  store i32 %217, i32* %3, align 4
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* @CMU_REG9_WORD_LEN_20BIT, align 4
  %220 = call i32 @RXTX_REG7_RX_WORD_MODE_SET(i32 %218, i32 %219)
  store i32 %220, i32* %3, align 4
  %221 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @RXTX_REG7, align 4
  %224 = load i32, i32* %3, align 4
  %225 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %221, i32 %222, i32 %223, i32 %224)
  %226 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @RXTX_REG8, align 4
  %229 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %226, i32 %227, i32 %228, i32* %3)
  %230 = load i32, i32* %3, align 4
  %231 = call i32 @RXTX_REG8_CDR_LOOP_ENA_SET(i32 %230, i32 1)
  store i32 %231, i32* %3, align 4
  %232 = load i32, i32* %3, align 4
  %233 = call i32 @RXTX_REG8_CDR_BYPASS_RXLOS_SET(i32 %232, i32 0)
  store i32 %233, i32* %3, align 4
  %234 = load i32, i32* %3, align 4
  %235 = call i32 @RXTX_REG8_SSC_ENABLE_SET(i32 %234, i32 1)
  store i32 %235, i32* %3, align 4
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @RXTX_REG8_SD_DISABLE_SET(i32 %236, i32 0)
  store i32 %237, i32* %3, align 4
  %238 = load i32, i32* %3, align 4
  %239 = call i32 @RXTX_REG8_SD_VREF_SET(i32 %238, i32 4)
  store i32 %239, i32* %3, align 4
  %240 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @RXTX_REG8, align 4
  %243 = load i32, i32* %3, align 4
  %244 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %240, i32 %241, i32 %242, i32 %243)
  %245 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @RXTX_REG11, align 4
  %248 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %245, i32 %246, i32 %247, i32* %3)
  %249 = load i32, i32* %3, align 4
  %250 = call i32 @RXTX_REG11_PHASE_ADJUST_LIMIT_SET(i32 %249, i32 0)
  store i32 %250, i32* %3, align 4
  %251 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* @RXTX_REG11, align 4
  %254 = load i32, i32* %3, align 4
  %255 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %251, i32 %252, i32 %253, i32 %254)
  %256 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @RXTX_REG12, align 4
  %259 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %256, i32 %257, i32 %258, i32* %3)
  %260 = load i32, i32* %3, align 4
  %261 = call i32 @RXTX_REG12_LATCH_OFF_ENA_SET(i32 %260, i32 1)
  store i32 %261, i32* %3, align 4
  %262 = load i32, i32* %3, align 4
  %263 = call i32 @RXTX_REG12_SUMOS_ENABLE_SET(i32 %262, i32 0)
  store i32 %263, i32* %3, align 4
  %264 = load i32, i32* %3, align 4
  %265 = call i32 @RXTX_REG12_RX_DET_TERM_ENABLE_SET(i32 %264, i32 0)
  store i32 %265, i32* %3, align 4
  %266 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* @RXTX_REG12, align 4
  %269 = load i32, i32* %3, align 4
  %270 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %266, i32 %267, i32 %268, i32 %269)
  %271 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* @RXTX_REG26, align 4
  %274 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %271, i32 %272, i32 %273, i32* %3)
  %275 = load i32, i32* %3, align 4
  %276 = call i32 @RXTX_REG26_PERIOD_ERROR_LATCH_SET(i32 %275, i32 0)
  store i32 %276, i32* %3, align 4
  %277 = load i32, i32* %3, align 4
  %278 = call i32 @RXTX_REG26_BLWC_ENA_SET(i32 %277, i32 1)
  store i32 %278, i32* %3, align 4
  %279 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %280 = load i32, i32* %6, align 4
  %281 = load i32, i32* @RXTX_REG26, align 4
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %279, i32 %280, i32 %281, i32 %282)
  %284 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @RXTX_REG28, align 4
  %287 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %284, i32 %285, i32 %286, i32 0)
  %288 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %289 = load i32, i32* %6, align 4
  %290 = load i32, i32* @RXTX_REG31, align 4
  %291 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %288, i32 %289, i32 %290, i32 0)
  %292 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %293 = load i32, i32* %6, align 4
  %294 = load i32, i32* @RXTX_REG61, align 4
  %295 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %292, i32 %293, i32 %294, i32* %3)
  %296 = load i32, i32* %3, align 4
  %297 = call i32 @RXTX_REG61_ISCAN_INBERT_SET(i32 %296, i32 1)
  store i32 %297, i32* %3, align 4
  %298 = load i32, i32* %3, align 4
  %299 = call i32 @RXTX_REG61_LOADFREQ_SHIFT_SET(i32 %298, i32 0)
  store i32 %299, i32* %3, align 4
  %300 = load i32, i32* %3, align 4
  %301 = call i32 @RXTX_REG61_EYE_COUNT_WIDTH_SEL_SET(i32 %300, i32 0)
  store i32 %301, i32* %3, align 4
  %302 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* @RXTX_REG61, align 4
  %305 = load i32, i32* %3, align 4
  %306 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %302, i32 %303, i32 %304, i32 %305)
  %307 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* @RXTX_REG62, align 4
  %310 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %307, i32 %308, i32 %309, i32* %3)
  %311 = load i32, i32* %3, align 4
  %312 = call i32 @RXTX_REG62_PERIOD_H1_QLATCH_SET(i32 %311, i32 0)
  store i32 %312, i32* %3, align 4
  %313 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* @RXTX_REG62, align 4
  %316 = load i32, i32* %3, align 4
  %317 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %313, i32 %314, i32 %315, i32 %316)
  store i32 0, i32* %5, align 4
  br label %318

318:                                              ; preds = %341, %105
  %319 = load i32, i32* %5, align 4
  %320 = icmp slt i32 %319, 9
  br i1 %320, label %321, label %344

321:                                              ; preds = %318
  %322 = load i32, i32* @RXTX_REG81, align 4
  %323 = load i32, i32* %5, align 4
  %324 = mul nsw i32 %323, 2
  %325 = add nsw i32 %322, %324
  store i32 %325, i32* %4, align 4
  %326 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %327 = load i32, i32* %6, align 4
  %328 = load i32, i32* %4, align 4
  %329 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %326, i32 %327, i32 %328, i32* %3)
  %330 = load i32, i32* %3, align 4
  %331 = call i32 @RXTX_REG89_MU_TH7_SET(i32 %330, i32 14)
  store i32 %331, i32* %3, align 4
  %332 = load i32, i32* %3, align 4
  %333 = call i32 @RXTX_REG89_MU_TH8_SET(i32 %332, i32 14)
  store i32 %333, i32* %3, align 4
  %334 = load i32, i32* %3, align 4
  %335 = call i32 @RXTX_REG89_MU_TH9_SET(i32 %334, i32 14)
  store i32 %335, i32* %3, align 4
  %336 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* %4, align 4
  %339 = load i32, i32* %3, align 4
  %340 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %336, i32 %337, i32 %338, i32 %339)
  br label %341

341:                                              ; preds = %321
  %342 = load i32, i32* %5, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %5, align 4
  br label %318

344:                                              ; preds = %318
  store i32 0, i32* %5, align 4
  br label %345

345:                                              ; preds = %368, %344
  %346 = load i32, i32* %5, align 4
  %347 = icmp slt i32 %346, 3
  br i1 %347, label %348, label %371

348:                                              ; preds = %345
  %349 = load i32, i32* @RXTX_REG96, align 4
  %350 = load i32, i32* %5, align 4
  %351 = mul nsw i32 %350, 2
  %352 = add nsw i32 %349, %351
  store i32 %352, i32* %4, align 4
  %353 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %354 = load i32, i32* %6, align 4
  %355 = load i32, i32* %4, align 4
  %356 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %353, i32 %354, i32 %355, i32* %3)
  %357 = load i32, i32* %3, align 4
  %358 = call i32 @RXTX_REG96_MU_FREQ1_SET(i32 %357, i32 16)
  store i32 %358, i32* %3, align 4
  %359 = load i32, i32* %3, align 4
  %360 = call i32 @RXTX_REG96_MU_FREQ2_SET(i32 %359, i32 16)
  store i32 %360, i32* %3, align 4
  %361 = load i32, i32* %3, align 4
  %362 = call i32 @RXTX_REG96_MU_FREQ3_SET(i32 %361, i32 16)
  store i32 %362, i32* %3, align 4
  %363 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %364 = load i32, i32* %6, align 4
  %365 = load i32, i32* %4, align 4
  %366 = load i32, i32* %3, align 4
  %367 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %363, i32 %364, i32 %365, i32 %366)
  br label %368

368:                                              ; preds = %348
  %369 = load i32, i32* %5, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %5, align 4
  br label %345

371:                                              ; preds = %345
  store i32 0, i32* %5, align 4
  br label %372

372:                                              ; preds = %395, %371
  %373 = load i32, i32* %5, align 4
  %374 = icmp slt i32 %373, 3
  br i1 %374, label %375, label %398

375:                                              ; preds = %372
  %376 = load i32, i32* @RXTX_REG99, align 4
  %377 = load i32, i32* %5, align 4
  %378 = mul nsw i32 %377, 2
  %379 = add nsw i32 %376, %378
  store i32 %379, i32* %4, align 4
  %380 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %381 = load i32, i32* %6, align 4
  %382 = load i32, i32* %4, align 4
  %383 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %380, i32 %381, i32 %382, i32* %3)
  %384 = load i32, i32* %3, align 4
  %385 = call i32 @RXTX_REG99_MU_PHASE1_SET(i32 %384, i32 7)
  store i32 %385, i32* %3, align 4
  %386 = load i32, i32* %3, align 4
  %387 = call i32 @RXTX_REG99_MU_PHASE2_SET(i32 %386, i32 7)
  store i32 %387, i32* %3, align 4
  %388 = load i32, i32* %3, align 4
  %389 = call i32 @RXTX_REG99_MU_PHASE3_SET(i32 %388, i32 7)
  store i32 %389, i32* %3, align 4
  %390 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* %4, align 4
  %393 = load i32, i32* %3, align 4
  %394 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %390, i32 %391, i32 %392, i32 %393)
  br label %395

395:                                              ; preds = %375
  %396 = load i32, i32* %5, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %5, align 4
  br label %372

398:                                              ; preds = %372
  %399 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %400 = load i32, i32* %6, align 4
  %401 = load i32, i32* @RXTX_REG102, align 4
  %402 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %399, i32 %400, i32 %401, i32* %3)
  %403 = load i32, i32* %3, align 4
  %404 = call i32 @RXTX_REG102_FREQLOOP_LIMIT_SET(i32 %403, i32 0)
  store i32 %404, i32* %3, align 4
  %405 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %406 = load i32, i32* %6, align 4
  %407 = load i32, i32* @RXTX_REG102, align 4
  %408 = load i32, i32* %3, align 4
  %409 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %405, i32 %406, i32 %407, i32 %408)
  %410 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %411 = load i32, i32* %6, align 4
  %412 = load i32, i32* @RXTX_REG114, align 4
  %413 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %410, i32 %411, i32 %412, i32 65504)
  %414 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %415 = load i32, i32* %6, align 4
  %416 = load i32, i32* @RXTX_REG125, align 4
  %417 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %414, i32 %415, i32 %416, i32* %3)
  %418 = load i32, i32* %3, align 4
  %419 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %420 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 2
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %6, align 4
  %424 = mul nsw i32 %423, 3
  %425 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %426 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 0
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %6, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = add nsw i32 %424, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %422, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @RXTX_REG125_SIGN_PQ_SET(i32 %418, i32 %436)
  store i32 %437, i32* %3, align 4
  %438 = load i32, i32* %3, align 4
  %439 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %440 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %440, i32 0, i32 1
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %6, align 4
  %444 = mul nsw i32 %443, 3
  %445 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %446 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* %6, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = add nsw i32 %444, %452
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %442, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @RXTX_REG125_PQ_REG_SET(i32 %438, i32 %456)
  store i32 %457, i32* %3, align 4
  %458 = load i32, i32* %3, align 4
  %459 = call i32 @RXTX_REG125_PHZ_MANUAL_SET(i32 %458, i32 1)
  store i32 %459, i32* %3, align 4
  %460 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %461 = load i32, i32* %6, align 4
  %462 = load i32, i32* @RXTX_REG125, align 4
  %463 = load i32, i32* %3, align 4
  %464 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %460, i32 %461, i32 %462, i32 %463)
  %465 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %466 = load i32, i32* %6, align 4
  %467 = load i32, i32* @RXTX_REG127, align 4
  %468 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %465, i32 %466, i32 %467, i32* %3)
  %469 = load i32, i32* %3, align 4
  %470 = call i32 @RXTX_REG127_LATCH_MAN_CAL_ENA_SET(i32 %469, i32 0)
  store i32 %470, i32* %3, align 4
  %471 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %472 = load i32, i32* %6, align 4
  %473 = load i32, i32* @RXTX_REG127, align 4
  %474 = load i32, i32* %3, align 4
  %475 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %471, i32 %472, i32 %473, i32 %474)
  %476 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %477 = load i32, i32* %6, align 4
  %478 = load i32, i32* @RXTX_REG128, align 4
  %479 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %476, i32 %477, i32 %478, i32* %3)
  %480 = load i32, i32* %3, align 4
  %481 = call i32 @RXTX_REG128_LATCH_CAL_WAIT_SEL_SET(i32 %480, i32 3)
  store i32 %481, i32* %3, align 4
  %482 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %483 = load i32, i32* %6, align 4
  %484 = load i32, i32* @RXTX_REG128, align 4
  %485 = load i32, i32* %3, align 4
  %486 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %482, i32 %483, i32 %484, i32 %485)
  %487 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %488 = load i32, i32* %6, align 4
  %489 = load i32, i32* @RXTX_REG145, align 4
  %490 = call i32 @serdes_rd(%struct.xgene_phy_ctx* %487, i32 %488, i32 %489, i32* %3)
  %491 = load i32, i32* %3, align 4
  %492 = call i32 @RXTX_REG145_RXDFE_CONFIG_SET(i32 %491, i32 3)
  store i32 %492, i32* %3, align 4
  %493 = load i32, i32* %3, align 4
  %494 = call i32 @RXTX_REG145_TX_IDLE_SATA_SET(i32 %493, i32 0)
  store i32 %494, i32* %3, align 4
  %495 = load i64, i64* @preA3Chip, align 8
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %502

497:                                              ; preds = %398
  %498 = load i32, i32* %3, align 4
  %499 = call i32 @RXTX_REG145_RXES_ENA_SET(i32 %498, i32 1)
  store i32 %499, i32* %3, align 4
  %500 = load i32, i32* %3, align 4
  %501 = call i32 @RXTX_REG145_RXVWES_LATENA_SET(i32 %500, i32 1)
  store i32 %501, i32* %3, align 4
  br label %507

502:                                              ; preds = %398
  %503 = load i32, i32* %3, align 4
  %504 = call i32 @RXTX_REG145_RXES_ENA_SET(i32 %503, i32 0)
  store i32 %504, i32* %3, align 4
  %505 = load i32, i32* %3, align 4
  %506 = call i32 @RXTX_REG145_RXVWES_LATENA_SET(i32 %505, i32 0)
  store i32 %506, i32* %3, align 4
  br label %507

507:                                              ; preds = %502, %497
  %508 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %509 = load i32, i32* %6, align 4
  %510 = load i32, i32* @RXTX_REG145, align 4
  %511 = load i32, i32* %3, align 4
  %512 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %508, i32 %509, i32 %510, i32 %511)
  store i32 0, i32* %5, align 4
  br label %513

513:                                              ; preds = %525, %507
  %514 = load i32, i32* %5, align 4
  %515 = icmp slt i32 %514, 4
  br i1 %515, label %516, label %528

516:                                              ; preds = %513
  %517 = load i32, i32* @RXTX_REG148, align 4
  %518 = load i32, i32* %5, align 4
  %519 = mul nsw i32 %518, 2
  %520 = add nsw i32 %517, %519
  store i32 %520, i32* %4, align 4
  %521 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %2, align 8
  %522 = load i32, i32* %6, align 4
  %523 = load i32, i32* %4, align 4
  %524 = call i32 @serdes_wr(%struct.xgene_phy_ctx* %521, i32 %522, i32 %523, i32 65535)
  br label %525

525:                                              ; preds = %516
  %526 = load i32, i32* %5, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %5, align 4
  br label %513

528:                                              ; preds = %513
  br label %529

529:                                              ; preds = %528
  %530 = load i32, i32* %6, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %6, align 4
  br label %7

532:                                              ; preds = %7
  ret void
}

declare dso_local i32 @serdes_wr(%struct.xgene_phy_ctx*, i32, i32, i32) #1

declare dso_local i32 @serdes_rd(%struct.xgene_phy_ctx*, i32, i32, i32*) #1

declare dso_local i32 @RXTX_REG0_CTLE_EQ_HR_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG0_CTLE_EQ_QR_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG0_CTLE_EQ_FR_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG1_RXACVCM_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG1_CTLE_EQ_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG2_VTT_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG2_VTT_SEL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG2_TX_FIFO_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG4_TX_WORD_MODE_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG1_RXVREG1_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG1_RXIREF_ADJ_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG5_TX_CN1_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG5_TX_CP1_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG5_TX_CN2_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG6_TXAMP_CNTL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG6_TXAMP_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG6_TX_IDLE_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG6_RX_BIST_RESYNC_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG6_RX_BIST_ERRCNT_RD_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG7_BIST_ENA_RX_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG7_RX_WORD_MODE_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG8_CDR_LOOP_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG8_CDR_BYPASS_RXLOS_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG8_SSC_ENABLE_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG8_SD_DISABLE_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG8_SD_VREF_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG11_PHASE_ADJUST_LIMIT_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG12_LATCH_OFF_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG12_SUMOS_ENABLE_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG12_RX_DET_TERM_ENABLE_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG26_PERIOD_ERROR_LATCH_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG26_BLWC_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG61_ISCAN_INBERT_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG61_LOADFREQ_SHIFT_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG61_EYE_COUNT_WIDTH_SEL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG62_PERIOD_H1_QLATCH_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG89_MU_TH7_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG89_MU_TH8_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG89_MU_TH9_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG96_MU_FREQ1_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG96_MU_FREQ2_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG96_MU_FREQ3_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG99_MU_PHASE1_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG99_MU_PHASE2_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG99_MU_PHASE3_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG102_FREQLOOP_LIMIT_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG125_SIGN_PQ_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG125_PQ_REG_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG125_PHZ_MANUAL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG127_LATCH_MAN_CAL_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG128_LATCH_CAL_WAIT_SEL_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG145_RXDFE_CONFIG_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG145_TX_IDLE_SATA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG145_RXES_ENA_SET(i32, i32) #1

declare dso_local i32 @RXTX_REG145_RXVWES_LATENA_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
