; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_initiate_seq_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_initiate_seq_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { %struct.TYPE_4__*, %struct.qedf_els_cb_arg*, i32, i32, i32, %struct.qedf_rport* }
%struct.TYPE_4__ = type { %struct.fcoe_wqe* }
%struct.fcoe_wqe = type { i32 }
%struct.qedf_els_cb_arg = type { i32, i32 }
%struct.qedf_rport = type { i32, %struct.fcoe_wqe*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Doing sequence cleanup for xid=0x%x offset=%u.\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to allocate cb_arg for sequence cleanup\0A\00", align 1
@QEDF_SEQ_CLEANUP = common dso_local global i32 0, align 4
@QEDF_CLEANUP_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ioreq*, i32, i32)* @qedf_initiate_seq_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_initiate_seq_cleanup(%struct.qedf_ioreq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qedf_ioreq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedf_rport*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qedf_els_cb_arg*, align 8
  %10 = alloca %struct.fcoe_wqe*, align 8
  %11 = alloca i64, align 8
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %13 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %12, i32 0, i32 5
  %14 = load %struct.qedf_rport*, %struct.qedf_rport** %13, align 8
  store %struct.qedf_rport* %14, %struct.qedf_rport** %7, align 8
  %15 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %16 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* @QEDF_LOG_ELS, align 4
  %20 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %21 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @QEDF_INFO(i32* %18, i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_NOIO, align 4
  %26 = call %struct.qedf_els_cb_arg* @kzalloc(i32 8, i32 %25)
  store %struct.qedf_els_cb_arg* %26, %struct.qedf_els_cb_arg** %9, align 8
  %27 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %9, align 8
  %28 = icmp ne %struct.qedf_els_cb_arg* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %3
  %30 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %31 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @QEDF_ERR(i32* %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %88

35:                                               ; preds = %3
  %36 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %37 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %36, i32 0, i32 3
  %38 = call i32 @kref_get(i32* %37)
  %39 = load i32, i32* @QEDF_SEQ_CLEANUP, align 4
  %40 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %41 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %9, align 8
  %44 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %9, align 8
  %47 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %9, align 8
  %49 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %50 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %49, i32 0, i32 1
  store %struct.qedf_els_cb_arg* %48, %struct.qedf_els_cb_arg** %50, align 8
  %51 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %52 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %55 = load i32, i32* @QEDF_CLEANUP_TIMEOUT, align 4
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 %55, %56
  %58 = call i32 @qedf_cmd_timer_set(%struct.TYPE_3__* %53, %struct.qedf_ioreq* %54, i32 %57)
  %59 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %60 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %59, i32 0, i32 0
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %64 = call i64 @qedf_get_sqe_idx(%struct.qedf_rport* %63)
  store i64 %64, i64* %11, align 8
  %65 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %66 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %65, i32 0, i32 1
  %67 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds %struct.fcoe_wqe, %struct.fcoe_wqe* %67, i64 %68
  store %struct.fcoe_wqe* %69, %struct.fcoe_wqe** %10, align 8
  %70 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %10, align 8
  %71 = call i32 @memset(%struct.fcoe_wqe* %70, i32 0, i32 4)
  %72 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %10, align 8
  %73 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %74 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.fcoe_wqe* %72, %struct.fcoe_wqe** %76, align 8
  %77 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %78 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @init_initiator_sequence_recovery_fcoe_task(%struct.TYPE_4__* %79, i32 %80)
  %82 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %83 = call i32 @qedf_ring_doorbell(%struct.qedf_rport* %82)
  %84 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %85 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %84, i32 0, i32 0
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32, i32) #1

declare dso_local %struct.qedf_els_cb_arg* @kzalloc(i32, i32) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @qedf_cmd_timer_set(%struct.TYPE_3__*, %struct.qedf_ioreq*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qedf_get_sqe_idx(%struct.qedf_rport*) #1

declare dso_local i32 @memset(%struct.fcoe_wqe*, i32, i32) #1

declare dso_local i32 @init_initiator_sequence_recovery_fcoe_task(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @qedf_ring_doorbell(%struct.qedf_rport*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
