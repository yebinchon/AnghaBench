; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_if_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_if_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @bnx2fc_if_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_if_destroy(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = call i32 @bnx2fc_clean_rx_queue(%struct.fc_lport* %3)
  %5 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %6 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @fc_remove_host(i32 %7)
  %9 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @scsi_remove_host(i32 %11)
  %13 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %14 = call i32 @fc_exch_mgr_free(%struct.fc_lport* %13)
  %15 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %16 = call i32 @fc_lport_free_stats(%struct.fc_lport* %15)
  %17 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %18 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @scsi_host_put(i32 %19)
  ret void
}

declare dso_local i32 @bnx2fc_clean_rx_queue(%struct.fc_lport*) #1

declare dso_local i32 @fc_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @fc_exch_mgr_free(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_free_stats(%struct.fc_lport*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
