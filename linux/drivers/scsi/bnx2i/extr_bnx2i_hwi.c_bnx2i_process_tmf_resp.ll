; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_tmf_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_tmf_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.bnx2i_conn = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.cqe = type { i32 }
%struct.iscsi_task = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.bnx2i_tmf_response = type { i32, i32, i32, i32, i32 }
%struct.iscsi_tm_rsp = type { i32, i32, i8*, i8*, i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_TMF_RESPONSE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_session*, %struct.bnx2i_conn*, %struct.cqe*)* @bnx2i_process_tmf_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_process_tmf_resp(%struct.iscsi_session* %0, %struct.bnx2i_conn* %1, %struct.cqe* %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  %6 = alloca %struct.cqe*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.bnx2i_tmf_response*, align 8
  %10 = alloca %struct.iscsi_tm_rsp*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %5, align 8
  store %struct.cqe* %2, %struct.cqe** %6, align 8
  %11 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %7, align 8
  %16 = load %struct.cqe*, %struct.cqe** %6, align 8
  %17 = bitcast %struct.cqe* %16 to %struct.bnx2i_tmf_response*
  store %struct.bnx2i_tmf_response* %17, %struct.bnx2i_tmf_response** %9, align 8
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %19 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %22 = load %struct.bnx2i_tmf_response*, %struct.bnx2i_tmf_response** %9, align 8
  %23 = getelementptr inbounds %struct.bnx2i_tmf_response, %struct.bnx2i_tmf_response* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ISCSI_TMF_RESPONSE_INDEX, align 4
  %26 = and i32 %24, %25
  %27 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %21, i32 %26)
  store %struct.iscsi_task* %27, %struct.iscsi_task** %8, align 8
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %29 = icmp ne %struct.iscsi_task* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %71

31:                                               ; preds = %3
  %32 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %33 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.iscsi_tm_rsp*
  store %struct.iscsi_tm_rsp* %35, %struct.iscsi_tm_rsp** %10, align 8
  %36 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %10, align 8
  %37 = call i32 @memset(%struct.iscsi_tm_rsp* %36, i32 0, i32 4)
  %38 = load %struct.bnx2i_tmf_response*, %struct.bnx2i_tmf_response** %9, align 8
  %39 = getelementptr inbounds %struct.bnx2i_tmf_response, %struct.bnx2i_tmf_response* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %10, align 8
  %42 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bnx2i_tmf_response*, %struct.bnx2i_tmf_response** %9, align 8
  %44 = getelementptr inbounds %struct.bnx2i_tmf_response, %struct.bnx2i_tmf_response* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %10, align 8
  %48 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.bnx2i_tmf_response*, %struct.bnx2i_tmf_response** %9, align 8
  %50 = getelementptr inbounds %struct.bnx2i_tmf_response, %struct.bnx2i_tmf_response* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %10, align 8
  %54 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %56 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %10, align 8
  %61 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bnx2i_tmf_response*, %struct.bnx2i_tmf_response** %9, align 8
  %63 = getelementptr inbounds %struct.bnx2i_tmf_response, %struct.bnx2i_tmf_response* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %10, align 8
  %66 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %68 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %10, align 8
  %69 = bitcast %struct.iscsi_tm_rsp* %68 to %struct.iscsi_hdr*
  %70 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %67, %struct.iscsi_hdr* %69, i32* null, i32 0)
  br label %71

71:                                               ; preds = %31, %30
  %72 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %73 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @memset(%struct.iscsi_tm_rsp*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
