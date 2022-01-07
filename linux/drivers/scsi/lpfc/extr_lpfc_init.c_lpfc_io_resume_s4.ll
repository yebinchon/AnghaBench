; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_io_resume_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_io_resume_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }

@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@LPFC_MBX_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @lpfc_io_resume_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_io_resume_s4(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lpfc_vport*
  %11 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %10, i32 0, i32 0
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  store %struct.lpfc_hba* %12, %struct.lpfc_hba** %4, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = load i32, i32* @LPFC_MBX_WAIT, align 4
  %23 = call i32 @lpfc_offline_prep(%struct.lpfc_hba* %21, i32 %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = call i32 @lpfc_offline(%struct.lpfc_hba* %24)
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %26)
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %29 = call i32 @lpfc_online(%struct.lpfc_hba* %28)
  br label %30

30:                                               ; preds = %20, %1
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_offline_prep(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_offline(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_online(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
