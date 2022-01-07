; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_task_prep_ata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_task_prep_ata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (...)*, i64 (...)*, i32 (%struct.mvs_info*, i64, i32, i64, i8*)*, i32 (i32, i64, i8*)* }
%struct.mvs_info = type { i64, i32, i8**, %struct.mvs_slot_info* }
%struct.mvs_slot_info = type { i64, i64, i8*, i8* }
%struct.mvs_task_exec_info = type { i64, i64, %struct.mvs_cmd_hdr*, %struct.sas_task* }
%struct.mvs_cmd_hdr = type { i8*, i64*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sas_task = type { i64, i64, i32, %struct.TYPE_6__, %struct.domain_device* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.domain_device = type { i64, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.asd_sas_port*, %struct.mvs_device* }
%struct.TYPE_5__ = type { i64 }
%struct.asd_sas_port = type { i64, i64 }
%struct.mvs_device = type { i64, i64 }

@SB_RFB_MAX = common dso_local global i64 0, align 8
@MVS_ID_NOT_MAPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Have not enough regiset for dev %d.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TXQ_MODE_I = common dso_local global i64 0, align 8
@TXQ_CMD_STP = common dso_local global i64 0, align 8
@TXQ_CMD_SHIFT = common dso_local global i64 0, align 8
@TXQ_PHY_MASK = common dso_local global i64 0, align 8
@TXQ_PHY_SHIFT = common dso_local global i64 0, align 8
@TXQ_SRS_SHIFT = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_8__* null, align 8
@MCH_PRD_LEN_SHIFT = common dso_local global i64 0, align 8
@MCH_FPDMA = common dso_local global i64 0, align 8
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ATA_CMD_ID_ATAPI = common dso_local global i64 0, align 8
@MCH_ATAPI = common dso_local global i64 0, align 8
@MVS_ATA_CMD_SZ = common dso_local global i32 0, align 4
@MVS_OAF_SZ = common dso_local global i64 0, align 8
@MVF_FLAG_SOC = common dso_local global i32 0, align 4
@MVS_SLOT_BUF_SZ = common dso_local global i32 0, align 4
@STP_ATAPI_CMD = common dso_local global i32 0, align 4
@PROTOCOL_STP = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@TRASH_BUCKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, %struct.mvs_task_exec_info*)* @mvs_task_prep_ata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_task_prep_ata(%struct.mvs_info* %0, %struct.mvs_task_exec_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca %struct.mvs_task_exec_info*, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.mvs_device*, align 8
  %9 = alloca %struct.mvs_cmd_hdr*, align 8
  %10 = alloca %struct.asd_sas_port*, align 8
  %11 = alloca %struct.mvs_slot_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store %struct.mvs_task_exec_info* %1, %struct.mvs_task_exec_info** %5, align 8
  %25 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %26 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %25, i32 0, i32 3
  %27 = load %struct.sas_task*, %struct.sas_task** %26, align 8
  store %struct.sas_task* %27, %struct.sas_task** %6, align 8
  %28 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %29 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %28, i32 0, i32 4
  %30 = load %struct.domain_device*, %struct.domain_device** %29, align 8
  store %struct.domain_device* %30, %struct.domain_device** %7, align 8
  %31 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %32 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %31, i32 0, i32 4
  %33 = load %struct.mvs_device*, %struct.mvs_device** %32, align 8
  store %struct.mvs_device* %33, %struct.mvs_device** %8, align 8
  %34 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %35 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %34, i32 0, i32 2
  %36 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %35, align 8
  store %struct.mvs_cmd_hdr* %36, %struct.mvs_cmd_hdr** %9, align 8
  %37 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %38 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %37, i32 0, i32 3
  %39 = load %struct.asd_sas_port*, %struct.asd_sas_port** %38, align 8
  store %struct.asd_sas_port* %39, %struct.asd_sas_port** %10, align 8
  %40 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %41 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* @SB_RFB_MAX, align 8
  store i64 %43, i64* %24, align 8
  %44 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %45 = load %struct.mvs_device*, %struct.mvs_device** %8, align 8
  %46 = call i64 @mvs_assign_reg_set(%struct.mvs_info* %44, %struct.mvs_device* %45)
  %47 = load i64, i64* @MVS_ID_NOT_MAPPED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %2
  %50 = load %struct.mvs_device*, %struct.mvs_device** %8, align 8
  %51 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mv_dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %381

56:                                               ; preds = %2
  %57 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %58 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %57, i32 0, i32 3
  %59 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %59, i64 %60
  store %struct.mvs_slot_info* %61, %struct.mvs_slot_info** %11, align 8
  %62 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %63 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %11, align 8
  %66 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* @TXQ_MODE_I, align 8
  %68 = load i64, i64* %13, align 8
  %69 = or i64 %67, %68
  %70 = load i64, i64* @TXQ_CMD_STP, align 8
  %71 = load i64, i64* @TXQ_CMD_SHIFT, align 8
  %72 = shl i64 %70, %71
  %73 = or i64 %69, %72
  %74 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %75 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TXQ_PHY_MASK, align 8
  %78 = and i64 %76, %77
  %79 = load i64, i64* @TXQ_PHY_SHIFT, align 8
  %80 = shl i64 %78, %79
  %81 = or i64 %73, %80
  %82 = load %struct.mvs_device*, %struct.mvs_device** %8, align 8
  %83 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TXQ_SRS_SHIFT, align 8
  %86 = shl i64 %84, %85
  %87 = or i64 %81, %86
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = call i8* @cpu_to_le32(i64 %88)
  %90 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %91 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %90, i32 0, i32 2
  %92 = load i8**, i8*** %91, align 8
  %93 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %94 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  store i8* %89, i8** %96, align 8
  %97 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %98 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %56
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MVS_CHIP_DISP, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64 (...)*, i64 (...)** %104, align 8
  %106 = call i64 (...) %105()
  %107 = load i64, i64* @MCH_PRD_LEN_SHIFT, align 8
  %108 = shl i64 %106, %107
  store i64 %108, i64* %15, align 8
  br label %115

109:                                              ; preds = %56
  %110 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %111 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MCH_PRD_LEN_SHIFT, align 8
  %114 = shl i64 %112, %113
  store i64 %114, i64* %15, align 8
  br label %115

115:                                              ; preds = %109, %102
  %116 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %117 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i64, i64* @MCH_FPDMA, align 8
  %123 = load i64, i64* %15, align 8
  %124 = or i64 %123, %122
  store i64 %124, i64* %15, align 8
  br label %125

125:                                              ; preds = %121, %115
  %126 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %127 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %125
  %133 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %134 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ATA_CMD_ID_ATAPI, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load i64, i64* @MCH_ATAPI, align 8
  %142 = load i64, i64* %15, align 8
  %143 = or i64 %142, %141
  store i64 %143, i64* %15, align 8
  br label %144

144:                                              ; preds = %140, %132
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i64, i64* %15, align 8
  %147 = call i8* @cpu_to_le32(i64 %146)
  %148 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %149 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %148, i32 0, i32 8
  store i8* %147, i8** %149, align 8
  %150 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %151 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %145
  %156 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %157 = call i64 @mvs_get_ncq_tag(%struct.sas_task* %156, i64* %14)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i64, i64* %14, align 8
  %161 = shl i64 %160, 3
  %162 = trunc i64 %161 to i32
  %163 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %164 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %162
  store i32 %168, i32* %166, align 8
  br label %171

169:                                              ; preds = %155, %145
  %170 = load i64, i64* %13, align 8
  store i64 %170, i64* %14, align 8
  br label %171

171:                                              ; preds = %169, %159
  %172 = load i64, i64* %14, align 8
  %173 = call i8* @cpu_to_le32(i64 %172)
  %174 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %175 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %174, i32 0, i32 7
  store i8* %173, i8** %175, align 8
  %176 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %177 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i8* @cpu_to_le32(i64 %178)
  %180 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %181 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %180, i32 0, i32 6
  store i8* %179, i8** %181, align 8
  %182 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %11, align 8
  %183 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %17, align 8
  %185 = bitcast i8* %184 to i32*
  store i32* %185, i32** %18, align 8
  %186 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %11, align 8
  %187 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %20, align 8
  %189 = load i64, i64* %20, align 8
  %190 = call i8* @cpu_to_le64(i64 %189)
  %191 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %192 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %191, i32 0, i32 5
  store i8* %190, i8** %192, align 8
  %193 = load i32, i32* @MVS_ATA_CMD_SZ, align 4
  %194 = load i8*, i8** %17, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr i8, i8* %194, i64 %195
  store i8* %196, i8** %17, align 8
  %197 = load i32, i32* @MVS_ATA_CMD_SZ, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %20, align 8
  %200 = add i64 %199, %198
  store i64 %200, i64* %20, align 8
  %201 = load i8*, i8** %17, align 8
  %202 = bitcast i8* %201 to i32*
  store i32* %202, i32** %19, align 8
  %203 = load i64, i64* %20, align 8
  %204 = call i8* @cpu_to_le64(i64 %203)
  %205 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %206 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %205, i32 0, i32 4
  store i8* %204, i8** %206, align 8
  %207 = load i64, i64* @MVS_OAF_SZ, align 8
  %208 = load i8*, i8** %17, align 8
  %209 = getelementptr i8, i8* %208, i64 %207
  store i8* %209, i8** %17, align 8
  %210 = load i64, i64* @MVS_OAF_SZ, align 8
  %211 = load i64, i64* %20, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %20, align 8
  %213 = load i8*, i8** %17, align 8
  store i8* %213, i8** %12, align 8
  %214 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %215 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %171
  %219 = load i64, i64* %20, align 8
  %220 = call i8* @cpu_to_le64(i64 %219)
  %221 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %222 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %221, i32 0, i32 3
  store i8* %220, i8** %222, align 8
  br label %226

223:                                              ; preds = %171
  %224 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %225 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %224, i32 0, i32 3
  store i8* null, i8** %225, align 8
  br label %226

226:                                              ; preds = %223, %218
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MVS_CHIP_DISP, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i64 (...)*, i64 (...)** %228, align 8
  %230 = call i64 (...) %229()
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MVS_CHIP_DISP, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i64 (...)*, i64 (...)** %232, align 8
  %234 = call i64 (...) %233()
  %235 = mul i64 %230, %234
  store i64 %235, i64* %21, align 8
  %236 = load i64, i64* %21, align 8
  %237 = load i8*, i8** %17, align 8
  %238 = getelementptr i8, i8* %237, i64 %236
  store i8* %238, i8** %17, align 8
  %239 = load i64, i64* %21, align 8
  %240 = load i64, i64* %20, align 8
  %241 = add i64 %240, %239
  store i64 %241, i64* %20, align 8
  %242 = load i8*, i8** %17, align 8
  %243 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %11, align 8
  %244 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %243, i32 0, i32 2
  store i8* %242, i8** %244, align 8
  %245 = load i64, i64* %20, align 8
  %246 = call i8* @cpu_to_le64(i64 %245)
  %247 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %248 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  %249 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %250 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @MVF_FLAG_SOC, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %226
  %256 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %257 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %256, i32 0, i32 1
  %258 = load i64*, i64** %257, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 0
  store i64 0, i64* %259, align 8
  br label %260

260:                                              ; preds = %255, %226
  store i64 4, i64* %22, align 8
  %261 = load i32, i32* @MVS_SLOT_BUF_SZ, align 4
  %262 = load i32, i32* @MVS_ATA_CMD_SZ, align 4
  %263 = sub nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = sub i64 %264, 4
  %266 = load i64, i64* %21, align 8
  %267 = sub i64 %265, %266
  store i64 %267, i64* %23, align 8
  %268 = load i64, i64* %23, align 8
  %269 = load i64, i64* %24, align 8
  %270 = call i32 @min(i64 %268, i64 %269)
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %23, align 8
  %272 = load i64, i64* %23, align 8
  %273 = udiv i64 %272, 4
  %274 = shl i64 %273, 16
  %275 = load i64, i64* %22, align 8
  %276 = udiv i64 %275, 4
  %277 = or i64 %274, %276
  %278 = call i8* @cpu_to_le32(i64 %277)
  %279 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %9, align 8
  %280 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  %281 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %282 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = call i64 @likely(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %260
  %291 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %292 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, 128
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %290, %260
  %298 = load i32*, i32** %18, align 8
  %299 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %300 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 1
  %302 = call i32 @memcpy(i32* %298, %struct.TYPE_7__* %301, i32 4)
  %303 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %304 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %319

309:                                              ; preds = %297
  %310 = load i32*, i32** %18, align 8
  %311 = load i32, i32* @STP_ATAPI_CMD, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %315 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = call i32 @memcpy(i32* %313, %struct.TYPE_7__* %317, i32 16)
  br label %319

319:                                              ; preds = %309, %297
  %320 = load i32, i32* @PROTOCOL_STP, align 4
  %321 = shl i32 %320, 4
  %322 = or i32 128, %321
  %323 = or i32 %322, 1
  %324 = load i32*, i32** %19, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  store i32 %323, i32* %325, align 4
  %326 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %327 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %330 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @min(i64 %328, i64 %331)
  %333 = and i32 %332, 15
  %334 = load i32*, i32** %19, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  store i32 %333, i32* %335, align 4
  %336 = load %struct.mvs_device*, %struct.mvs_device** %8, align 8
  %337 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = add nsw i64 %338, 1
  %340 = call i32 @cpu_to_be16(i64 %339)
  %341 = load i32*, i32** %19, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 2
  store i32 %340, i32* %342, align 4
  %343 = load i32*, i32** %19, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 4
  %345 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %346 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %345, i32 0, i32 1
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %346, align 8
  %348 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %349 = call i32 @memcpy(i32* %344, %struct.TYPE_7__* %347, i32 %348)
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MVS_CHIP_DISP, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 3
  %352 = load i32 (i32, i64, i8*)*, i32 (i32, i64, i8*)** %351, align 8
  %353 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %354 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %357 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load i8*, i8** %12, align 8
  %360 = call i32 %352(i32 %355, i64 %358, i8* %359)
  %361 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %362 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %380

366:                                              ; preds = %319
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MVS_CHIP_DISP, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 2
  %369 = load i32 (%struct.mvs_info*, i64, i32, i64, i8*)*, i32 (%struct.mvs_info*, i64, i32, i64, i8*)** %368, align 8
  %370 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %371 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %372 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* @TRASH_BUCKET_SIZE, align 4
  %375 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %5, align 8
  %376 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load i8*, i8** %12, align 8
  %379 = call i32 %369(%struct.mvs_info* %370, i64 %373, i32 %374, i64 %377, i8* %378)
  br label %380

380:                                              ; preds = %366, %319
  store i32 0, i32* %3, align 4
  br label %381

381:                                              ; preds = %380, %49
  %382 = load i32, i32* %3, align 4
  ret i32 %382
}

declare dso_local i64 @mvs_assign_reg_set(%struct.mvs_info*, %struct.mvs_device*) #1

declare dso_local i32 @mv_dprintk(i8*, i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @mvs_get_ncq_tag(%struct.sas_task*, i64*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
