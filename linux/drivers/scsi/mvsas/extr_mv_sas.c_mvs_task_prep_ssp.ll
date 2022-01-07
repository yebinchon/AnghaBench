; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_task_prep_ssp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_task_prep_ssp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (...)*, i32 (i32, i64, i8*)* }
%struct.mvs_info = type { i64, i32, i8**, %struct.mvs_slot_info* }
%struct.mvs_slot_info = type { i64, i64, i8*, i8* }
%struct.mvs_task_exec_info = type { i64, i64, %struct.mvs_port*, %struct.mvs_cmd_hdr*, %struct.sas_task* }
%struct.mvs_port = type { i64 }
%struct.mvs_cmd_hdr = type { i8*, i64*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sas_task = type { i64, i32, %struct.TYPE_5__, %struct.domain_device* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.domain_device = type { i64, i32*, i32*, %struct.asd_sas_port*, %struct.mvs_device* }
%struct.asd_sas_port = type { i64, i64 }
%struct.mvs_device = type { i64 }
%struct.mvs_tmf_task = type { i32, i32 }
%struct.ssp_frame_hdr = type { i64, i32*, i32*, i8* }

@SB_RFB_MAX = common dso_local global i64 0, align 8
@TXQ_PHY_MASK = common dso_local global i64 0, align 8
@TXQ_MODE_I = common dso_local global i64 0, align 8
@TXQ_CMD_SSP = common dso_local global i64 0, align 8
@TXQ_CMD_SHIFT = common dso_local global i64 0, align 8
@TXQ_PHY_SHIFT = common dso_local global i64 0, align 8
@MCH_RETRY = common dso_local global i64 0, align 8
@MCH_FBURST = common dso_local global i64 0, align 8
@MCH_SSP_FR_TASK = common dso_local global i64 0, align 8
@MCH_SSP_FR_TYPE_SHIFT = common dso_local global i64 0, align 8
@MCH_SSP_FR_CMD = common dso_local global i64 0, align 8
@MCH_PRD_LEN_SHIFT = common dso_local global i64 0, align 8
@MVS_SSP_CMD_SZ = common dso_local global i32 0, align 4
@MVS_OAF_SZ = common dso_local global i32 0, align 4
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_6__* null, align 8
@MVF_FLAG_SOC = common dso_local global i32 0, align 4
@MVS_SLOT_BUF_SZ = common dso_local global i32 0, align 4
@PROTOCOL_SSP = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@SSP_TASK = common dso_local global i64 0, align 8
@SSP_COMMAND = common dso_local global i64 0, align 8
@HASHED_SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, %struct.mvs_task_exec_info*, i32, %struct.mvs_tmf_task*)* @mvs_task_prep_ssp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_task_prep_ssp(%struct.mvs_info* %0, %struct.mvs_task_exec_info* %1, i32 %2, %struct.mvs_tmf_task* %3) #0 {
  %5 = alloca %struct.mvs_info*, align 8
  %6 = alloca %struct.mvs_task_exec_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvs_tmf_task*, align 8
  %9 = alloca %struct.sas_task*, align 8
  %10 = alloca %struct.mvs_cmd_hdr*, align 8
  %11 = alloca %struct.mvs_port*, align 8
  %12 = alloca %struct.domain_device*, align 8
  %13 = alloca %struct.mvs_device*, align 8
  %14 = alloca %struct.asd_sas_port*, align 8
  %15 = alloca %struct.mvs_slot_info*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ssp_frame_hdr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %5, align 8
  store %struct.mvs_task_exec_info* %1, %struct.mvs_task_exec_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mvs_tmf_task* %3, %struct.mvs_tmf_task** %8, align 8
  %30 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %6, align 8
  %31 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %30, i32 0, i32 4
  %32 = load %struct.sas_task*, %struct.sas_task** %31, align 8
  store %struct.sas_task* %32, %struct.sas_task** %9, align 8
  %33 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %6, align 8
  %34 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %33, i32 0, i32 3
  %35 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %34, align 8
  store %struct.mvs_cmd_hdr* %35, %struct.mvs_cmd_hdr** %10, align 8
  %36 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %6, align 8
  %37 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %36, i32 0, i32 2
  %38 = load %struct.mvs_port*, %struct.mvs_port** %37, align 8
  store %struct.mvs_port* %38, %struct.mvs_port** %11, align 8
  %39 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %40 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %39, i32 0, i32 3
  %41 = load %struct.domain_device*, %struct.domain_device** %40, align 8
  store %struct.domain_device* %41, %struct.domain_device** %12, align 8
  %42 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %43 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %42, i32 0, i32 4
  %44 = load %struct.mvs_device*, %struct.mvs_device** %43, align 8
  store %struct.mvs_device* %44, %struct.mvs_device** %13, align 8
  %45 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %46 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %45, i32 0, i32 3
  %47 = load %struct.asd_sas_port*, %struct.asd_sas_port** %46, align 8
  store %struct.asd_sas_port* %47, %struct.asd_sas_port** %14, align 8
  store i32 0, i32* %21, align 4
  %48 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %6, align 8
  %49 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %27, align 8
  %51 = load i64, i64* @SB_RFB_MAX, align 8
  store i64 %51, i64* %28, align 8
  %52 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %53 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %52, i32 0, i32 3
  %54 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %53, align 8
  %55 = load i64, i64* %27, align 8
  %56 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %54, i64 %55
  store %struct.mvs_slot_info* %56, %struct.mvs_slot_info** %15, align 8
  %57 = load %struct.mvs_port*, %struct.mvs_port** %11, align 8
  %58 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %4
  %62 = load %struct.mvs_port*, %struct.mvs_port** %11, align 8
  %63 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  br label %69

65:                                               ; preds = %4
  %66 = load %struct.asd_sas_port*, %struct.asd_sas_port** %14, align 8
  %67 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i64 [ %64, %61 ], [ %68, %65 ]
  %71 = load i64, i64* @TXQ_PHY_MASK, align 8
  %72 = and i64 %70, %71
  store i64 %72, i64* %29, align 8
  %73 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %74 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %15, align 8
  %77 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* @TXQ_MODE_I, align 8
  %79 = load i64, i64* %27, align 8
  %80 = or i64 %78, %79
  %81 = load i64, i64* @TXQ_CMD_SSP, align 8
  %82 = load i64, i64* @TXQ_CMD_SHIFT, align 8
  %83 = shl i64 %81, %82
  %84 = or i64 %80, %83
  %85 = load i64, i64* %29, align 8
  %86 = load i64, i64* @TXQ_PHY_SHIFT, align 8
  %87 = shl i64 %85, %86
  %88 = or i64 %84, %87
  %89 = call i8* @cpu_to_le32(i64 %88)
  %90 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %91 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %90, i32 0, i32 2
  %92 = load i8**, i8*** %91, align 8
  %93 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %94 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  store i8* %89, i8** %96, align 8
  %97 = load i64, i64* @MCH_RETRY, align 8
  store i64 %97, i64* %23, align 8
  %98 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %99 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %69
  %104 = load i64, i64* @MCH_FBURST, align 8
  %105 = load i64, i64* %23, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %23, align 8
  store i32 128, i32* %21, align 4
  br label %107

107:                                              ; preds = %103, %69
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i64, i64* @MCH_SSP_FR_TASK, align 8
  %112 = load i64, i64* @MCH_SSP_FR_TYPE_SHIFT, align 8
  %113 = shl i64 %111, %112
  %114 = load i64, i64* %23, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %23, align 8
  br label %122

116:                                              ; preds = %107
  %117 = load i64, i64* @MCH_SSP_FR_CMD, align 8
  %118 = load i64, i64* @MCH_SSP_FR_TYPE_SHIFT, align 8
  %119 = shl i64 %117, %118
  %120 = load i64, i64* %23, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %23, align 8
  br label %122

122:                                              ; preds = %116, %110
  %123 = load i64, i64* %23, align 8
  %124 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %6, align 8
  %125 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MCH_PRD_LEN_SHIFT, align 8
  %128 = shl i64 %126, %127
  %129 = or i64 %123, %128
  %130 = call i8* @cpu_to_le32(i64 %129)
  %131 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %132 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %131, i32 0, i32 8
  store i8* %130, i8** %132, align 8
  %133 = load i64, i64* %27, align 8
  %134 = call i8* @cpu_to_le32(i64 %133)
  %135 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %136 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %135, i32 0, i32 7
  store i8* %134, i8** %136, align 8
  %137 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %138 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @cpu_to_le32(i64 %139)
  %141 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %142 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %141, i32 0, i32 6
  store i8* %140, i8** %142, align 8
  %143 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %15, align 8
  %144 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %18, align 8
  %146 = bitcast i8* %145 to i32*
  store i32* %146, i32** %19, align 8
  %147 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %15, align 8
  %148 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %22, align 8
  %150 = load i64, i64* %22, align 8
  %151 = call i8* @cpu_to_le64(i64 %150)
  %152 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %153 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* @MVS_SSP_CMD_SZ, align 4
  %155 = load i8*, i8** %18, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr i8, i8* %155, i64 %156
  store i8* %157, i8** %18, align 8
  %158 = load i32, i32* @MVS_SSP_CMD_SZ, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %22, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %22, align 8
  %162 = load i8*, i8** %18, align 8
  %163 = bitcast i8* %162 to i32*
  store i32* %163, i32** %20, align 8
  %164 = load i64, i64* %22, align 8
  %165 = call i8* @cpu_to_le64(i64 %164)
  %166 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %167 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %166, i32 0, i32 4
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @MVS_OAF_SZ, align 4
  %169 = load i8*, i8** %18, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr i8, i8* %169, i64 %170
  store i8* %171, i8** %18, align 8
  %172 = load i32, i32* @MVS_OAF_SZ, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %22, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %22, align 8
  %176 = load i8*, i8** %18, align 8
  store i8* %176, i8** %16, align 8
  %177 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %6, align 8
  %178 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %122
  %182 = load i64, i64* %22, align 8
  %183 = call i8* @cpu_to_le64(i64 %182)
  %184 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %185 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %184, i32 0, i32 3
  store i8* %183, i8** %185, align 8
  br label %189

186:                                              ; preds = %122
  %187 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %188 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %187, i32 0, i32 3
  store i8* null, i8** %188, align 8
  br label %189

189:                                              ; preds = %186, %181
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64 (...)*, i64 (...)** %191, align 8
  %193 = call i64 (...) %192()
  %194 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %6, align 8
  %195 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = mul i64 %193, %196
  store i64 %197, i64* %26, align 8
  %198 = load i64, i64* %26, align 8
  %199 = load i8*, i8** %18, align 8
  %200 = getelementptr i8, i8* %199, i64 %198
  store i8* %200, i8** %18, align 8
  %201 = load i64, i64* %26, align 8
  %202 = load i64, i64* %22, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %22, align 8
  %204 = load i8*, i8** %18, align 8
  %205 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %15, align 8
  %206 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %205, i32 0, i32 2
  store i8* %204, i8** %206, align 8
  %207 = load i64, i64* %22, align 8
  %208 = call i8* @cpu_to_le64(i64 %207)
  %209 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %210 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %209, i32 0, i32 2
  store i8* %208, i8** %210, align 8
  %211 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %212 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @MVF_FLAG_SOC, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %189
  %218 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %219 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %218, i32 0, i32 1
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 0
  store i64 0, i64* %221, align 8
  br label %222

222:                                              ; preds = %217, %189
  %223 = load i32, i32* @MVS_SLOT_BUF_SZ, align 4
  %224 = load i32, i32* @MVS_SSP_CMD_SZ, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load i32, i32* @MVS_OAF_SZ, align 4
  %227 = sub nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = sub i64 %228, 4
  %230 = load i64, i64* %26, align 8
  %231 = sub i64 %229, %230
  store i64 %231, i64* %24, align 8
  %232 = load i64, i64* %24, align 8
  %233 = load i64, i64* %28, align 8
  %234 = call i32 @min(i64 %232, i64 %233)
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %24, align 8
  store i64 60, i64* %25, align 8
  %236 = load i64, i64* %24, align 8
  %237 = udiv i64 %236, 4
  %238 = shl i64 %237, 16
  %239 = load i64, i64* %25, align 8
  %240 = udiv i64 %239, 4
  %241 = or i64 %238, %240
  %242 = call i8* @cpu_to_le32(i64 %241)
  %243 = load %struct.mvs_cmd_hdr*, %struct.mvs_cmd_hdr** %10, align 8
  %244 = getelementptr inbounds %struct.mvs_cmd_hdr, %struct.mvs_cmd_hdr* %243, i32 0, i32 0
  store i8* %242, i8** %244, align 8
  %245 = load i32, i32* @PROTOCOL_SSP, align 4
  %246 = shl i32 %245, 4
  %247 = or i32 128, %246
  %248 = or i32 %247, 1
  %249 = load i32*, i32** %20, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  store i32 %248, i32* %250, align 4
  %251 = load %struct.asd_sas_port*, %struct.asd_sas_port** %14, align 8
  %252 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %255 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @min(i64 %253, i64 %256)
  %258 = and i32 %257, 15
  %259 = load i32*, i32** %20, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  store i32 %258, i32* %260, align 4
  %261 = load %struct.mvs_device*, %struct.mvs_device** %13, align 8
  %262 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = add i64 %263, 1
  %265 = call i8* @cpu_to_be16(i64 %264)
  %266 = load i32*, i32** %20, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 2
  %268 = bitcast i32* %267 to i8**
  store i8* %265, i8** %268, align 8
  %269 = load i32*, i32** %20, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 4
  %271 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %272 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %275 = call i32 @memcpy(i32* %270, i32* %273, i32 %274)
  %276 = load i32*, i32** %19, align 8
  %277 = bitcast i32* %276 to %struct.ssp_frame_hdr*
  store %struct.ssp_frame_hdr* %277, %struct.ssp_frame_hdr** %17, align 8
  %278 = load i32, i32* %7, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %222
  %281 = load i64, i64* @SSP_TASK, align 8
  %282 = load %struct.ssp_frame_hdr*, %struct.ssp_frame_hdr** %17, align 8
  %283 = getelementptr inbounds %struct.ssp_frame_hdr, %struct.ssp_frame_hdr* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  br label %288

284:                                              ; preds = %222
  %285 = load i64, i64* @SSP_COMMAND, align 8
  %286 = load %struct.ssp_frame_hdr*, %struct.ssp_frame_hdr** %17, align 8
  %287 = getelementptr inbounds %struct.ssp_frame_hdr, %struct.ssp_frame_hdr* %286, i32 0, i32 0
  store i64 %285, i64* %287, align 8
  br label %288

288:                                              ; preds = %284, %280
  %289 = load %struct.ssp_frame_hdr*, %struct.ssp_frame_hdr** %17, align 8
  %290 = getelementptr inbounds %struct.ssp_frame_hdr, %struct.ssp_frame_hdr* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %293 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* @HASHED_SAS_ADDR_SIZE, align 4
  %296 = call i32 @memcpy(i32* %291, i32* %294, i32 %295)
  %297 = load %struct.ssp_frame_hdr*, %struct.ssp_frame_hdr** %17, align 8
  %298 = getelementptr inbounds %struct.ssp_frame_hdr, %struct.ssp_frame_hdr* %297, i32 0, i32 2
  %299 = load i32*, i32** %298, align 8
  %300 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %301 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* @HASHED_SAS_ADDR_SIZE, align 4
  %304 = call i32 @memcpy(i32* %299, i32* %302, i32 %303)
  %305 = load i64, i64* %27, align 8
  %306 = call i8* @cpu_to_be16(i64 %305)
  %307 = load %struct.ssp_frame_hdr*, %struct.ssp_frame_hdr** %17, align 8
  %308 = getelementptr inbounds %struct.ssp_frame_hdr, %struct.ssp_frame_hdr* %307, i32 0, i32 3
  store i8* %306, i8** %308, align 8
  %309 = load i32*, i32** %19, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 32
  store i32* %310, i32** %19, align 8
  %311 = load i32*, i32** %19, align 8
  %312 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %313 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 3
  %315 = call i32 @memcpy(i32* %311, i32* %314, i32 8)
  %316 = load %struct.ssp_frame_hdr*, %struct.ssp_frame_hdr** %17, align 8
  %317 = getelementptr inbounds %struct.ssp_frame_hdr, %struct.ssp_frame_hdr* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @SSP_TASK, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %321, label %351

321:                                              ; preds = %288
  %322 = load i32, i32* %21, align 4
  %323 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %324 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %322, %326
  %328 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %329 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = shl i32 %331, 3
  %333 = or i32 %327, %332
  %334 = load i32*, i32** %19, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 9
  store i32 %333, i32* %335, align 4
  %336 = load i32*, i32** %19, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 12
  %338 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %339 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %345 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 2
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @memcpy(i32* %337, i32* %343, i32 %349)
  br label %376

351:                                              ; preds = %288
  %352 = load %struct.mvs_tmf_task*, %struct.mvs_tmf_task** %8, align 8
  %353 = getelementptr inbounds %struct.mvs_tmf_task, %struct.mvs_tmf_task* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load i32*, i32** %19, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 10
  store i32 %354, i32* %356, align 4
  %357 = load %struct.mvs_tmf_task*, %struct.mvs_tmf_task** %8, align 8
  %358 = getelementptr inbounds %struct.mvs_tmf_task, %struct.mvs_tmf_task* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  switch i32 %359, label %374 [
    i32 129, label %360
    i32 128, label %360
  ]

360:                                              ; preds = %351, %351
  %361 = load %struct.mvs_tmf_task*, %struct.mvs_tmf_task** %8, align 8
  %362 = getelementptr inbounds %struct.mvs_tmf_task, %struct.mvs_tmf_task* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = ashr i32 %363, 8
  %365 = and i32 %364, 255
  %366 = load i32*, i32** %19, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 12
  store i32 %365, i32* %367, align 4
  %368 = load %struct.mvs_tmf_task*, %struct.mvs_tmf_task** %8, align 8
  %369 = getelementptr inbounds %struct.mvs_tmf_task, %struct.mvs_tmf_task* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = and i32 %370, 255
  %372 = load i32*, i32** %19, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 13
  store i32 %371, i32* %373, align 4
  br label %375

374:                                              ; preds = %351
  br label %375

375:                                              ; preds = %374, %360
  br label %376

376:                                              ; preds = %375, %321
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 1
  %379 = load i32 (i32, i64, i8*)*, i32 (i32, i64, i8*)** %378, align 8
  %380 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %381 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.mvs_task_exec_info*, %struct.mvs_task_exec_info** %6, align 8
  %384 = getelementptr inbounds %struct.mvs_task_exec_info, %struct.mvs_task_exec_info* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = load i8*, i8** %16, align 8
  %387 = call i32 %379(i32 %382, i64 %385, i8* %386)
  ret i32 0
}

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
