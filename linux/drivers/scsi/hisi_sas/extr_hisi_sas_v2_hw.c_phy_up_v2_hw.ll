; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phy_up_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phy_up_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.device*, %struct.hisi_sas_phy* }
%struct.device = type { i32 }
%struct.hisi_sas_phy = type { i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__, i32, %struct.asd_sas_phy }
%struct.TYPE_2__ = type { i64, i32 }
%struct.asd_sas_phy = type { i32, i32, i32, i64 }
%struct.sas_identify_frame = type { i64, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@PHYCTRL_PHY_ENA_MSK = common dso_local global i32 0, align 4
@PORT_STATE = common dso_local global i32 0, align 4
@PORT_STATE_PHY8_PORT_NUM_MSK = common dso_local global i32 0, align 4
@PORT_STATE_PHY8_PORT_NUM_OFF = common dso_local global i32 0, align 4
@PORT_STATE_PHY8_CONN_RATE_MSK = common dso_local global i32 0, align 4
@PORT_STATE_PHY8_CONN_RATE_OFF = common dso_local global i32 0, align 4
@PHY_PORT_NUM_MA = common dso_local global i32 0, align 4
@PHY_CONN_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"phyup: phy%d invalid portid\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@RX_IDAF_DWORD0 = common dso_local global i64 0, align 8
@SAS_OOB_MODE = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"phyup: phy%d link_rate=%d\0A\00", align 1
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@SAS_END_DEVICE = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@HISI_PHYE_PHY_UP = common dso_local global i32 0, align 4
@CHL_INT0 = common dso_local global i32 0, align 4
@CHL_INT0_SL_PHY_ENABLE_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hisi_hba*)* @phy_up_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_up_v2_hw(i32 %0, %struct.hisi_hba* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hisi_sas_phy*, align 8
  %10 = alloca %struct.asd_sas_phy*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sas_identify_frame*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.hisi_hba* %1, %struct.hisi_hba** %4, align 8
  %17 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 2
  %20 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %20, i64 %22
  store %struct.hisi_sas_phy* %23, %struct.hisi_sas_phy** %9, align 8
  %24 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %25 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %24, i32 0, i32 9
  store %struct.asd_sas_phy* %25, %struct.asd_sas_phy** %10, align 8
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %27 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %26, i32 0, i32 1
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %11, align 8
  %29 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %30 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = bitcast i32* %33 to %struct.sas_identify_frame*
  store %struct.sas_identify_frame* %34, %struct.sas_identify_frame** %13, align 8
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PHYCTRL_PHY_ENA_MSK, align 4
  %38 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %35, i32 %36, i32 %37, i32 1)
  %39 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @is_sata_phy_v2_hw(%struct.hisi_hba* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %211

44:                                               ; preds = %2
  %45 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %46 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %45, i32 0, i32 8
  %47 = call i32 @del_timer(i32* %46)
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %52 = load i32, i32* @PORT_STATE, align 4
  %53 = call i32 @hisi_sas_read32(%struct.hisi_hba* %51, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @PORT_STATE_PHY8_PORT_NUM_MSK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @PORT_STATE_PHY8_PORT_NUM_OFF, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @PORT_STATE_PHY8_CONN_RATE_MSK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @PORT_STATE_PHY8_CONN_RATE_OFF, align 4
  %63 = ashr i32 %61, %62
  store i32 %63, i32* %8, align 4
  br label %81

64:                                               ; preds = %44
  %65 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %66 = load i32, i32* @PHY_PORT_NUM_MA, align 4
  %67 = call i32 @hisi_sas_read32(%struct.hisi_hba* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %3, align 4
  %70 = mul nsw i32 4, %69
  %71 = ashr i32 %68, %70
  %72 = and i32 %71, 15
  store i32 %72, i32* %7, align 4
  %73 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %74 = load i32, i32* @PHY_CONN_RATE, align 4
  %75 = call i32 @hisi_sas_read32(%struct.hisi_hba* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %3, align 4
  %78 = mul nsw i32 %77, 4
  %79 = ashr i32 %76, %78
  %80 = and i32 %79, 15
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %64, %50
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 15
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.device*, %struct.device** %11, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @IRQ_NONE, align 4
  store i32 %88, i32* %6, align 4
  br label %211

89:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 6
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load i64, i64* @RX_IDAF_DWORD0, align 8
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %94, i32 %95, i64 %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @__swab32(i32 %102)
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %90

111:                                              ; preds = %90
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %114 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @SAS_OOB_MODE, align 4
  %116 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %117 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %119 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %13, align 8
  %122 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %121, i32 0, i32 1
  %123 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %124 = call i32 @memcpy(i32 %120, i32* %122, i32 %123)
  %125 = load %struct.device*, %struct.device** %11, align 8
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @dev_info(%struct.device* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %131 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @PORT_TYPE_SAS, align 4
  %133 = load i32, i32* @PORT_TYPE_SATA, align 4
  %134 = or i32 %132, %133
  %135 = xor i32 %134, -1
  %136 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %137 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @PORT_TYPE_SAS, align 4
  %141 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %142 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %146 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %145, i32 0, i32 2
  store i32 1, i32* %146, align 8
  %147 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %13, align 8
  %148 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %151 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  %153 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %154 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %153, i32 0, i32 3
  store i32 16, i32* %154, align 4
  %155 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %156 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SAS_END_DEVICE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %111
  %162 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %163 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %164 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 8
  br label %187

166:                                              ; preds = %111
  %167 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %168 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %175 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %176 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 8
  %178 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %179 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %178, i32 0, i32 0
  %180 = call i32 @timer_pending(i32* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %173
  %183 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %184 = call i32 @set_link_timer_quirk(%struct.hisi_hba* %183)
  br label %185

185:                                              ; preds = %182, %173
  br label %186

186:                                              ; preds = %185, %166
  br label %187

187:                                              ; preds = %186, %161
  %188 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %189 = load i32, i32* @HISI_PHYE_PHY_UP, align 4
  %190 = call i32 @hisi_sas_notify_phy_event(%struct.hisi_sas_phy* %188, i32 %189)
  %191 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %192 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %191, i32 0, i32 4
  %193 = load i64, i64* %14, align 8
  %194 = call i32 @spin_lock_irqsave(i32* %192, i64 %193)
  %195 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %196 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %187
  %200 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %201 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %200, i32 0, i32 6
  store i64 0, i64* %201, align 8
  %202 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %203 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @complete(i64 %204)
  br label %206

206:                                              ; preds = %199, %187
  %207 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %208 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %207, i32 0, i32 4
  %209 = load i64, i64* %14, align 8
  %210 = call i32 @spin_unlock_irqrestore(i32* %208, i64 %209)
  br label %211

211:                                              ; preds = %206, %84, %43
  %212 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* @CHL_INT0, align 4
  %215 = load i32, i32* @CHL_INT0_SL_PHY_ENABLE_MSK, align 4
  %216 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %212, i32 %213, i32 %214, i32 %215)
  %217 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* @PHYCTRL_PHY_ENA_MSK, align 4
  %220 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %217, i32 %218, i32 %219, i32 0)
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i64 @is_sata_phy_v2_hw(%struct.hisi_hba*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i64) #1

declare dso_local i32 @__swab32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @set_link_timer_quirk(%struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_notify_phy_event(%struct.hisi_sas_phy*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
