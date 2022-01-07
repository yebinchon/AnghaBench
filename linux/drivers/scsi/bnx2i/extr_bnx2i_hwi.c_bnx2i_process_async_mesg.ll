; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_async_mesg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_async_mesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.bnx2i_conn = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cqe = type { i32 }
%struct.bnx2i_async_msg = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_async = type { i32, i64, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_ASYNC_MSG_SCSI_EVENT = common dso_local global i64 0, align 8
@KERN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"async: scsi events not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*, %struct.bnx2i_conn*, %struct.cqe*)* @bnx2i_process_async_mesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_process_async_mesg(%struct.iscsi_session* %0, %struct.bnx2i_conn* %1, %struct.cqe* %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  %6 = alloca %struct.cqe*, align 8
  %7 = alloca %struct.bnx2i_async_msg*, align 8
  %8 = alloca %struct.iscsi_async*, align 8
  %9 = alloca i64, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %5, align 8
  store %struct.cqe* %2, %struct.cqe** %6, align 8
  %10 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %11 = call i32 @bnx2i_unsol_pdu_adjust_rq(%struct.bnx2i_conn* %10)
  %12 = load %struct.cqe*, %struct.cqe** %6, align 8
  %13 = bitcast %struct.cqe* %12 to %struct.bnx2i_async_msg*
  store %struct.bnx2i_async_msg* %13, %struct.bnx2i_async_msg** %7, align 8
  %14 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @ISCSI_ASYNC_MSG_SCSI_EVENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32, i32* @KERN_ALERT, align 4
  %22 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @iscsi_conn_printk(i32 %21, i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %102

28:                                               ; preds = %3
  %29 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %33 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.iscsi_async*
  store %struct.iscsi_async* %35, %struct.iscsi_async** %8, align 8
  %36 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %37 = call i32 @memset(%struct.iscsi_async* %36, i32 0, i32 4)
  %38 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %39 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %42 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %44 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %43, i32 0, i32 0
  store i32 128, i32* %44, align 8
  %45 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %46 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %45, i32 0, i32 8
  %47 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %48 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memcpy(i32* %46, i32 %49, i32 8)
  %51 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %52 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %56 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %58 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %62 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %64 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %67 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %69 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %72 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %74 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @cpu_to_be16(i32 %75)
  %77 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %78 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %80 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_be16(i32 %81)
  %83 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %84 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.bnx2i_async_msg*, %struct.bnx2i_async_msg** %7, align 8
  %86 = getelementptr inbounds %struct.bnx2i_async_msg, %struct.bnx2i_async_msg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @cpu_to_be16(i32 %87)
  %89 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %90 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %92 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.iscsi_async*, %struct.iscsi_async** %8, align 8
  %97 = bitcast %struct.iscsi_async* %96 to %struct.iscsi_hdr*
  %98 = call i32 @__iscsi_complete_pdu(i32 %95, %struct.iscsi_hdr* %97, i32* null, i32 0)
  %99 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %100 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  br label %102

102:                                              ; preds = %28, %20
  ret void
}

declare dso_local i32 @bnx2i_unsol_pdu_adjust_rq(%struct.bnx2i_conn*) #1

declare dso_local i32 @iscsi_conn_printk(i32, i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.iscsi_async*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @__iscsi_complete_pdu(i32, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
