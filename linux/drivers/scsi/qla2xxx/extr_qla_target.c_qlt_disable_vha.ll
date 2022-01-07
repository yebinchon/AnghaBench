; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_disable_vha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_disable_vha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_2__, %struct.qla_hw_data* }
%struct.TYPE_2__ = type { %struct.qla_tgt* }
%struct.qla_tgt = type { i32 }
%struct.qla_hw_data = type { i32 }

@ql_dbg_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Unable to locate qla_tgt pointer from struct qla_hw_data\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"qla2x00_wait_for_hba_online() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qlt_disable_vha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_disable_vha(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.qla_tgt*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %6, i32 0, i32 2
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %3, align 8
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.qla_tgt*, %struct.qla_tgt** %11, align 8
  store %struct.qla_tgt* %12, %struct.qla_tgt** %4, align 8
  %13 = load %struct.qla_tgt*, %struct.qla_tgt** %4, align 8
  %14 = icmp ne %struct.qla_tgt* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ql_dbg_tgt, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %18 = call i32 @ql_dbg(i32 %16, %struct.scsi_qla_host* %17, i32 57450, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @dump_stack()
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %26 = call i32 @qlt_clear_mode(%struct.scsi_qla_host* %25)
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 0
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %36 = call i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host* %35)
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %38 = call i64 @qla2x00_wait_for_hba_online(%struct.scsi_qla_host* %37)
  %39 = load i64, i64* @QLA_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load i32, i32* @ql_dbg_tgt, align 4
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %44 = call i32 @ql_dbg(i32 %42, %struct.scsi_qla_host* %43, i32 57473, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %15, %41, %20
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qlt_clear_mode(%struct.scsi_qla_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host*) #1

declare dso_local i64 @qla2x00_wait_for_hba_online(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
