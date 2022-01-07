; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.initio_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @initio_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initio_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.initio_host*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.initio_host*
  store %struct.initio_host* %10, %struct.initio_host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call i32 @scsi_remove_host(%struct.Scsi_Host* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.Scsi_Host* %16)
  %18 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %19 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @release_region(i32 %20, i32 256)
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %23 = call i32 @scsi_host_put(%struct.Scsi_Host* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_disable_device(%struct.pci_dev* %24)
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
