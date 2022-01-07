; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_nvmet_handle_rcqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_nvmet_handle_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.lpfc_nvmet_tgtport* }
%struct.lpfc_nvmet_tgtport = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.lpfc_queue**, %struct.lpfc_queue**, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }
%struct.lpfc_queue = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_rcqe = type { i32 }
%struct.rqb_dmabuf = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.fc_frame_header = type { i32*, i32, i32 }

@lpfc_cqe_code = common dso_local global i32 0, align 4
@CQE_CODE_RECEIVE_V1 = common dso_local global i64 0, align 8
@lpfc_rcqe_rq_id_v1 = common dso_local global i32 0, align 4
@lpfc_rcqe_rq_id = common dso_local global i32 0, align 4
@lpfc_rcqe_status = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"6126 Receive Frame Truncated!!\0A\00", align 1
@FC_FC_FIRST_SEQ = common dso_local global i64 0, align 8
@FC_FC_END_SEQ = common dso_local global i64 0, align 8
@FC_FC_SEQ_INIT = common dso_local global i64 0, align 8
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@lpfc_rcqe_length = common dso_local global i32 0, align 4
@HBA_NVMET_CQ_NOTIFY = common dso_local global i32 0, align 4
@LOG_NVME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"6401 RQE Error x%x, posted %d err_cnt %d: %x %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_rcqe*)* @lpfc_sli4_nvmet_handle_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_nvmet_handle_rcqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_rcqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca %struct.lpfc_rcqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_queue*, align 8
  %10 = alloca %struct.lpfc_queue*, align 8
  %11 = alloca %struct.rqb_dmabuf*, align 8
  %12 = alloca %struct.fc_frame_header*, align 8
  %13 = alloca %struct.lpfc_nvmet_tgtport*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %6, align 8
  store %struct.lpfc_rcqe* %2, %struct.lpfc_rcqe** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %26, align 8
  %28 = icmp eq %struct.TYPE_5__** %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %3
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %261

31:                                               ; preds = %23
  %32 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %33 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %34, %42
  store i64 %43, i64* %18, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %46, align 8
  %48 = load i64, i64* %18, align 8
  %49 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %47, i64 %48
  %50 = load %struct.lpfc_queue*, %struct.lpfc_queue** %49, align 8
  store %struct.lpfc_queue* %50, %struct.lpfc_queue** %9, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %53, align 8
  %55 = load i64, i64* %18, align 8
  %56 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %54, i64 %55
  %57 = load %struct.lpfc_queue*, %struct.lpfc_queue** %56, align 8
  store %struct.lpfc_queue* %57, %struct.lpfc_queue** %10, align 8
  %58 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %59 = icmp ne %struct.lpfc_queue* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %31
  %65 = load %struct.lpfc_queue*, %struct.lpfc_queue** %10, align 8
  %66 = icmp ne %struct.lpfc_queue* %65, null
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64, %31
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %261

73:                                               ; preds = %64
  %74 = load i32, i32* @lpfc_cqe_code, align 4
  %75 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %7, align 8
  %76 = call i64 @bf_get(i32 %74, %struct.lpfc_rcqe* %75)
  %77 = load i64, i64* @CQE_CODE_RECEIVE_V1, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @lpfc_rcqe_rq_id_v1, align 4
  %81 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %7, align 8
  %82 = call i64 @bf_get(i32 %80, %struct.lpfc_rcqe* %81)
  store i64 %82, i64* %15, align 8
  br label %87

83:                                               ; preds = %73
  %84 = load i32, i32* @lpfc_rcqe_rq_id, align 4
  %85 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %7, align 8
  %86 = call i64 @bf_get(i32 %84, %struct.lpfc_rcqe* %85)
  store i64 %86, i64* %15, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %15, align 8
  %94 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %95 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %261

100:                                              ; preds = %92
  %101 = load i32, i32* @lpfc_rcqe_status, align 4
  %102 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %7, align 8
  %103 = call i64 @bf_get(i32 %101, %struct.lpfc_rcqe* %102)
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %14, align 8
  switch i64 %104, label %258 [
    i64 129, label %105
    i64 128, label %110
    i64 131, label %219
    i64 130, label %253
  ]

105:                                              ; preds = %100
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %107 = load i32, i32* @KERN_ERR, align 4
  %108 = load i32, i32* @LOG_SLI, align 4
  %109 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %100, %105
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 2
  %113 = load i64, i64* %16, align 8
  %114 = call i32 @spin_lock_irqsave(i32* %112, i64 %113)
  %115 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %116 = load %struct.lpfc_queue*, %struct.lpfc_queue** %10, align 8
  %117 = call i32 @lpfc_sli4_rq_release(%struct.lpfc_queue* %115, %struct.lpfc_queue* %116)
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %119 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %120 = call %struct.rqb_dmabuf* @lpfc_sli_rqbuf_get(%struct.lpfc_hba* %118, %struct.lpfc_queue* %119)
  store %struct.rqb_dmabuf* %120, %struct.rqb_dmabuf** %11, align 8
  %121 = load %struct.rqb_dmabuf*, %struct.rqb_dmabuf** %11, align 8
  %122 = icmp ne %struct.rqb_dmabuf* %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %110
  %124 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %125 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 2
  %130 = load i64, i64* %16, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  br label %259

132:                                              ; preds = %110
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %134 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %133, i32 0, i32 2
  %135 = load i64, i64* %16, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %138 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %142 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %142, align 8
  %145 = load %struct.rqb_dmabuf*, %struct.rqb_dmabuf** %11, align 8
  %146 = getelementptr inbounds %struct.rqb_dmabuf, %struct.rqb_dmabuf* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to %struct.fc_frame_header*
  store %struct.fc_frame_header* %149, %struct.fc_frame_header** %12, align 8
  %150 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %151 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 16
  %156 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %157 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 8
  %162 = or i32 %155, %161
  %163 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %164 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %162, %167
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %17, align 8
  %170 = load i64, i64* %17, align 8
  %171 = load i64, i64* @FC_FC_FIRST_SEQ, align 8
  %172 = load i64, i64* @FC_FC_END_SEQ, align 8
  %173 = or i64 %171, %172
  %174 = load i64, i64* @FC_FC_SEQ_INIT, align 8
  %175 = or i64 %173, %174
  %176 = and i64 %170, %175
  %177 = load i64, i64* @FC_FC_FIRST_SEQ, align 8
  %178 = load i64, i64* @FC_FC_END_SEQ, align 8
  %179 = or i64 %177, %178
  %180 = load i64, i64* @FC_FC_SEQ_INIT, align 8
  %181 = or i64 %179, %180
  %182 = icmp ne i64 %176, %181
  br i1 %182, label %188, label %183

183:                                              ; preds = %132
  %184 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %185 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183, %132
  br label %214

189:                                              ; preds = %183
  %190 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %191 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @FC_TYPE_FCP, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %213

195:                                              ; preds = %189
  %196 = load i32, i32* @lpfc_rcqe_length, align 4
  %197 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %7, align 8
  %198 = call i64 @bf_get(i32 %196, %struct.lpfc_rcqe* %197)
  %199 = load %struct.rqb_dmabuf*, %struct.rqb_dmabuf** %11, align 8
  %200 = getelementptr inbounds %struct.rqb_dmabuf, %struct.rqb_dmabuf* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %202 = load i64, i64* %18, align 8
  %203 = load %struct.rqb_dmabuf*, %struct.rqb_dmabuf** %11, align 8
  %204 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %205 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %208 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @HBA_NVMET_CQ_NOTIFY, align 4
  %211 = and i32 %209, %210
  %212 = call i32 @lpfc_nvmet_unsol_fcp_event(%struct.lpfc_hba* %201, i64 %202, %struct.rqb_dmabuf* %203, i32 %206, i32 %211)
  store i32 0, i32* %4, align 4
  br label %261

213:                                              ; preds = %189
  br label %214

214:                                              ; preds = %213, %188
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %216 = load %struct.rqb_dmabuf*, %struct.rqb_dmabuf** %11, align 8
  %217 = getelementptr inbounds %struct.rqb_dmabuf, %struct.rqb_dmabuf* %216, i32 0, i32 0
  %218 = call i32 @lpfc_rq_buf_free(%struct.lpfc_hba* %215, %struct.TYPE_8__* %217)
  br label %258

219:                                              ; preds = %100
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %221 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %252

224:                                              ; preds = %219
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 1
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %228, align 8
  store %struct.lpfc_nvmet_tgtport* %229, %struct.lpfc_nvmet_tgtport** %13, align 8
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %231 = load i32, i32* @KERN_ERR, align 4
  %232 = load i32, i32* @LOG_SLI, align 4
  %233 = load i32, i32* @LOG_NVME, align 4
  %234 = or i32 %232, %233
  %235 = load i64, i64* %14, align 8
  %236 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %237 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %240 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %13, align 8
  %243 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %242, i32 0, i32 2
  %244 = call i32 @atomic_read(i32* %243)
  %245 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %13, align 8
  %246 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %245, i32 0, i32 1
  %247 = call i32 @atomic_read(i32* %246)
  %248 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %13, align 8
  %249 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %248, i32 0, i32 0
  %250 = call i32 @atomic_read(i32* %249)
  %251 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %230, i32 %231, i32 %234, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %235, i32 %238, i32 %241, i32 %244, i32 %247, i32 %250)
  br label %252

252:                                              ; preds = %224, %219
  br label %253

253:                                              ; preds = %100, %252
  %254 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %255 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %100, %253, %214
  br label %259

259:                                              ; preds = %258, %123
  %260 = load i32, i32* %8, align 4
  store i32 %260, i32* %4, align 4
  br label %261

261:                                              ; preds = %259, %195, %98, %71, %29
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_rcqe*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lpfc_sli4_rq_release(%struct.lpfc_queue*, %struct.lpfc_queue*) #1

declare dso_local %struct.rqb_dmabuf* @lpfc_sli_rqbuf_get(%struct.lpfc_hba*, %struct.lpfc_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_nvmet_unsol_fcp_event(%struct.lpfc_hba*, i64, %struct.rqb_dmabuf*, i32, i32) #1

declare dso_local i32 @lpfc_rq_buf_free(%struct.lpfc_hba*, %struct.TYPE_8__*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
