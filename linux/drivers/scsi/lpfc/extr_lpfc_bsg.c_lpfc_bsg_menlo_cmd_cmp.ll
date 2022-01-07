; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_menlo_cmd_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_menlo_cmd_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_14__, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32, %struct.bsg_job*, %struct.TYPE_8__ }
%struct.bsg_job = type { i32, i32*, %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.lpfc_bsg_menlo }
%struct.lpfc_bsg_menlo = type { %struct.lpfc_dmabuf* }
%struct.bsg_job_data = type { i32, i32, %struct.bsg_job*, %struct.TYPE_8__ }
%struct.menlo_response = type { i32 }

@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_bsg_menlo_cmd_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_menlo_cmd_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.bsg_job_data*, align 8
  %8 = alloca %struct.bsg_job*, align 8
  %9 = alloca %struct.fc_bsg_reply*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_bsg_menlo*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.menlo_response*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 3
  %21 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %22 = bitcast %struct.lpfc_dmabuf* %21 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %22, %struct.bsg_job_data** %7, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 2
  %25 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %24, align 8
  store %struct.lpfc_dmabuf* %25, %struct.lpfc_dmabuf** %12, align 8
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %26, i32 0, i32 1
  %28 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %27, align 8
  store %struct.lpfc_dmabuf* %28, %struct.lpfc_dmabuf** %11, align 8
  %29 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %30 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store %struct.lpfc_bsg_menlo* %31, %struct.lpfc_bsg_menlo** %14, align 8
  %32 = load %struct.lpfc_bsg_menlo*, %struct.lpfc_bsg_menlo** %14, align 8
  %33 = getelementptr inbounds %struct.lpfc_bsg_menlo, %struct.lpfc_bsg_menlo* %32, i32 0, i32 0
  %34 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %33, align 8
  store %struct.lpfc_dmabuf* %34, %struct.lpfc_dmabuf** %13, align 8
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %36 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %35, i32 0, i32 0
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %10, align 8
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 0
  %39 = load i64, i64* %15, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %42 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %41, i32 0, i32 2
  %43 = load %struct.bsg_job*, %struct.bsg_job** %42, align 8
  store %struct.bsg_job* %43, %struct.bsg_job** %8, align 8
  %44 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %45 = icmp ne %struct.bsg_job* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %3
  %47 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %48 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %47, i32 0, i32 2
  %49 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %48, align 8
  store %struct.fc_bsg_reply* %49, %struct.fc_bsg_reply** %9, align 8
  %50 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %51 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %46, %3
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 0
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %58 = icmp ne %struct.bsg_job* %57, null
  br i1 %58, label %59, label %119

59:                                               ; preds = %52
  %60 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %61 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.menlo_response*
  store %struct.menlo_response* %65, %struct.menlo_response** %16, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.menlo_response*, %struct.menlo_response** %16, align 8
  %70 = getelementptr inbounds %struct.menlo_response, %struct.menlo_response* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %59
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %89 = and i32 %87, %88
  switch i32 %89, label %96 [
    i32 128, label %90
    i32 129, label %93
  ]

90:                                               ; preds = %81
  %91 = load i32, i32* @ETIMEDOUT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %18, align 4
  br label %99

93:                                               ; preds = %81
  %94 = load i32, i32* @EFAULT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %18, align 4
  br label %99

96:                                               ; preds = %81
  %97 = load i32, i32* @EACCES, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %96, %93, %90
  br label %103

100:                                              ; preds = %75
  %101 = load i32, i32* @EACCES, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %100, %99
  br label %118

104:                                              ; preds = %59
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %17, align 4
  %111 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %112 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %113 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %112, i32 0, i32 0
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %111, i32* %113, i32 %114, i32 0)
  %116 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %117 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %104, %103
  br label %119

119:                                              ; preds = %118, %52
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %121 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %122 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %120, %struct.lpfc_iocbq* %121)
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %124 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %125 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %123, %struct.lpfc_dmabuf* %124)
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %127 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %128 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %126, %struct.lpfc_dmabuf* %127)
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %130 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %131 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %134 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %129, i32 %132, i32 %135)
  %137 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %138 = call i32 @kfree(%struct.lpfc_dmabuf* %137)
  %139 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %140 = bitcast %struct.bsg_job_data* %139 to %struct.lpfc_dmabuf*
  %141 = call i32 @kfree(%struct.lpfc_dmabuf* %140)
  %142 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %143 = icmp ne %struct.bsg_job* %142, null
  br i1 %143, label %144, label %156

144:                                              ; preds = %119
  %145 = load i32, i32* %18, align 4
  %146 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %147 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %149 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %150 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %153 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @bsg_job_done(%struct.bsg_job* %148, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %144, %119
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, i32*, i32, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
