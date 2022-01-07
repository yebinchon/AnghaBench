; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_cmd_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_cmd_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_10__, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32, %struct.lpfc_dmabuf* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32, %struct.TYPE_6__, %struct.bsg_job* }
%struct.TYPE_6__ = type { %struct.lpfc_bsg_iocb }
%struct.lpfc_bsg_iocb = type { %struct.lpfc_dmabuf*, %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32 }
%struct.bsg_job = type { i32, i32*, %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.bsg_job_data = type { i32, i32, %struct.TYPE_6__, %struct.bsg_job* }

@LPFC_IO_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_bsg_send_mgmt_cmd_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_send_mgmt_cmd_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.bsg_job_data*, align 8
  %8 = alloca %struct.bsg_job*, align 8
  %9 = alloca %struct.fc_bsg_reply*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_nodelist*, align 8
  %15 = alloca %struct.lpfc_bsg_iocb*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 4
  %21 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %22 = bitcast %struct.lpfc_dmabuf* %21 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %22, %struct.bsg_job_data** %7, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 1
  %25 = load i64, i64* %16, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %28 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %27, i32 0, i32 3
  %29 = load %struct.bsg_job*, %struct.bsg_job** %28, align 8
  store %struct.bsg_job* %29, %struct.bsg_job** %8, align 8
  %30 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %31 = icmp ne %struct.bsg_job* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %34 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %33, i32 0, i32 2
  %35 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %34, align 8
  store %struct.fc_bsg_reply* %35, %struct.fc_bsg_reply** %9, align 8
  %36 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %37 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %32, %3
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = load i64, i64* %16, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 0
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load i32, i32* @LPFC_IO_CMD_OUTSTANDING, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 0
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %58 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store %struct.lpfc_bsg_iocb* %59, %struct.lpfc_bsg_iocb** %15, align 8
  %60 = load %struct.lpfc_bsg_iocb*, %struct.lpfc_bsg_iocb** %15, align 8
  %61 = getelementptr inbounds %struct.lpfc_bsg_iocb, %struct.lpfc_bsg_iocb* %60, i32 0, i32 1
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %61, align 8
  store %struct.lpfc_nodelist* %62, %struct.lpfc_nodelist** %14, align 8
  %63 = load %struct.lpfc_bsg_iocb*, %struct.lpfc_bsg_iocb** %15, align 8
  %64 = getelementptr inbounds %struct.lpfc_bsg_iocb, %struct.lpfc_bsg_iocb* %63, i32 0, i32 0
  %65 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %64, align 8
  store %struct.lpfc_dmabuf* %65, %struct.lpfc_dmabuf** %13, align 8
  %66 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %67 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %66, i32 0, i32 2
  %68 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %67, align 8
  store %struct.lpfc_dmabuf* %68, %struct.lpfc_dmabuf** %12, align 8
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %70 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %69, i32 0, i32 1
  %71 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %70, align 8
  store %struct.lpfc_dmabuf* %71, %struct.lpfc_dmabuf** %11, align 8
  %72 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %73 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %72, i32 0, i32 0
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %10, align 8
  %74 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %75 = icmp ne %struct.bsg_job* %74, null
  br i1 %75, label %76, label %125

76:                                               ; preds = %38
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %102 [
    i32 128, label %96
    i32 129, label %99
  ]

96:                                               ; preds = %87
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %18, align 4
  br label %105

99:                                               ; preds = %87
  %100 = load i32, i32* @EFAULT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %18, align 4
  br label %105

102:                                              ; preds = %87
  %103 = load i32, i32* @EACCES, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %102, %99, %96
  br label %109

106:                                              ; preds = %81
  %107 = load i32, i32* @EACCES, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %18, align 4
  br label %109

109:                                              ; preds = %106, %105
  br label %124

110:                                              ; preds = %76
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %17, align 4
  %117 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %118 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %119 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %118, i32 0, i32 0
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %117, i32* %119, i32 %120, i32 0)
  %122 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %110, %109
  br label %125

125:                                              ; preds = %124, %38
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %127 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %128 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %126, %struct.lpfc_dmabuf* %127)
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %130 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %131 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %129, %struct.lpfc_dmabuf* %130)
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %133 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %134 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %137 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %132, i32 %135, i32 %138)
  %140 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %141 = call i32 @kfree(%struct.lpfc_dmabuf* %140)
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %143 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %144 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %142, %struct.lpfc_iocbq* %143)
  %145 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %146 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %145)
  %147 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %148 = bitcast %struct.bsg_job_data* %147 to %struct.lpfc_dmabuf*
  %149 = call i32 @kfree(%struct.lpfc_dmabuf* %148)
  %150 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %151 = icmp ne %struct.bsg_job* %150, null
  br i1 %151, label %152, label %164

152:                                              ; preds = %125
  %153 = load i32, i32* %18, align 4
  %154 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %155 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %157 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %158 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %161 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @bsg_job_done(%struct.bsg_job* %156, i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %152, %125
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, i32*, i32, i32) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
