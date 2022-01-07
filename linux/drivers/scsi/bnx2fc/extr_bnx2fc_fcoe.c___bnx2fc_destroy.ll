; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c___bnx2fc_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c___bnx2fc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_interface = type { i32 }
%struct.fcoe_ctlr = type { %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.fcoe_port = type { i32 }

@bnx2fc_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2fc_interface*)* @__bnx2fc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnx2fc_destroy(%struct.bnx2fc_interface* %0) #0 {
  %2 = alloca %struct.bnx2fc_interface*, align 8
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fcoe_port*, align 8
  store %struct.bnx2fc_interface* %0, %struct.bnx2fc_interface** %2, align 8
  %6 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %2, align 8
  %7 = call %struct.fcoe_ctlr* @bnx2fc_to_ctlr(%struct.bnx2fc_interface* %6)
  store %struct.fcoe_ctlr* %7, %struct.fcoe_ctlr** %3, align 8
  %8 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %9 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %8, i32 0, i32 0
  %10 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  store %struct.fc_lport* %10, %struct.fc_lport** %4, align 8
  %11 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %12 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %11)
  store %struct.fcoe_port* %12, %struct.fcoe_port** %5, align 8
  %13 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %2, align 8
  %14 = call i32 @bnx2fc_interface_cleanup(%struct.bnx2fc_interface* %13)
  %15 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %2, align 8
  %16 = call i32 @bnx2fc_stop(%struct.bnx2fc_interface* %15)
  %17 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %2, align 8
  %21 = call i32 @bnx2fc_interface_put(%struct.bnx2fc_interface* %20)
  %22 = load i32, i32* @bnx2fc_wq, align 4
  %23 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %24 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %23, i32 0, i32 0
  %25 = call i32 @queue_work(i32 %22, i32* %24)
  ret void
}

declare dso_local %struct.fcoe_ctlr* @bnx2fc_to_ctlr(%struct.bnx2fc_interface*) #1

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @bnx2fc_interface_cleanup(%struct.bnx2fc_interface*) #1

declare dso_local i32 @bnx2fc_stop(%struct.bnx2fc_interface*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @bnx2fc_interface_put(%struct.bnx2fc_interface*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
