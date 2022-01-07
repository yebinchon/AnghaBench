; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_sqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_sqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task_params = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.scsi_sgl_task_params = type { i32, i32 }
%struct.scsi_dif_task_params = type { i32 }
%struct.iscsi_common_hdr = type { i32, i32, i32 }
%struct.scsi_initiator_cmd_params = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ISCSI_WQE_WQE_TYPE = common dso_local global i32 0, align 4
@ISCSI_WQE_TYPE_TASK_CLEANUP = common dso_local global i32 0, align 4
@ISCSI_WQE_TYPE_NORMAL = common dso_local global i32 0, align 4
@ISCSI_WQE_NUM_SGES_SLOWIO = common dso_local global i32 0, align 4
@SCSI_NUM_SGES_SLOW_SGL_THR = common dso_local global i32 0, align 4
@ISCSI_WQE_NUM_SGES = common dso_local global i32 0, align 4
@ISCSI_WQE_CONT_LEN = common dso_local global i32 0, align 4
@ISCSI_CMD_HDR_TOTAL_AHS_LEN = common dso_local global i32 0, align 4
@ISCSI_WQE_CDB_SIZE = common dso_local global i32 0, align 4
@ISCSI_WQE_TYPE_LOGIN = common dso_local global i32 0, align 4
@ISCSI_WQE_TYPE_MIDDLE_PATH = common dso_local global i32 0, align 4
@ISCSI_COMMON_HDR_OPCODE = common dso_local global i32 0, align 4
@ISCSI_OPCODE_TEXT_RESPONSE = common dso_local global i32 0, align 4
@ISCSI_OPCODE_NOP_IN = common dso_local global i32 0, align 4
@ISCSI_TTT_ALL_ONES = common dso_local global i32 0, align 4
@ISCSI_WQE_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_dif_task_params*, %struct.iscsi_common_hdr*, %struct.scsi_initiator_cmd_params*, i32, i32)* @init_sqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sqe(%struct.iscsi_task_params* %0, %struct.scsi_sgl_task_params* %1, %struct.scsi_dif_task_params* %2, %struct.iscsi_common_hdr* %3, %struct.scsi_initiator_cmd_params* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iscsi_task_params*, align 8
  %9 = alloca %struct.scsi_sgl_task_params*, align 8
  %10 = alloca %struct.scsi_dif_task_params*, align 8
  %11 = alloca %struct.iscsi_common_hdr*, align 8
  %12 = alloca %struct.scsi_initiator_cmd_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iscsi_task_params* %0, %struct.iscsi_task_params** %8, align 8
  store %struct.scsi_sgl_task_params* %1, %struct.scsi_sgl_task_params** %9, align 8
  store %struct.scsi_dif_task_params* %2, %struct.scsi_dif_task_params** %10, align 8
  store %struct.iscsi_common_hdr* %3, %struct.iscsi_common_hdr** %11, align 8
  store %struct.scsi_initiator_cmd_params* %4, %struct.scsi_initiator_cmd_params** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %20 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %7
  br label %261

24:                                               ; preds = %7
  %25 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %26 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @memset(%struct.TYPE_4__* %27, i32 0, i32 16)
  %29 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %30 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %34 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %24
  %40 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %41 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ISCSI_WQE_WQE_TYPE, align 4
  %46 = load i32, i32* @ISCSI_WQE_TYPE_TASK_CLEANUP, align 4
  %47 = call i32 @SET_FIELD(i32 %44, i32 %45, i32 %46)
  br label %261

48:                                               ; preds = %24
  %49 = load i32, i32* %13, align 4
  switch i32 %49, label %260 [
    i32 130, label %50
    i32 131, label %128
    i32 129, label %156
    i32 128, label %156
  ]

50:                                               ; preds = %48
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %51 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %52 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %10, align 8
  %56 = call i32 @init_dif_context_flags(i32* %54, %struct.scsi_dif_task_params* %55)
  %57 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %58 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ISCSI_WQE_WQE_TYPE, align 4
  %63 = load i32, i32* @ISCSI_WQE_TYPE_NORMAL, align 4
  %64 = call i32 @SET_FIELD(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %66 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %50
  %70 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %73 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %10, align 8
  %74 = call i32 @calc_rw_task_size(%struct.iscsi_task_params* %70, i32 %71, %struct.scsi_sgl_task_params* %72, %struct.scsi_dif_task_params* %73)
  store i32 %74, i32* %15, align 4
  %75 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %76 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %79 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @scsi_is_slow_sgl(i32 %77, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* @ISCSI_WQE_NUM_SGES_SLOWIO, align 4
  store i32 %84, i32* %16, align 4
  br label %91

85:                                               ; preds = %69
  %86 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %87 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SCSI_NUM_SGES_SLOW_SGL_THR, align 4
  %90 = call i32 @min(i32 %88, i32 %89)
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %85, %83
  br label %92

92:                                               ; preds = %91, %50
  %93 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %94 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ISCSI_WQE_NUM_SGES, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @SET_FIELD(i32 %97, i32 %98, i32 %99)
  %101 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %102 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ISCSI_WQE_CONT_LEN, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @SET_FIELD(i32 %105, i32 %106, i32 %107)
  %109 = load %struct.iscsi_common_hdr*, %struct.iscsi_common_hdr** %11, align 8
  %110 = getelementptr inbounds %struct.iscsi_common_hdr, %struct.iscsi_common_hdr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ISCSI_CMD_HDR_TOTAL_AHS_LEN, align 4
  %113 = call i32 @GET_FIELD(i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %92
  %116 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %117 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ISCSI_WQE_CDB_SIZE, align 4
  %122 = load %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params** %12, align 8
  %123 = getelementptr inbounds %struct.scsi_initiator_cmd_params, %struct.scsi_initiator_cmd_params* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @SET_FIELD(i32 %120, i32 %121, i32 %125)
  br label %127

127:                                              ; preds = %115, %92
  br label %261

128:                                              ; preds = %48
  %129 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %130 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ISCSI_WQE_WQE_TYPE, align 4
  %135 = load i32, i32* @ISCSI_WQE_TYPE_NORMAL, align 4
  %136 = call i32 @SET_FIELD(i32 %133, i32 %134, i32 %135)
  %137 = load %struct.iscsi_common_hdr*, %struct.iscsi_common_hdr** %11, align 8
  %138 = getelementptr inbounds %struct.iscsi_common_hdr, %struct.iscsi_common_hdr* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ISCSI_CMD_HDR_TOTAL_AHS_LEN, align 4
  %141 = call i32 @GET_FIELD(i32 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %128
  %144 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %145 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ISCSI_WQE_CDB_SIZE, align 4
  %150 = load %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params** %12, align 8
  %151 = getelementptr inbounds %struct.scsi_initiator_cmd_params, %struct.scsi_initiator_cmd_params* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @SET_FIELD(i32 %148, i32 %149, i32 %153)
  br label %155

155:                                              ; preds = %143, %128
  br label %261

156:                                              ; preds = %48, %48
  store i32 1, i32* %17, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp eq i32 %157, 129
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %161 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @ISCSI_WQE_WQE_TYPE, align 4
  %166 = load i32, i32* @ISCSI_WQE_TYPE_LOGIN, align 4
  %167 = call i32 @SET_FIELD(i32 %164, i32 %165, i32 %166)
  br label %177

168:                                              ; preds = %156
  %169 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %170 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ISCSI_WQE_WQE_TYPE, align 4
  %175 = load i32, i32* @ISCSI_WQE_TYPE_MIDDLE_PATH, align 4
  %176 = call i32 @SET_FIELD(i32 %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %168, %159
  %178 = load i32, i32* %13, align 4
  %179 = icmp eq i32 %178, 128
  br i1 %179, label %180, label %201

180:                                              ; preds = %177
  %181 = load %struct.iscsi_common_hdr*, %struct.iscsi_common_hdr** %11, align 8
  %182 = getelementptr inbounds %struct.iscsi_common_hdr, %struct.iscsi_common_hdr* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @ISCSI_COMMON_HDR_OPCODE, align 4
  %185 = call i32 @GET_FIELD(i32 %183, i32 %184)
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* @ISCSI_OPCODE_TEXT_RESPONSE, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %180
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* @ISCSI_OPCODE_NOP_IN, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %199, label %193

193:                                              ; preds = %189
  %194 = load %struct.iscsi_common_hdr*, %struct.iscsi_common_hdr** %11, align 8
  %195 = getelementptr inbounds %struct.iscsi_common_hdr, %struct.iscsi_common_hdr* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @ISCSI_TTT_ALL_ONES, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %193, %189
  store i32 0, i32* %17, align 4
  br label %200

200:                                              ; preds = %199, %193, %180
  br label %201

201:                                              ; preds = %200, %177
  %202 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %203 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %202, i32 0, i32 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @ISCSI_WQE_RESPONSE, align 4
  %208 = load i32, i32* %17, align 4
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 1, i32 0
  %212 = call i32 @SET_FIELD(i32 %206, i32 %207, i32 %211)
  %213 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %214 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %259

217:                                              ; preds = %201
  %218 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %219 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %218, i32 0, i32 1
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @ISCSI_WQE_CONT_LEN, align 4
  %224 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %225 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @SET_FIELD(i32 %222, i32 %223, i32 %226)
  %228 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %229 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %232 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @scsi_is_slow_sgl(i32 %230, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %217
  %237 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %238 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %237, i32 0, i32 1
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @ISCSI_WQE_NUM_SGES, align 4
  %243 = load i32, i32* @ISCSI_WQE_NUM_SGES_SLOWIO, align 4
  %244 = call i32 @SET_FIELD(i32 %241, i32 %242, i32 %243)
  br label %258

245:                                              ; preds = %217
  %246 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %8, align 8
  %247 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %246, i32 0, i32 1
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @ISCSI_WQE_NUM_SGES, align 4
  %252 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %253 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @SCSI_NUM_SGES_SLOW_SGL_THR, align 4
  %256 = call i32 @min(i32 %254, i32 %255)
  %257 = call i32 @SET_FIELD(i32 %250, i32 %251, i32 %256)
  br label %258

258:                                              ; preds = %245, %236
  br label %259

259:                                              ; preds = %258, %201
  br label %261

260:                                              ; preds = %48
  br label %261

261:                                              ; preds = %23, %39, %260, %259, %155, %127
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @init_dif_context_flags(i32*, %struct.scsi_dif_task_params*) #1

declare dso_local i32 @calc_rw_task_size(%struct.iscsi_task_params*, i32, %struct.scsi_sgl_task_params*, %struct.scsi_dif_task_params*) #1

declare dso_local i32 @scsi_is_slow_sgl(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
