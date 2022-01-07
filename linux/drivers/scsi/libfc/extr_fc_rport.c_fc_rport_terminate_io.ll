; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_terminate_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_terminate_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i32, %struct.fc_rport_libfc_priv* }
%struct.fc_rport_libfc_priv = type { %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_rport_terminate_io(%struct.fc_rport* %0) #0 {
  %2 = alloca %struct.fc_rport*, align 8
  %3 = alloca %struct.fc_rport_libfc_priv*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %2, align 8
  %5 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %6 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %5, i32 0, i32 1
  %7 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %6, align 8
  store %struct.fc_rport_libfc_priv* %7, %struct.fc_rport_libfc_priv** %3, align 8
  %8 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %3, align 8
  %9 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %8, i32 0, i32 0
  %10 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  store %struct.fc_lport* %10, %struct.fc_lport** %4, align 8
  %11 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.fc_lport*, i32, i32)*, i32 (%struct.fc_lport*, i32, i32)** %13, align 8
  %15 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %16 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %17 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %14(%struct.fc_lport* %15, i32 0, i32 %18)
  %20 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %21 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.fc_lport*, i32, i32)*, i32 (%struct.fc_lport*, i32, i32)** %22, align 8
  %24 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %25 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %26 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %23(%struct.fc_lport* %24, i32 %27, i32 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
