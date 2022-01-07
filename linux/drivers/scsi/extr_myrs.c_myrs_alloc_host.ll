; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_alloc_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_alloc_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { %struct.Scsi_Host*, i32, i32 }
%struct.Scsi_Host = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@myrs_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.myrs_hba* (%struct.pci_dev*, %struct.pci_device_id*)* @myrs_alloc_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.myrs_hba* @myrs_alloc_host(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.myrs_hba*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.myrs_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @myrs_template, i32 16)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %6, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %10 = icmp ne %struct.Scsi_Host* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.myrs_hba* null, %struct.myrs_hba** %3, align 8
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  store i32 16, i32* %14, align 4
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 1
  store i32 256, i32* %16, align 4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = call %struct.myrs_hba* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.myrs_hba* %18, %struct.myrs_hba** %7, align 8
  %19 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %20 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %19, i32 0, i32 2
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %23 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %22, i32 0, i32 1
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %26 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %27 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %26, i32 0, i32 0
  store %struct.Scsi_Host* %25, %struct.Scsi_Host** %27, align 8
  %28 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  store %struct.myrs_hba* %28, %struct.myrs_hba** %3, align 8
  br label %29

29:                                               ; preds = %12, %11
  %30 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  ret %struct.myrs_hba* %30
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.myrs_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
