; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_clear_sess_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_clear_sess_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_qla2xxx_lport = type { i32 }
%struct.tcm_qla2xxx_nacl = type { i32 }
%struct.fc_port = type { i32, i32, %struct.se_session* }
%struct.se_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_nacl*, %struct.fc_port*)* @tcm_qla2xxx_clear_sess_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcm_qla2xxx_clear_sess_lookup(%struct.tcm_qla2xxx_lport* %0, %struct.tcm_qla2xxx_nacl* %1, %struct.fc_port* %2) #0 {
  %4 = alloca %struct.tcm_qla2xxx_lport*, align 8
  %5 = alloca %struct.tcm_qla2xxx_nacl*, align 8
  %6 = alloca %struct.fc_port*, align 8
  %7 = alloca %struct.se_session*, align 8
  store %struct.tcm_qla2xxx_lport* %0, %struct.tcm_qla2xxx_lport** %4, align 8
  store %struct.tcm_qla2xxx_nacl* %1, %struct.tcm_qla2xxx_nacl** %5, align 8
  store %struct.fc_port* %2, %struct.fc_port** %6, align 8
  %8 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %9 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %8, i32 0, i32 2
  %10 = load %struct.se_session*, %struct.se_session** %9, align 8
  store %struct.se_session* %10, %struct.se_session** %7, align 8
  %11 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %4, align 8
  %12 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %5, align 8
  %13 = load %struct.se_session*, %struct.se_session** %7, align 8
  %14 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %15 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %16 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @port_id_to_be_id(i32 %17)
  %19 = call i32 @tcm_qla2xxx_set_sess_by_s_id(%struct.tcm_qla2xxx_lport* %11, i32* null, %struct.tcm_qla2xxx_nacl* %12, %struct.se_session* %13, %struct.fc_port* %14, i32 %18)
  %20 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %4, align 8
  %21 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %5, align 8
  %22 = load %struct.se_session*, %struct.se_session** %7, align 8
  %23 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %24 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %25 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @tcm_qla2xxx_set_sess_by_loop_id(%struct.tcm_qla2xxx_lport* %20, i32* null, %struct.tcm_qla2xxx_nacl* %21, %struct.se_session* %22, %struct.fc_port* %23, i32 %26)
  ret void
}

declare dso_local i32 @tcm_qla2xxx_set_sess_by_s_id(%struct.tcm_qla2xxx_lport*, i32*, %struct.tcm_qla2xxx_nacl*, %struct.se_session*, %struct.fc_port*, i32) #1

declare dso_local i32 @port_id_to_be_id(i32) #1

declare dso_local i32 @tcm_qla2xxx_set_sess_by_loop_id(%struct.tcm_qla2xxx_lport*, i32*, %struct.tcm_qla2xxx_nacl*, %struct.se_session*, %struct.fc_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
