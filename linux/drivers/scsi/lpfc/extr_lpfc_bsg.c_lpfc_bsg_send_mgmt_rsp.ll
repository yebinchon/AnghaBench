; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32*, %struct.TYPE_6__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_6__ = type { i64 }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.fc_bsg_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.send_mgmt_resp = type { i32 }
%struct.ulp_bde64 = type { i32 }
%struct.lpfc_dmabuf = type { i32, i64, i32 }

@BUF_SZ_4K = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_send_mgmt_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_send_mgmt_rsp(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.fc_bsg_request*, align 8
  %7 = alloca %struct.fc_bsg_reply*, align 8
  %8 = alloca %struct.send_mgmt_resp*, align 8
  %9 = alloca %struct.ulp_bde64*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %17 = call i32 @fc_bsg_to_shost(%struct.bsg_job* %16)
  %18 = call %struct.lpfc_vport* @shost_priv(i32 %17)
  store %struct.lpfc_vport* %18, %struct.lpfc_vport** %4, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 0
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  store %struct.lpfc_hba* %21, %struct.lpfc_hba** %5, align 8
  %22 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %23 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %22, i32 0, i32 3
  %24 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %23, align 8
  store %struct.fc_bsg_request* %24, %struct.fc_bsg_request** %6, align 8
  %25 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %26 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %25, i32 0, i32 2
  %27 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %26, align 8
  store %struct.fc_bsg_reply* %27, %struct.fc_bsg_reply** %7, align 8
  %28 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %6, align 8
  %29 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.send_mgmt_resp*
  store %struct.send_mgmt_resp* %33, %struct.send_mgmt_resp** %8, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %10, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %11, align 8
  %34 = load %struct.send_mgmt_resp*, %struct.send_mgmt_resp** %8, align 8
  %35 = getelementptr inbounds %struct.send_mgmt_resp, %struct.send_mgmt_resp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %38 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %41 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %7, align 8
  %42 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %1
  %46 = load i64, i64* %14, align 8
  %47 = load i32, i32* @BUF_SZ_4K, align 4
  %48 = mul nsw i32 80, %47
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %1
  %52 = load i32, i32* @ERANGE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %15, align 4
  br label %143

54:                                               ; preds = %45
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %55)
  store %struct.lpfc_dmabuf* %56, %struct.lpfc_dmabuf** %10, align 8
  %57 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %58 = icmp ne %struct.lpfc_dmabuf* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %15, align 4
  br label %143

62:                                               ; preds = %54
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %64 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %65 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %64, i32 0, i32 0
  %66 = call i64 @lpfc_mbuf_alloc(%struct.lpfc_hba* %63, i32 0, i32* %65)
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %68 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %70 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %15, align 4
  br label %126

76:                                               ; preds = %62
  %77 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %78 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %77, i32 0, i32 2
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %81 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %83, %struct.ulp_bde64** %9, align 8
  %84 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %12, align 4
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %89 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %90 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %94 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %88, i64 %92, i32 1, %struct.ulp_bde64* %93, i32* %12)
  store %struct.lpfc_dmabuf* %94, %struct.lpfc_dmabuf** %11, align 8
  %95 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %96 = icmp ne %struct.lpfc_dmabuf* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %76
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %15, align 4
  br label %126

100:                                              ; preds = %76
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %102 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %103 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %102, i32 0, i32 1
  %104 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %105 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %101, %struct.TYPE_6__* %103, i64 %107, i32 1)
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %110 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %113 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @lpfc_issue_ct_rsp(%struct.lpfc_hba* %109, %struct.bsg_job* %110, i32 %111, %struct.lpfc_dmabuf* %112, %struct.lpfc_dmabuf* %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @IOCB_SUCCESS, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %150

120:                                              ; preds = %100
  %121 = load i32, i32* @EACCES, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %15, align 4
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %124 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %125 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %123, %struct.lpfc_dmabuf* %124)
  br label %126

126:                                              ; preds = %120, %97, %73
  %127 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %128 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %133 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %134 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %137 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %132, i64 %135, i32 %138)
  br label %140

140:                                              ; preds = %131, %126
  %141 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %142 = call i32 @kfree(%struct.lpfc_dmabuf* %141)
  br label %143

143:                                              ; preds = %140, %59, %51
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %7, align 8
  %146 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %148 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %143, %119
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.lpfc_vport* @shost_priv(i32) #1

declare dso_local i32 @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i64 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba*, i64, i32, %struct.ulp_bde64*, i32*) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @lpfc_issue_ct_rsp(%struct.lpfc_hba*, %struct.bsg_job*, i32, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
