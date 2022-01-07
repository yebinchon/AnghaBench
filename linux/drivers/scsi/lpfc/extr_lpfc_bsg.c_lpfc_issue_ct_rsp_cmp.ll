; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_issue_ct_rsp_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_issue_ct_rsp_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_8__, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32, %struct.lpfc_dmabuf* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.lpfc_dmabuf = type { i32, i32, %struct.TYPE_6__, %struct.bsg_job* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32 }
%struct.bsg_job = type { %struct.fc_bsg_reply*, i32* }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.bsg_job_data = type { i32, i32, %struct.TYPE_6__, %struct.bsg_job* }

@LPFC_IO_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_issue_ct_rsp_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_issue_ct_rsp_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.bsg_job_data*, align 8
  %8 = alloca %struct.bsg_job*, align 8
  %9 = alloca %struct.fc_bsg_reply*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_nodelist*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %16, i32 0, i32 4
  %18 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %17, align 8
  %19 = bitcast %struct.lpfc_dmabuf* %18 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %19, %struct.bsg_job_data** %7, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 1
  %22 = load i64, i64* %14, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %25 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %24, i32 0, i32 3
  %26 = load %struct.bsg_job*, %struct.bsg_job** %25, align 8
  store %struct.bsg_job* %26, %struct.bsg_job** %8, align 8
  %27 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %28 = icmp ne %struct.bsg_job* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %31 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 1
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 0
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load i32, i32* @LPFC_IO_CMD_OUTSTANDING, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %44 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 0
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %52 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %54, align 8
  store %struct.lpfc_nodelist* %55, %struct.lpfc_nodelist** %13, align 8
  %56 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %57 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %56, i32 0, i32 2
  %58 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %57, align 8
  store %struct.lpfc_dmabuf* %58, %struct.lpfc_dmabuf** %12, align 8
  %59 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %60 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %59, i32 0, i32 1
  %61 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %60, align 8
  store %struct.lpfc_dmabuf* %61, %struct.lpfc_dmabuf** %11, align 8
  %62 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %63 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %62, i32 0, i32 0
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %10, align 8
  %64 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %65 = icmp ne %struct.bsg_job* %64, null
  br i1 %65, label %66, label %107

66:                                               ; preds = %32
  %67 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %68 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %67, i32 0, i32 0
  %69 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %68, align 8
  store %struct.fc_bsg_reply* %69, %struct.fc_bsg_reply** %9, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %66
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %88 = and i32 %86, %87
  switch i32 %88, label %95 [
    i32 128, label %89
    i32 129, label %92
  ]

89:                                               ; preds = %80
  %90 = load i32, i32* @ETIMEDOUT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  br label %98

92:                                               ; preds = %80
  %93 = load i32, i32* @EFAULT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %15, align 4
  br label %98

95:                                               ; preds = %80
  %96 = load i32, i32* @EACCES, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %95, %92, %89
  br label %102

99:                                               ; preds = %74
  %100 = load i32, i32* @EACCES, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %99, %98
  br label %106

103:                                              ; preds = %66
  %104 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %102
  br label %107

107:                                              ; preds = %106, %32
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %109 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %110 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %108, %struct.lpfc_dmabuf* %109)
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %112 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %113 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %116 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %111, i32 %114, i32 %117)
  %119 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %120 = call i32 @kfree(%struct.lpfc_dmabuf* %119)
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %122 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %123 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %121, %struct.lpfc_iocbq* %122)
  %124 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %125 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %124)
  %126 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %127 = bitcast %struct.bsg_job_data* %126 to %struct.lpfc_dmabuf*
  %128 = call i32 @kfree(%struct.lpfc_dmabuf* %127)
  %129 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %130 = icmp ne %struct.bsg_job* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %107
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %134 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %136 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %137 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %140 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @bsg_job_done(%struct.bsg_job* %135, i32 %138, i64 %141)
  br label %143

143:                                              ; preds = %131, %107
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
