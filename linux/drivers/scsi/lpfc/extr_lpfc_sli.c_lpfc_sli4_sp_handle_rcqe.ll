; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_rcqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__, i32, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.lpfc_nvmet_tgtport* }
%struct.lpfc_nvmet_tgtport = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.lpfc_queue*, %struct.lpfc_queue* }
%struct.lpfc_queue = type { i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_rcqe = type { i32 }
%struct.fc_frame_header = type { i32 }
%struct.hbq_dmabuf = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@lpfc_cqe_code = common dso_local global i32 0, align 4
@CQE_CODE_RECEIVE_V1 = common dso_local global i64 0, align 8
@lpfc_rcqe_rq_id_v1 = common dso_local global i32 0, align 4
@lpfc_rcqe_rq_id = common dso_local global i32 0, align 4
@lpfc_rcqe_status = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"2537 Receive Frame Truncated!!\0A\00", align 1
@FC_RCTL_MDS_DIAGS = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_DATA = common dso_local global i32 0, align 4
@HBA_SP_QUEUE_EVT = common dso_local global i32 0, align 4
@LOG_NVME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"6402 RQE Error x%x, posted %d err_cnt %d: %x %x %x\0A\00", align 1
@HBA_POST_RECEIVE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_rcqe*)* @lpfc_sli4_sp_handle_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_rcqe(%struct.lpfc_hba* %0, %struct.lpfc_rcqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_rcqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_frame_header*, align 8
  %8 = alloca %struct.lpfc_queue*, align 8
  %9 = alloca %struct.lpfc_queue*, align 8
  %10 = alloca %struct.lpfc_nvmet_tgtport*, align 8
  %11 = alloca %struct.hbq_dmabuf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_rcqe* %1, %struct.lpfc_rcqe** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load %struct.lpfc_queue*, %struct.lpfc_queue** %17, align 8
  store %struct.lpfc_queue* %18, %struct.lpfc_queue** %8, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.lpfc_queue*, %struct.lpfc_queue** %21, align 8
  store %struct.lpfc_queue* %22, %struct.lpfc_queue** %9, align 8
  %23 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %24 = icmp ne %struct.lpfc_queue* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %2
  %30 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %31 = icmp ne %struct.lpfc_queue* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29, %2
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %207

38:                                               ; preds = %29
  %39 = load i32, i32* @lpfc_cqe_code, align 4
  %40 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %41 = call i64 @bf_get(i32 %39, %struct.lpfc_rcqe* %40)
  %42 = load i64, i64* @CQE_CODE_RECEIVE_V1, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @lpfc_rcqe_rq_id_v1, align 4
  %46 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %47 = call i64 @bf_get(i32 %45, %struct.lpfc_rcqe* %46)
  store i64 %47, i64* %13, align 8
  br label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @lpfc_rcqe_rq_id, align 4
  %50 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %51 = call i64 @bf_get(i32 %49, %struct.lpfc_rcqe* %50)
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %205

59:                                               ; preds = %52
  %60 = load i32, i32* @lpfc_rcqe_status, align 4
  %61 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %62 = call i64 @bf_get(i32 %60, %struct.lpfc_rcqe* %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  switch i64 %63, label %204 [
    i64 129, label %64
    i64 128, label %69
    i64 131, label %152
    i64 130, label %186
  ]

64:                                               ; preds = %59
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %66 = load i32, i32* @KERN_ERR, align 4
  %67 = load i32, i32* @LOG_SLI, align 4
  %68 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %59, %64
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 0
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %75 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %76 = call i32 @lpfc_sli4_rq_release(%struct.lpfc_queue* %74, %struct.lpfc_queue* %75)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 6
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = call %struct.hbq_dmabuf* @lpfc_sli_hbqbuf_get(i32* %81)
  store %struct.hbq_dmabuf* %82, %struct.hbq_dmabuf** %11, align 8
  %83 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %11, align 8
  %84 = icmp ne %struct.hbq_dmabuf* %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %69
  %86 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %87 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 0
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  br label %205

94:                                               ; preds = %69
  %95 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %96 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %100 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %11, align 8
  %104 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %108 = call i32 @memcpy(i32* %106, %struct.lpfc_rcqe* %107, i32 4)
  %109 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %11, align 8
  %110 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.fc_frame_header*
  store %struct.fc_frame_header* %113, %struct.fc_frame_header** %7, align 8
  %114 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %115 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @FC_RCTL_MDS_DIAGS, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %94
  %120 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %121 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FC_RCTL_DD_UNSOL_DATA, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %119, %94
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %127 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %126, i32 0, i32 0
  %128 = load i64, i64* %14, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %11, align 8
  %134 = call i32 @lpfc_sli4_handle_mds_loopback(i32 %132, %struct.hbq_dmabuf* %133)
  br label %204

135:                                              ; preds = %119
  %136 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %11, align 8
  %137 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = call i32 @list_add_tail(i32* %138, i32* %141)
  %143 = load i32, i32* @HBA_SP_QUEUE_EVT, align 4
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 0
  %150 = load i64, i64* %14, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  store i32 1, i32* %6, align 4
  br label %204

152:                                              ; preds = %59
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %185

157:                                              ; preds = %152
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %159 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %158, i32 0, i32 2
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %161, align 8
  store %struct.lpfc_nvmet_tgtport* %162, %struct.lpfc_nvmet_tgtport** %10, align 8
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %164 = load i32, i32* @KERN_ERR, align 4
  %165 = load i32, i32* @LOG_SLI, align 4
  %166 = load i32, i32* @LOG_NVME, align 4
  %167 = or i32 %165, %166
  %168 = load i64, i64* %12, align 8
  %169 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %170 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %173 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %10, align 8
  %176 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %175, i32 0, i32 2
  %177 = call i32 @atomic_read(i32* %176)
  %178 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %10, align 8
  %179 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %178, i32 0, i32 1
  %180 = call i32 @atomic_read(i32* %179)
  %181 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %10, align 8
  %182 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %181, i32 0, i32 0
  %183 = call i32 @atomic_read(i32* %182)
  %184 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %163, i32 %164, i32 %167, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %168, i32 %171, i32 %174, i32 %177, i32 %180, i32 %183)
  br label %185

185:                                              ; preds = %157, %152
  br label %186

186:                                              ; preds = %59, %185
  %187 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %188 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %192 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %191, i32 0, i32 0
  %193 = load i64, i64* %14, align 8
  %194 = call i32 @spin_lock_irqsave(i32* %192, i64 %193)
  %195 = load i32, i32* @HBA_POST_RECEIVE_BUFFER, align 4
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %197 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 0
  %202 = load i64, i64* %14, align 8
  %203 = call i32 @spin_unlock_irqrestore(i32* %201, i64 %202)
  store i32 1, i32* %6, align 4
  br label %204

204:                                              ; preds = %59, %186, %135, %125
  br label %205

205:                                              ; preds = %204, %85, %58
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %205, %36
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_rcqe*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lpfc_sli4_rq_release(%struct.lpfc_queue*, %struct.lpfc_queue*) #1

declare dso_local %struct.hbq_dmabuf* @lpfc_sli_hbqbuf_get(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.lpfc_rcqe*, i32) #1

declare dso_local i32 @lpfc_sli4_handle_mds_loopback(i32, %struct.hbq_dmabuf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
