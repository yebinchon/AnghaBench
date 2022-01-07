; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_rport_els_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_rport_els_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_11__, i32, %struct.lpfc_nodelist* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.lpfc_nodelist = type { %struct.bsg_job*, %struct.TYPE_13__ }
%struct.bsg_job = type { %struct.TYPE_17__, i32*, %struct.fc_bsg_reply* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.fc_bsg_ctels_reply }
%struct.fc_bsg_ctels_reply = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.lpfc_nodelist* }
%struct.bsg_job_data = type { %struct.bsg_job*, %struct.TYPE_13__ }
%struct.lpfc_dmabuf = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@LPFC_IO_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@IOSTAT_SUCCESS = common dso_local global i64 0, align 8
@IOSTAT_LS_RJT = common dso_local global i64 0, align 8
@FC_CTELS_STATUS_REJECT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_bsg_rport_els_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_rport_els_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.bsg_job_data*, align 8
  %8 = alloca %struct.bsg_job*, align 8
  %9 = alloca %struct.fc_bsg_reply*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.lpfc_nodelist*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.fc_bsg_ctels_reply*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %12, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %13, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 3
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %20, align 8
  %22 = bitcast %struct.lpfc_nodelist* %21 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %22, %struct.bsg_job_data** %7, align 8
  %23 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %24 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %26, align 8
  store %struct.lpfc_nodelist* %27, %struct.lpfc_nodelist** %11, align 8
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %29, i32 0, i32 3
  store %struct.lpfc_nodelist* %28, %struct.lpfc_nodelist** %30, align 8
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 1
  %33 = load i64, i64* %16, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %36 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %35, i32 0, i32 0
  %37 = load %struct.bsg_job*, %struct.bsg_job** %36, align 8
  store %struct.bsg_job* %37, %struct.bsg_job** %8, align 8
  %38 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %39 = icmp ne %struct.bsg_job* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %42 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %41, i32 0, i32 2
  %43 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %42, align 8
  store %struct.fc_bsg_reply* %43, %struct.fc_bsg_reply** %9, align 8
  %44 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %45 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %40, %3
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 1
  %49 = load i64, i64* %16, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 0
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load i32, i32* @LPFC_IO_CMD_OUTSTANDING, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %66 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %65, i32 0, i32 1
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %10, align 8
  %67 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %70, %struct.lpfc_dmabuf** %12, align 8
  %71 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %72 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %75, %struct.lpfc_dmabuf** %13, align 8
  %76 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %77 = icmp ne %struct.bsg_job* %76, null
  br i1 %77, label %78, label %156

78:                                               ; preds = %46
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IOSTAT_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %78
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %17, align 4
  %91 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %92 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %96 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %100 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @sg_copy_from_buffer(i32 %94, i32 %98, i32 %101, i32 %102)
  %104 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %155

106:                                              ; preds = %78
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IOSTAT_LS_RJT, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %151

112:                                              ; preds = %106
  %113 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %114 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %113, i32 0, i32 0
  store i32 40, i32* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = bitcast i32* %119 to i8**
  store i8** %120, i8*** %15, align 8
  %121 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %122 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  store %struct.fc_bsg_ctels_reply* %123, %struct.fc_bsg_ctels_reply** %14, align 8
  %124 = load i32, i32* @FC_CTELS_STATUS_REJECT, align 4
  %125 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %14, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load i8**, i8*** %15, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 3
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %14, align 8
  %131 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 3
  store i8* %129, i8** %132, align 8
  %133 = load i8**, i8*** %15, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %14, align 8
  %137 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  store i8* %135, i8** %138, align 8
  %139 = load i8**, i8*** %15, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %14, align 8
  %143 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  store i8* %141, i8** %144, align 8
  %145 = load i8**, i8*** %15, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %14, align 8
  %149 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  store i8* %147, i8** %150, align 8
  br label %154

151:                                              ; preds = %106
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %151, %112
  br label %155

155:                                              ; preds = %154, %84
  br label %156

156:                                              ; preds = %155, %46
  %157 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %158 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %157)
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %160 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %161 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %159, %struct.lpfc_iocbq* %160)
  %162 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %163 = bitcast %struct.bsg_job_data* %162 to %struct.lpfc_nodelist*
  %164 = call i32 @kfree(%struct.lpfc_nodelist* %163)
  %165 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %166 = icmp ne %struct.bsg_job* %165, null
  br i1 %166, label %167, label %179

167:                                              ; preds = %156
  %168 = load i32, i32* %18, align 4
  %169 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %170 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %172 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %173 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %176 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @bsg_job_done(%struct.bsg_job* %171, i32 %174, i32 %177)
  br label %179

179:                                              ; preds = %167, %156
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @kfree(%struct.lpfc_nodelist*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
