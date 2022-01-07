; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_free_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_free_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_port = type { %struct.se_session*, %struct.qla_tgt* }
%struct.se_session = type { i32 }
%struct.qla_tgt = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tcm_qla2xxx_lport* }
%struct.tcm_qla2xxx_lport = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"struct fc_port->se_sess is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Unable to locate struct tcm_qla2xxx_lport\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_port*)* @tcm_qla2xxx_free_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcm_qla2xxx_free_session(%struct.fc_port* %0) #0 {
  %2 = alloca %struct.fc_port*, align 8
  %3 = alloca %struct.qla_tgt*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.se_session*, align 8
  %7 = alloca %struct.tcm_qla2xxx_lport*, align 8
  store %struct.fc_port* %0, %struct.fc_port** %2, align 8
  %8 = load %struct.fc_port*, %struct.fc_port** %2, align 8
  %9 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %8, i32 0, i32 1
  %10 = load %struct.qla_tgt*, %struct.qla_tgt** %9, align 8
  store %struct.qla_tgt* %10, %struct.qla_tgt** %3, align 8
  %11 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %12 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %4, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_5__* @pci_get_drvdata(i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %5, align 8
  %18 = call i32 (...) @in_interrupt()
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.fc_port*, %struct.fc_port** %2, align 8
  %21 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %20, i32 0, i32 0
  %22 = load %struct.se_session*, %struct.se_session** %21, align 8
  store %struct.se_session* %22, %struct.se_session** %6, align 8
  %23 = load %struct.se_session*, %struct.se_session** %6, align 8
  %24 = icmp ne %struct.se_session* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (...) @dump_stack()
  br label %43

28:                                               ; preds = %1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %31, align 8
  store %struct.tcm_qla2xxx_lport* %32, %struct.tcm_qla2xxx_lport** %7, align 8
  %33 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %7, align 8
  %34 = icmp ne %struct.tcm_qla2xxx_lport* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 (...) @dump_stack()
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.se_session*, %struct.se_session** %6, align 8
  %40 = call i32 @target_wait_for_sess_cmds(%struct.se_session* %39)
  %41 = load %struct.se_session*, %struct.se_session** %6, align 8
  %42 = call i32 @target_remove_session(%struct.se_session* %41)
  br label %43

43:                                               ; preds = %38, %35, %25
  ret void
}

declare dso_local %struct.TYPE_5__* @pci_get_drvdata(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @target_wait_for_sess_cmds(%struct.se_session*) #1

declare dso_local i32 @target_remove_session(%struct.se_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
