; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_host_symbolic_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_host_symbolic_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @lpfc_get_host_symbolic_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_get_host_symbolic_name(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %7, %struct.lpfc_vport** %3, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %10 = call i32 @fc_host_symbolic_name(%struct.Scsi_Host* %9)
  %11 = call i32 @lpfc_vport_symbolic_node_name(%struct.lpfc_vport* %8, i32 %10, i32 4)
  ret void
}

declare dso_local i32 @lpfc_vport_symbolic_node_name(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @fc_host_symbolic_name(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
