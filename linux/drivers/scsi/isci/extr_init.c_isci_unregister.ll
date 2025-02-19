; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_isci_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_isci_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*)* @isci_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isci_unregister(%struct.isci_host* %0) #0 {
  %2 = alloca %struct.isci_host*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %2, align 8
  %4 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %5 = icmp ne %struct.isci_host* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  %8 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %9 = call %struct.Scsi_Host* @to_shost(%struct.isci_host* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %3, align 8
  %10 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %11 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %10, i32 0, i32 0
  %12 = call i32 @sas_unregister_ha(i32* %11)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call i32 @sas_remove_host(%struct.Scsi_Host* %13)
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = call i32 @scsi_host_put(%struct.Scsi_Host* %15)
  br label %17

17:                                               ; preds = %7, %6
  ret void
}

declare dso_local %struct.Scsi_Host* @to_shost(%struct.isci_host*) #1

declare dso_local i32 @sas_unregister_ha(i32*) #1

declare dso_local i32 @sas_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
