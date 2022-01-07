; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_reject_mesg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_reject_mesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.bnx2i_conn = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.cqe = type { i32 }
%struct.bnx2i_reject_msg = type { i32, i32, i32, i32, i32 }
%struct.iscsi_reject = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.iscsi_hdr = type { i32 }

@RESERVED_ITT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*, %struct.bnx2i_conn*, %struct.cqe*)* @bnx2i_process_reject_mesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_process_reject_mesg(%struct.iscsi_session* %0, %struct.bnx2i_conn* %1, %struct.cqe* %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  %6 = alloca %struct.cqe*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.bnx2i_reject_msg*, align 8
  %9 = alloca %struct.iscsi_reject*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %5, align 8
  store %struct.cqe* %2, %struct.cqe** %6, align 8
  %10 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %7, align 8
  %15 = load %struct.cqe*, %struct.cqe** %6, align 8
  %16 = bitcast %struct.cqe* %15 to %struct.bnx2i_reject_msg*
  store %struct.bnx2i_reject_msg* %16, %struct.bnx2i_reject_msg** %8, align 8
  %17 = load %struct.bnx2i_reject_msg*, %struct.bnx2i_reject_msg** %8, align 8
  %18 = getelementptr inbounds %struct.bnx2i_reject_msg, %struct.bnx2i_reject_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bnx2i_reject_msg*, %struct.bnx2i_reject_msg** %8, align 8
  %27 = getelementptr inbounds %struct.bnx2i_reject_msg, %struct.bnx2i_reject_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bnx2i_get_rq_buf(%struct.bnx2i_conn* %22, i32 %25, i32 %28)
  %30 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %31 = call i32 @bnx2i_put_rq_buf(%struct.bnx2i_conn* %30, i32 1)
  br label %35

32:                                               ; preds = %3
  %33 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %34 = call i32 @bnx2i_unsol_pdu_adjust_rq(%struct.bnx2i_conn* %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %40 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to %struct.iscsi_reject*
  store %struct.iscsi_reject* %42, %struct.iscsi_reject** %9, align 8
  %43 = load %struct.iscsi_reject*, %struct.iscsi_reject** %9, align 8
  %44 = call i32 @memset(%struct.iscsi_reject* %43, i32 0, i32 4)
  %45 = load %struct.bnx2i_reject_msg*, %struct.bnx2i_reject_msg** %8, align 8
  %46 = getelementptr inbounds %struct.bnx2i_reject_msg, %struct.bnx2i_reject_msg* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iscsi_reject*, %struct.iscsi_reject** %9, align 8
  %49 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.bnx2i_reject_msg*, %struct.bnx2i_reject_msg** %8, align 8
  %51 = getelementptr inbounds %struct.bnx2i_reject_msg, %struct.bnx2i_reject_msg* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iscsi_reject*, %struct.iscsi_reject** %9, align 8
  %54 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.iscsi_reject*, %struct.iscsi_reject** %9, align 8
  %56 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.bnx2i_reject_msg*, %struct.bnx2i_reject_msg** %8, align 8
  %59 = getelementptr inbounds %struct.bnx2i_reject_msg, %struct.bnx2i_reject_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @hton24(i32 %57, i32 %60)
  %62 = load %struct.bnx2i_reject_msg*, %struct.bnx2i_reject_msg** %8, align 8
  %63 = getelementptr inbounds %struct.bnx2i_reject_msg, %struct.bnx2i_reject_msg* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_be32(i32 %64)
  %66 = load %struct.iscsi_reject*, %struct.iscsi_reject** %9, align 8
  %67 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.bnx2i_reject_msg*, %struct.bnx2i_reject_msg** %8, align 8
  %69 = getelementptr inbounds %struct.bnx2i_reject_msg, %struct.bnx2i_reject_msg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_be32(i32 %70)
  %72 = load %struct.iscsi_reject*, %struct.iscsi_reject** %9, align 8
  %73 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @RESERVED_ITT, align 4
  %75 = call i8* @cpu_to_be32(i32 %74)
  %76 = load %struct.iscsi_reject*, %struct.iscsi_reject** %9, align 8
  %77 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %79 = load %struct.iscsi_reject*, %struct.iscsi_reject** %9, align 8
  %80 = bitcast %struct.iscsi_reject* %79 to %struct.iscsi_hdr*
  %81 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %82 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bnx2i_reject_msg*, %struct.bnx2i_reject_msg** %8, align 8
  %85 = getelementptr inbounds %struct.bnx2i_reject_msg, %struct.bnx2i_reject_msg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %78, %struct.iscsi_hdr* %80, i32 %83, i32 %86)
  %88 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %89 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  ret void
}

declare dso_local i32 @bnx2i_get_rq_buf(%struct.bnx2i_conn*, i32, i32) #1

declare dso_local i32 @bnx2i_put_rq_buf(%struct.bnx2i_conn*, i32) #1

declare dso_local i32 @bnx2i_unsol_pdu_adjust_rq(%struct.bnx2i_conn*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.iscsi_reject*, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
