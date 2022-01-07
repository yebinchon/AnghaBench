; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_task_mgmt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_task_mgmt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_8__*, %struct.scsi_device* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fcp_resp_with_ext }
%struct.fcp_resp_with_ext = type { i32 }
%struct.scsi_device = type { i32 }
%struct.fcp_resp_rsp_info = type { i64 }

@FCP_TMF_CMPL = common dso_local global i64 0, align 8
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_TMFUNCFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_fcp_task_mgmt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_fcp_task_mgmt_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.fcp_resp_with_ext*, align 8
  %5 = alloca %struct.fcp_resp_rsp_info*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 2
  %8 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  store %struct.scsi_device* %8, %struct.scsi_device** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = call i32 @zfcp_fsf_fcp_handler_common(%struct.zfcp_fsf_req* %9, %struct.scsi_device* %10)
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.fcp_resp_with_ext* %18, %struct.fcp_resp_with_ext** %4, align 8
  %19 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %4, align 8
  %20 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %19, i64 1
  %21 = bitcast %struct.fcp_resp_with_ext* %20 to %struct.fcp_resp_rsp_info*
  store %struct.fcp_resp_rsp_info* %21, %struct.fcp_resp_rsp_info** %5, align 8
  %22 = load %struct.fcp_resp_rsp_info*, %struct.fcp_resp_rsp_info** %5, align 8
  %23 = getelementptr inbounds %struct.fcp_resp_rsp_info, %struct.fcp_resp_rsp_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FCP_TMF_CMPL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27, %1
  %35 = load i32, i32* @ZFCP_STATUS_FSFREQ_TMFUNCFAILED, align 4
  %36 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %37 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @zfcp_fsf_fcp_handler_common(%struct.zfcp_fsf_req*, %struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
