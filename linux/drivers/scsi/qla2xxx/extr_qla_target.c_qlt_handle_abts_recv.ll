; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_handle_abts_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_handle_abts_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rsp_que = type { i32 }
%struct.qla_tgt_sess_op = type { i32, %struct.rsp_que*, i32, %struct.scsi_qla_host*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@qlt_handle_abts_recv_work = common dso_local global i32 0, align 4
@qla_tgt_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlt_handle_abts_recv(%struct.scsi_qla_host* %0, %struct.rsp_que* %1, i32* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qla_tgt_sess_op*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.qla_tgt_sess_op* @kzalloc(i32 40, i32 %8)
  store %struct.qla_tgt_sess_op* %9, %struct.qla_tgt_sess_op** %7, align 8
  %10 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %11 = icmp ne %struct.qla_tgt_sess_op* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %14 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @qlt_response_pkt_all_vps(%struct.scsi_qla_host* %13, %struct.rsp_que* %14, i32* %15)
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %19 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %18, i32 0, i32 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @memcpy(i32* %19, i32* %20, i32 4)
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %23 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %24 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %23, i32 0, i32 3
  store %struct.scsi_qla_host* %22, %struct.scsi_qla_host** %24, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %33 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %35 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %36 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %35, i32 0, i32 1
  store %struct.rsp_que* %34, %struct.rsp_que** %36, align 8
  %37 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %38 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %37, i32 0, i32 0
  %39 = load i32, i32* @qlt_handle_abts_recv_work, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  %41 = load i32, i32* @qla_tgt_wq, align 4
  %42 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %43 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %42, i32 0, i32 0
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %17, %12
  ret void
}

declare dso_local %struct.qla_tgt_sess_op* @kzalloc(i32, i32) #1

declare dso_local i32 @qlt_response_pkt_all_vps(%struct.scsi_qla_host*, %struct.rsp_que*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
