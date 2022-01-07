; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_int_phyup_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_int_phyup_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_phy = type { i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__, %struct.asd_sas_phy, %struct.hisi_hba* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.asd_sas_phy = type { i32, i32, i32, i32, i64 }
%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }
%struct.sas_identify_frame = type { i64, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@CHL_INT2 = common dso_local global i64 0, align 8
@CHL_INT2_SL_PHY_ENA_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"phyup: irq_value = %x not set enable bit\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@PHY_CONTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"phyup: phy%d SATA attached equipment\0A\00", align 1
@PHY_PORT_NUM_MA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"phyup: phy%d invalid portid\0A\00", align 1
@RX_IDAF_DWORD0 = common dso_local global i64 0, align 8
@PHY_CONN_RATE = common dso_local global i32 0, align 4
@SAS_OOB_MODE = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"phyup: phy%d link_rate=%d\0A\00", align 1
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@SAS_END_DEVICE = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@HISI_PHYE_PHY_UP = common dso_local global i32 0, align 4
@CHL_INT0 = common dso_local global i64 0, align 8
@CHL_INT0_PHYCTRL_NOTRDY_MSK = common dso_local global i32 0, align 4
@CHL_INT0_MSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @int_phyup_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_phyup_v1_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.asd_sas_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sas_identify_frame*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.hisi_sas_phy*
  store %struct.hisi_sas_phy* %22, %struct.hisi_sas_phy** %5, align 8
  %23 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %24 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %23, i32 0, i32 9
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %24, align 8
  store %struct.hisi_hba* %25, %struct.hisi_hba** %6, align 8
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %27 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %7, align 8
  %29 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %30 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %29, i32 0, i32 8
  store %struct.asd_sas_phy* %30, %struct.asd_sas_phy** %8, align 8
  %31 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %32 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %35 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = bitcast i32* %38 to %struct.sas_identify_frame*
  store %struct.sas_identify_frame* %39, %struct.sas_identify_frame** %16, align 8
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %17, align 4
  %41 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* @CHL_INT2, align 8
  %44 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %41, i32 %42, i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @CHL_INT2_SL_PHY_ENA_MSK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %2
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %17, align 4
  br label %204

54:                                               ; preds = %2
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %56 = load i32, i32* @PHY_CONTEXT, align 4
  %57 = call i32 @hisi_sas_read32(%struct.hisi_hba* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %204

67:                                               ; preds = %54
  %68 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %69 = load i32, i32* @PHY_PORT_NUM_MA, align 4
  %70 = call i32 @hisi_sas_read32(%struct.hisi_hba* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 4, %71
  %73 = ashr i32 %70, %72
  %74 = and i32 %73, 15
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 15
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @IRQ_NONE, align 4
  store i32 %81, i32* %17, align 4
  br label %204

82:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %101, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 6
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i64, i64* @RX_IDAF_DWORD0, align 8
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %90, 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %89, %92
  %94 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %87, i32 %88, i64 %93)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @__swab32(i32 %95)
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %83

104:                                              ; preds = %83
  %105 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %106 = load i32, i32* @PHY_CONN_RATE, align 4
  %107 = call i32 @hisi_sas_read32(%struct.hisi_hba* %105, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %10, align 4
  %110 = mul nsw i32 %109, 4
  %111 = ashr i32 %108, %110
  %112 = and i32 %111, 15
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %115 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @SAS_OOB_MODE, align 4
  %117 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %118 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %120 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %16, align 8
  %123 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %122, i32 0, i32 1
  %124 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %125 = call i32 @memcpy(i32 %121, i32* %123, i32 %124)
  %126 = load %struct.device*, %struct.device** %7, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @dev_info(%struct.device* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %132 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @PORT_TYPE_SAS, align 4
  %134 = load i32, i32* @PORT_TYPE_SATA, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %138 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @PORT_TYPE_SAS, align 4
  %142 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %143 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %147 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  %148 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %16, align 8
  %149 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %152 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i64 %150, i64* %153, align 8
  %154 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %155 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %154, i32 0, i32 3
  store i32 16, i32* %155, align 4
  %156 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %157 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SAS_END_DEVICE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %104
  %163 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %164 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %165 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 8
  br label %180

167:                                              ; preds = %104
  %168 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %169 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %167
  %175 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %176 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %177 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %176, i32 0, i32 7
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 8
  br label %179

179:                                              ; preds = %174, %167
  br label %180

180:                                              ; preds = %179, %162
  %181 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %182 = load i32, i32* @HISI_PHYE_PHY_UP, align 4
  %183 = call i32 @hisi_sas_notify_phy_event(%struct.hisi_sas_phy* %181, i32 %182)
  %184 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %185 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %184, i32 0, i32 4
  %186 = load i64, i64* %18, align 8
  %187 = call i32 @spin_lock_irqsave(i32* %185, i64 %186)
  %188 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %189 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %180
  %193 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %194 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %193, i32 0, i32 6
  store i64 0, i64* %194, align 8
  %195 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %196 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @complete(i64 %197)
  br label %199

199:                                              ; preds = %192, %180
  %200 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %201 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %200, i32 0, i32 4
  %202 = load i64, i64* %18, align 8
  %203 = call i32 @spin_unlock_irqrestore(i32* %201, i64 %202)
  br label %204

204:                                              ; preds = %199, %77, %63, %49
  %205 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %206 = load i32, i32* %10, align 4
  %207 = load i64, i64* @CHL_INT2, align 8
  %208 = load i32, i32* @CHL_INT2_SL_PHY_ENA_MSK, align 4
  %209 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %205, i32 %206, i64 %207, i32 %208)
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @CHL_INT2_SL_PHY_ENA_MSK, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %204
  %215 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %216 = load i32, i32* %10, align 4
  %217 = load i64, i64* @CHL_INT0, align 8
  %218 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %215, i32 %216, i64 %217)
  store i32 %218, i32* %20, align 4
  %219 = load i32, i32* @CHL_INT0_PHYCTRL_NOTRDY_MSK, align 4
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %20, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %20, align 4
  %223 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %224 = load i32, i32* %10, align 4
  %225 = load i64, i64* @CHL_INT0, align 8
  %226 = load i32, i32* %20, align 4
  %227 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %223, i32 %224, i64 %225, i32 %226)
  %228 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %229 = load i32, i32* %10, align 4
  %230 = load i64, i64* @CHL_INT0_MSK, align 8
  %231 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %228, i32 %229, i64 %230, i32 3990510)
  br label %232

232:                                              ; preds = %214, %204
  %233 = load i32, i32* %17, align 4
  ret i32 %233
}

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @__swab32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @hisi_sas_notify_phy_event(%struct.hisi_sas_phy*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
