; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_nopin_local_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_nopin_local_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%struct.iscsi_cqe_solicited = type { i32 }
%struct.iscsi_task = type { %struct.qedi_cmd* }
%struct.qedi_cmd = type { i32, i32 }
%struct.qedi_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }

@QEDI_LOG_UNSOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"itid=0x%x, cmd task id=0x%x\0A\00", align 1
@RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %struct.iscsi_cqe_solicited*, %struct.iscsi_task*, %struct.qedi_conn*)* @qedi_process_nopin_local_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_process_nopin_local_cmpl(%struct.qedi_ctx* %0, %struct.iscsi_cqe_solicited* %1, %struct.iscsi_task* %2, %struct.qedi_conn* %3) #0 {
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca %struct.iscsi_cqe_solicited*, align 8
  %7 = alloca %struct.iscsi_task*, align 8
  %8 = alloca %struct.qedi_conn*, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.qedi_cmd*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store %struct.iscsi_cqe_solicited* %1, %struct.iscsi_cqe_solicited** %6, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %7, align 8
  store %struct.qedi_conn* %3, %struct.qedi_conn** %8, align 8
  %12 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %13 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %9, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 0
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %18, align 8
  store %struct.iscsi_session* %19, %struct.iscsi_session** %10, align 8
  %20 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %20, i32 0, i32 0
  %22 = load %struct.qedi_cmd*, %struct.qedi_cmd** %21, align 8
  store %struct.qedi_cmd* %22, %struct.qedi_cmd** %11, align 8
  %23 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* @QEDI_LOG_UNSOL, align 4
  %26 = load %struct.iscsi_cqe_solicited*, %struct.iscsi_cqe_solicited** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_cqe_solicited, %struct.iscsi_cqe_solicited* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qedi_cmd*, %struct.qedi_cmd** %11, align 8
  %30 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @QEDI_INFO(i32* %24, i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load i32, i32* @RESPONSE_RECEIVED, align 4
  %34 = load %struct.qedi_cmd*, %struct.qedi_cmd** %11, align 8
  %35 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %37 = load %struct.qedi_cmd*, %struct.qedi_cmd** %11, align 8
  %38 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @qedi_clear_task_idx(%struct.qedi_ctx* %36, i32 %39)
  %41 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %42 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %45 = call i32 @__iscsi_put_task(%struct.iscsi_task* %44)
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %47 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  ret void
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @qedi_clear_task_idx(%struct.qedi_ctx*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__iscsi_put_task(%struct.iscsi_task*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
