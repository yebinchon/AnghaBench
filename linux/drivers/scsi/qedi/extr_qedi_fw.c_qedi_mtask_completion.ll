; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_mtask_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_mtask_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%union.iscsi_cqe = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_task = type { i32 }
%struct.qedi_conn = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"unknown opcode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*, i32)* @qedi_mtask_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_mtask_completion(%struct.qedi_ctx* %0, %union.iscsi_cqe* %1, %struct.iscsi_task* %2, %struct.qedi_conn* %3, i32 %4) #0 {
  %6 = alloca %struct.qedi_ctx*, align 8
  %7 = alloca %union.iscsi_cqe*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.qedi_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_conn*, align 8
  %12 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %6, align 8
  store %union.iscsi_cqe* %1, %union.iscsi_cqe** %7, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %8, align 8
  store %struct.qedi_conn* %3, %struct.qedi_conn** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %14 = bitcast %union.iscsi_cqe* %13 to %struct.TYPE_7__*
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %20 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %22, align 8
  store %struct.iscsi_conn* %23, %struct.iscsi_conn** %11, align 8
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %62 [
    i32 130, label %25
    i32 134, label %25
    i32 133, label %31
    i32 128, label %37
    i32 129, label %43
    i32 132, label %49
    i32 131, label %55
  ]

25:                                               ; preds = %5, %5
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %27 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %30 = call i32 @qedi_scsi_completion(%struct.qedi_ctx* %26, %union.iscsi_cqe* %27, %struct.iscsi_task* %28, %struct.iscsi_conn* %29)
  br label %66

31:                                               ; preds = %5
  %32 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %33 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %35 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %36 = call i32 @qedi_process_login_resp(%struct.qedi_ctx* %32, %union.iscsi_cqe* %33, %struct.iscsi_task* %34, %struct.qedi_conn* %35)
  br label %66

37:                                               ; preds = %5
  %38 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %39 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %40 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %41 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %42 = call i32 @qedi_process_tmf_resp(%struct.qedi_ctx* %38, %union.iscsi_cqe* %39, %struct.iscsi_task* %40, %struct.qedi_conn* %41)
  br label %66

43:                                               ; preds = %5
  %44 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %45 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %46 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %47 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %48 = call i32 @qedi_process_text_resp(%struct.qedi_ctx* %44, %union.iscsi_cqe* %45, %struct.iscsi_task* %46, %struct.qedi_conn* %47)
  br label %66

49:                                               ; preds = %5
  %50 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %51 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %52 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %53 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %54 = call i32 @qedi_process_logout_resp(%struct.qedi_ctx* %50, %union.iscsi_cqe* %51, %struct.iscsi_task* %52, %struct.qedi_conn* %53)
  br label %66

55:                                               ; preds = %5
  %56 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %57 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %58 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %59 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @qedi_process_nopin_mesg(%struct.qedi_ctx* %56, %union.iscsi_cqe* %57, %struct.iscsi_task* %58, %struct.qedi_conn* %59, i32 %60)
  br label %66

62:                                               ; preds = %5
  %63 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %63, i32 0, i32 0
  %65 = call i32 @QEDI_ERR(i32* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %55, %49, %43, %37, %31, %25
  ret void
}

declare dso_local i32 @qedi_scsi_completion(%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.iscsi_conn*) #1

declare dso_local i32 @qedi_process_login_resp(%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*) #1

declare dso_local i32 @qedi_process_tmf_resp(%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*) #1

declare dso_local i32 @qedi_process_text_resp(%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*) #1

declare dso_local i32 @qedi_process_logout_resp(%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*) #1

declare dso_local i32 @qedi_process_nopin_mesg(%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
