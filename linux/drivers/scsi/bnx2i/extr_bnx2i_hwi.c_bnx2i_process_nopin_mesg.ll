; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_nopin_mesg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_nopin_mesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.bnx2i_conn = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.cqe = type { i32 }
%struct.iscsi_task = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.bnx2i_nop_in_msg = type { i32, i32, i32, i32, i32, i32 }
%struct.iscsi_nopin = type { i32, i8*, i64, i32, i8*, i8*, i32 }
%struct.iscsi_hdr = type { i32 }

@RESERVED_ITT = common dso_local global i64 0, align 8
@ISCSI_NOP_IN_MSG_INDEX = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_session*, %struct.bnx2i_conn*, %struct.cqe*)* @bnx2i_process_nopin_mesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_process_nopin_mesg(%struct.iscsi_session* %0, %struct.bnx2i_conn* %1, %struct.cqe* %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  %6 = alloca %struct.cqe*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.bnx2i_nop_in_msg*, align 8
  %10 = alloca %struct.iscsi_nopin*, align 8
  %11 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %5, align 8
  store %struct.cqe* %2, %struct.cqe** %6, align 8
  %12 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.cqe*, %struct.cqe** %6, align 8
  %18 = bitcast %struct.cqe* %17 to %struct.bnx2i_nop_in_msg*
  store %struct.bnx2i_nop_in_msg* %18, %struct.bnx2i_nop_in_msg** %9, align 8
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.iscsi_nopin*
  store %struct.iscsi_nopin* %25, %struct.iscsi_nopin** %10, align 8
  %26 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %27 = call i32 @memset(%struct.iscsi_nopin* %26, i32 0, i32 4)
  %28 = load %struct.bnx2i_nop_in_msg*, %struct.bnx2i_nop_in_msg** %9, align 8
  %29 = getelementptr inbounds %struct.bnx2i_nop_in_msg, %struct.bnx2i_nop_in_msg* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %32 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bnx2i_nop_in_msg*, %struct.bnx2i_nop_in_msg** %9, align 8
  %34 = getelementptr inbounds %struct.bnx2i_nop_in_msg, %struct.bnx2i_nop_in_msg* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %38 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.bnx2i_nop_in_msg*, %struct.bnx2i_nop_in_msg** %9, align 8
  %40 = getelementptr inbounds %struct.bnx2i_nop_in_msg, %struct.bnx2i_nop_in_msg* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %44 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.bnx2i_nop_in_msg*, %struct.bnx2i_nop_in_msg** %9, align 8
  %46 = getelementptr inbounds %struct.bnx2i_nop_in_msg, %struct.bnx2i_nop_in_msg* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %50 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.bnx2i_nop_in_msg*, %struct.bnx2i_nop_in_msg** %9, align 8
  %52 = getelementptr inbounds %struct.bnx2i_nop_in_msg, %struct.bnx2i_nop_in_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @RESERVED_ITT, align 8
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %3
  %58 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %59 = call i32 @bnx2i_unsol_pdu_adjust_rq(%struct.bnx2i_conn* %58)
  %60 = load i64, i64* @RESERVED_ITT, align 8
  %61 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %62 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  store i32 1, i32* %11, align 4
  br label %97

63:                                               ; preds = %3
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %65 = load %struct.bnx2i_nop_in_msg*, %struct.bnx2i_nop_in_msg** %9, align 8
  %66 = getelementptr inbounds %struct.bnx2i_nop_in_msg, %struct.bnx2i_nop_in_msg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ISCSI_NOP_IN_MSG_INDEX, align 4
  %69 = and i32 %67, %68
  %70 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %64, i32 %69)
  store %struct.iscsi_task* %70, %struct.iscsi_task** %8, align 8
  %71 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %72 = icmp ne %struct.iscsi_task* %71, null
  br i1 %72, label %73, label %96

73:                                               ; preds = %63
  %74 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %75 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %76 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %78 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %83 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.bnx2i_nop_in_msg*, %struct.bnx2i_nop_in_msg** %9, align 8
  %85 = getelementptr inbounds %struct.bnx2i_nop_in_msg, %struct.bnx2i_nop_in_msg* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @cpu_to_be32(i32 %86)
  %88 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %89 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %91 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %90, i32 0, i32 0
  %92 = load %struct.bnx2i_nop_in_msg*, %struct.bnx2i_nop_in_msg** %9, align 8
  %93 = getelementptr inbounds %struct.bnx2i_nop_in_msg, %struct.bnx2i_nop_in_msg* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memcpy(i32* %91, i32 %94, i32 8)
  br label %96

96:                                               ; preds = %73, %63
  br label %97

97:                                               ; preds = %96, %57
  %98 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %99 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %10, align 8
  %100 = bitcast %struct.iscsi_nopin* %99 to %struct.iscsi_hdr*
  %101 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %98, %struct.iscsi_hdr* %100, i32* null, i32 0)
  %102 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %103 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load i32, i32* %11, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.iscsi_nopin*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @bnx2i_unsol_pdu_adjust_rq(%struct.bnx2i_conn*) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
