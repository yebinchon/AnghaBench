; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_free_pcidev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_free_pcidev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { %struct.pci_dev*, i32, i32, i32, %struct.Scsi_Host* }
%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i32 }

@set_date_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_free_pcidev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_free_pcidev(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %5 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %6 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %5, i32 0, i32 4
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %4, align 8
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %9 = call i32 @arcmsr_free_sysfs_attr(%struct.AdapterControlBlock* %8)
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = call i32 @scsi_remove_host(%struct.Scsi_Host* %10)
  %12 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %13 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %12, i32 0, i32 3
  %14 = call i32 @flush_work(i32* %13)
  %15 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %16 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %15, i32 0, i32 2
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load i64, i64* @set_date_time, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %22 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %21, i32 0, i32 1
  %23 = call i32 @del_timer_sync(i32* %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 0
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %3, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %30 = call i32 @arcmsr_free_irq(%struct.pci_dev* %28, %struct.AdapterControlBlock* %29)
  %31 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %32 = call i32 @arcmsr_free_ccb_pool(%struct.AdapterControlBlock* %31)
  %33 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %34 = call i32 @arcmsr_unmap_pciregion(%struct.AdapterControlBlock* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = call i32 @pci_release_regions(%struct.pci_dev* %35)
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %38 = call i32 @scsi_host_put(%struct.Scsi_Host* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  ret void
}

declare dso_local i32 @arcmsr_free_sysfs_attr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @arcmsr_free_irq(%struct.pci_dev*, %struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_ccb_pool(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_unmap_pciregion(%struct.AdapterControlBlock*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
