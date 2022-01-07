; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_cleanup_discovery_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_cleanup_discovery_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_cleanup_discovery_resources(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %3 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %4 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %3)
  %5 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %6 = call i32 @lpfc_els_flush_cmd(%struct.lpfc_vport* %5)
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %8 = call i32 @lpfc_disc_flush_list(%struct.lpfc_vport* %7)
  ret void
}

declare dso_local i32 @lpfc_els_flush_rscn(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_flush_cmd(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_disc_flush_list(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
