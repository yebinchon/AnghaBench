; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_task_prep_smp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_task_prep_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)*, i32 (i32, i32, i8*)* }
%struct.mvs_info = type { i32, i64, i32, i8**, %struct.mvs_slot_info*, %struct.sas_ha_struct* }
%struct.mvs_slot_info = type { i32, i64, i8*, i8* }
%struct.sas_ha_struct = type { %struct.asd_sas_phy** }
%struct.asd_sas_phy = type { i32 }
%struct.mvs_task_exec_info = type { i64, i64, %struct.sas_task*, %struct.mvs_cmd_hdr* }
%struct.sas_task = type { %struct.TYPE_3__, i32, %struct.domain_device* }
%struct.TYPE_3__ = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32 }
%struct.domain_device = type { i32, i32, %struct.sas_phy*, %struct.asd_sas_port* }
%struct.sas_phy = type { i64 }
%struct.asd_sas_port = type { i32 }
%struct.mvs_cmd_hdr = type { i64, i64, i8*, i8*, i64*, i8*, i8*, i8*, i8* }

@MCH_PRD_LEN_SHIFT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SB_RFB_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MVS_OAF_SZ = common dso_local global i64 0, align 8
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@MVF_FLAG_SOC = common dso_local global i32 0, align 4
@TXQ_CMD_SMP = common dso_local global i64 0, align 8
@TXQ_CMD_SHIFT = common dso_local global i64 0, align 8
@TXQ_MODE_I = common dso_local global i64 0, align 8
@MVS_PHY_ID = common dso_local global i64 0, align 8
@TXQ_PHY_SHIFT = common dso_local global i64 0, align 8
@PROTOCOL_SMP = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, %struct.mvs_task_exec_info*)* @mvs_task_prep_smp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_task_prep_smp(%struct.mvs_info* %0, %struct.mvs_task_exec_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca %struct.mvs_task_exec_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sas_ha_struct*, align 8
  %10 = alloca %struct.sas_task*, align 8
  %11 = alloca %struct.mvs_cmd_hdr*, align 8
  %12 = alloca %struct.domain_device*, align 8
  %13 = alloca %struct.asd_sas_port*, align 8
  %14 = alloca %struct.sas_phy*, align 8
  %15 = alloca %struct.asd_sas_phy*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.mvs_slot_info*, align 8
  %26 = alloca i64, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store %struct.mvs_task_exec_info* %1, %struct.mvs_task_exec_info** %5, align 8
  %27 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %28 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %27, i32 0, i32 5
  %29 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %28, align 8
  store %struct.sas_ha_struct* %29, %struct.sas_ha_struct** %9, align 8
  %30 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %31 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %30, i32 0, i32 2
  %32 = load %struct.sas_task*, %struct.sas_task** %31, align 8
  store %struct.sas_task* %32, %struct.sas_task** %10, align 8
  %33 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %34 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %33, i32 0, i32 3
  %35 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %34, align 8
  store %struct.mvs_cmd_hdr* %35, %struct.mvs_cmd_hdr** %11, align 8
  %36 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %37 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %36, i32 0, i32 2
  %38 = load %struct.domain_device*, %struct.domain_device** %37, align 8
  store %struct.domain_device* %38, %struct.domain_device** %12, align 8
  %39 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %40 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %39, i32 0, i32 3
  %41 = load %struct.asd_sas_port*, %struct.asd_sas_port** %40, align 8
  store %struct.asd_sas_port* %41, %struct.asd_sas_port** %13, align 8
  %42 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %43 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %42, i32 0, i32 2
  %44 = load %struct.sas_phy*, %struct.sas_phy** %43, align 8
  store %struct.sas_phy* %44, %struct.sas_phy** %14, align 8
  %45 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %46 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %45, i32 0, i32 0
  %47 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %46, align 8
  %48 = load %struct.sas_phy*, %struct.sas_phy** %14, align 8
  %49 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %47, i64 %50
  %52 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %51, align 8
  store %struct.asd_sas_phy* %52, %struct.asd_sas_phy** %15, align 8
  %53 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %54 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %20, align 8
  %56 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %57 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %56, i32 0, i32 4
  %58 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %57, align 8
  %59 = load i64, i64* %20, align 8
  %60 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %58, i64 %59
  store %struct.mvs_slot_info* %60, %struct.mvs_slot_info** %25, align 8
  %61 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %62 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MCH_PRD_LEN_SHIFT, align 8
  %65 = shl i64 %63, %64
  store i64 %65, i64* %26, align 8
  %66 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %67 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store %struct.scatterlist* %68, %struct.scatterlist** %16, align 8
  %69 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %70 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = call i32 @dma_map_sg(i32 %71, %struct.scatterlist* %72, i32 1, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %2
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %290

80:                                               ; preds = %2
  %81 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %82 = call i64 @sg_dma_len(%struct.scatterlist* %81)
  store i64 %82, i64* %18, align 8
  %83 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %84 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store %struct.scatterlist* %85, %struct.scatterlist** %17, align 8
  %86 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %87 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %91 = call i32 @dma_map_sg(i32 %88, %struct.scatterlist* %89, i32 1, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %80
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %278

97:                                               ; preds = %80
  %98 = load i64, i64* @SB_RFB_MAX, align 8
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %18, align 8
  %100 = and i64 %99, 3
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* %19, align 8
  %104 = and i64 %103, 3
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102, %97
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %7, align 4
  br label %267

109:                                              ; preds = %102
  %110 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %25, align 8
  %111 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %21, align 8
  %113 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %25, align 8
  %114 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %23, align 4
  %116 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %117 = call i32 @sg_dma_address(%struct.scatterlist* %116)
  %118 = call i8* @cpu_to_le64(i32 %117)
  %119 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %120 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %119, i32 0, i32 8
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = bitcast i8* %121 to i32*
  store i32* %122, i32** %22, align 8
  %123 = load i32, i32* %23, align 4
  %124 = call i8* @cpu_to_le64(i32 %123)
  %125 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %126 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %125, i32 0, i32 7
  store i8* %124, i8** %126, align 8
  %127 = load i64, i64* @MVS_OAF_SZ, align 8
  %128 = load i8*, i8** %21, align 8
  %129 = getelementptr i8, i8* %128, i64 %127
  store i8* %129, i8** %21, align 8
  %130 = load i64, i64* @MVS_OAF_SZ, align 8
  %131 = load i32, i32* %23, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %23, align 4
  %135 = load i8*, i8** %21, align 8
  store i8* %135, i8** %24, align 8
  %136 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %137 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %109
  %141 = load i32, i32* %23, align 4
  %142 = call i8* @cpu_to_le64(i32 %141)
  %143 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %144 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %143, i32 0, i32 6
  store i8* %142, i8** %144, align 8
  br label %148

145:                                              ; preds = %109
  %146 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %147 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %146, i32 0, i32 6
  store i8* null, i8** %147, align 8
  br label %148

148:                                              ; preds = %145, %140
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MVS_CHIP_DISP, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32 (...)*, i32 (...)** %150, align 8
  %152 = call i32 (...) %151()
  %153 = sext i32 %152 to i64
  %154 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %155 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = mul i64 %153, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i8*, i8** %21, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr i8, i8* %160, i64 %161
  store i8* %162, i8** %21, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %23, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %23, align 4
  %166 = load i8*, i8** %21, align 8
  %167 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %25, align 8
  %168 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* %23, align 4
  %170 = call i8* @cpu_to_le64(i32 %169)
  %171 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %172 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %171, i32 0, i32 5
  store i8* %170, i8** %172, align 8
  %173 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %174 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @MVF_FLAG_SOC, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %148
  %180 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %181 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %180, i32 0, i32 4
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %179, %148
  %185 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %186 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %25, align 8
  %189 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %188, i32 0, i32 1
  store i64 %187, i64* %189, align 8
  %190 = load i64, i64* @TXQ_CMD_SMP, align 8
  %191 = load i64, i64* @TXQ_CMD_SHIFT, align 8
  %192 = shl i64 %190, %191
  %193 = load i64, i64* @TXQ_MODE_I, align 8
  %194 = or i64 %192, %193
  %195 = load i64, i64* %20, align 8
  %196 = or i64 %194, %195
  %197 = load i64, i64* @MVS_PHY_ID, align 8
  %198 = load i64, i64* @TXQ_PHY_SHIFT, align 8
  %199 = shl i64 %197, %198
  %200 = or i64 %196, %199
  %201 = call i8* @cpu_to_le32(i64 %200)
  %202 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %203 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %202, i32 0, i32 3
  %204 = load i8**, i8*** %203, align 8
  %205 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %206 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i8*, i8** %204, i64 %207
  store i8* %201, i8** %208, align 8
  %209 = load i64, i64* %26, align 8
  %210 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %211 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = or i64 %212, %209
  store i64 %213, i64* %211, align 8
  %214 = load i64, i64* %19, align 8
  %215 = udiv i64 %214, 4
  %216 = shl i64 %215, 16
  %217 = load i64, i64* %18, align 8
  %218 = sub i64 %217, 4
  %219 = udiv i64 %218, 4
  %220 = or i64 %216, %219
  %221 = call i8* @cpu_to_le32(i64 %220)
  %222 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %223 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %222, i32 0, i32 3
  store i8* %221, i8** %223, align 8
  %224 = load i64, i64* %20, align 8
  %225 = call i8* @cpu_to_le32(i64 %224)
  %226 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %227 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  %228 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %11, align 8
  %229 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %228, i32 0, i32 1
  store i64 0, i64* %229, align 8
  %230 = load i32, i32* @PROTOCOL_SMP, align 4
  %231 = shl i32 %230, 4
  %232 = or i32 128, %231
  %233 = or i32 %232, 1
  %234 = load i32*, i32** %22, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  store i32 %233, i32* %235, align 4
  %236 = load %struct.asd_sas_port*, %struct.asd_sas_port** %13, align 8
  %237 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %240 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @min(i32 %238, i32 %241)
  %243 = and i32 %242, 15
  %244 = load i32*, i32** %22, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  store i32 %243, i32* %245, align 4
  %246 = load i32*, i32** %22, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  store i32 65535, i32* %247, align 4
  %248 = load i32*, i32** %22, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  %250 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %251 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %254 = call i32 @memcpy(i32* %249, i32 %252, i32 %253)
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MVS_CHIP_DISP, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  %257 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %256, align 8
  %258 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %259 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %262 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = trunc i64 %263 to i32
  %265 = load i8*, i8** %24, align 8
  %266 = call i32 %257(i32 %260, i32 %264, i8* %265)
  store i32 0, i32* %3, align 4
  br label %290

267:                                              ; preds = %106
  %268 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %269 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %272 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %271, i32 0, i32 2
  %273 = load %struct.sas_task*, %struct.sas_task** %272, align 8
  %274 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 1
  %276 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %277 = call i32 @dma_unmap_sg(i32 %270, %struct.scatterlist* %275, i32 1, i32 %276)
  br label %278

278:                                              ; preds = %267, %94
  %279 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %280 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %283 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %282, i32 0, i32 2
  %284 = load %struct.sas_task*, %struct.sas_task** %283, align 8
  %285 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 0
  %287 = load i32, i32* @DMA_TO_DEVICE, align 4
  %288 = call i32 @dma_unmap_sg(i32 %281, %struct.scatterlist* %286, i32 1, i32 %287)
  %289 = load i32, i32* %7, align 4
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %278, %184, %77
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
