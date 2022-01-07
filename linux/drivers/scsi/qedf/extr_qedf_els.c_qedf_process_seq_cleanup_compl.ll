; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_process_seq_cleanup_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_process_seq_cleanup_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32 }
%struct.fcoe_cqe = type { i32 }
%struct.qedf_ioreq = type { i64, i64, i32, i32, %struct.qedf_els_cb_arg* }
%struct.qedf_els_cb_arg = type { i32, i32 }

@QEDF_IOREQ_EV_ELS_TMO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"cqe is NULL or timeout event (0x%x)\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to send SRR, I/O will abort, xid=0x%x.\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_process_seq_cleanup_compl(%struct.qedf_ctx* %0, %struct.fcoe_cqe* %1, %struct.qedf_ioreq* %2) #0 {
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.fcoe_cqe*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qedf_els_cb_arg*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.fcoe_cqe* %1, %struct.fcoe_cqe** %5, align 8
  store %struct.qedf_ioreq* %2, %struct.qedf_ioreq** %6, align 8
  %9 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %10 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %9, i32 0, i32 4
  %11 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %10, align 8
  store %struct.qedf_els_cb_arg* %11, %struct.qedf_els_cb_arg** %8, align 8
  %12 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %13 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QEDF_IOREQ_EV_ELS_TMO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %19 = icmp ne %struct.fcoe_cqe* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %21, i32 0, i32 0
  %23 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %24 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @QEDF_ERR(i32* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %49

27:                                               ; preds = %17
  %28 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %29 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %28, i32 0, i32 3
  %30 = call i32 @cancel_delayed_work_sync(i32* %29)
  %31 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %32 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %8, align 8
  %33 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %8, align 8
  %36 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qedf_send_srr(%struct.qedf_ioreq* %31, i32 %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %42, i32 0, i32 0
  %44 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %45 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @QEDF_ERR(i32* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %41, %27
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %8, align 8
  %51 = call i32 @kfree(%struct.qedf_els_cb_arg* %50)
  %52 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %53 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %52, i32 0, i32 2
  %54 = load i32, i32* @qedf_release_cmd, align 4
  %55 = call i32 @kref_put(i32* %53, i32 %54)
  ret void
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @qedf_send_srr(%struct.qedf_ioreq*, i32, i32) #1

declare dso_local i32 @kfree(%struct.qedf_els_cb_arg*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
