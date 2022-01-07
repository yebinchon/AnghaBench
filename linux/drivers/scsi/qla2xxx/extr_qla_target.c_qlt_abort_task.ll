; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_abort_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_abort_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_6__, i32, %struct.qla_hw_data* }
%struct.TYPE_6__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.fc_port* (%struct.scsi_qla_host*, i32)* }
%struct.fc_port = type { i32 }
%struct.imm_ntfy_from_isp = type { i32 }
%struct.atio_from_isp = type { i32 }

@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"qla_target(%d): task abort for unexisting session\0A\00", align 1
@QLA_TGT_SESS_WORK_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.imm_ntfy_from_isp*)* @qlt_abort_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_abort_task(%struct.scsi_qla_host* %0, %struct.imm_ntfy_from_isp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.imm_ntfy_from_isp*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca %struct.fc_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.imm_ntfy_from_isp* %1, %struct.imm_ntfy_from_isp** %5, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 2
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %6, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %14 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %15 = bitcast %struct.imm_ntfy_from_isp* %14 to %struct.atio_from_isp*
  %16 = call i32 @GET_TARGET_ID(%struct.qla_hw_data* %13, %struct.atio_from_isp* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.fc_port* (%struct.scsi_qla_host*, i32)*, %struct.fc_port* (%struct.scsi_qla_host*, i32)** %26, align 8
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.fc_port* %27(%struct.scsi_qla_host* %28, i32 %29)
  store %struct.fc_port* %30, %struct.fc_port** %7, align 8
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %37 = icmp eq %struct.fc_port* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %2
  %39 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ql_dbg(i32 %39, %struct.scsi_qla_host* %40, i32 61477, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %46 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @QLA_TGT_SESS_WORK_ABORT, align 4
  %50 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %51 = call i32 @qlt_sched_sess_work(i32 %48, i32 %49, %struct.imm_ntfy_from_isp* %50, i32 4)
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %2
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %54 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %55 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %56 = call i32 @__qlt_abort_task(%struct.scsi_qla_host* %53, %struct.imm_ntfy_from_isp* %54, %struct.fc_port* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %38
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @GET_TARGET_ID(%struct.qla_hw_data*, %struct.atio_from_isp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32) #1

declare dso_local i32 @qlt_sched_sess_work(i32, i32, %struct.imm_ntfy_from_isp*, i32) #1

declare dso_local i32 @__qlt_abort_task(%struct.scsi_qla_host*, %struct.imm_ntfy_from_isp*, %struct.fc_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
