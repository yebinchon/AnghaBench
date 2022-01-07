; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pmcraid_instance = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pmcraid_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.pmcraid_instance* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.pmcraid_instance* %5, %struct.pmcraid_instance** %3, align 8
  %6 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %7 = call i32 @pmcraid_release_chrdev(%struct.pmcraid_instance* %6)
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %9 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @scsi_remove_host(i32 %10)
  %12 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %13 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @scsi_block_requests(i32 %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = call i32 @pmcraid_shutdown(%struct.pci_dev* %16)
  %18 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %19 = call i32 @pmcraid_disable_interrupts(%struct.pmcraid_instance* %18, i32 -1)
  %20 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %21 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %20, i32 0, i32 2
  %22 = call i32 @flush_work(i32* %21)
  %23 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %24 = call i32 @pmcraid_kill_tasklets(%struct.pmcraid_instance* %23)
  %25 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %26 = call i32 @pmcraid_unregister_interrupt_handler(%struct.pmcraid_instance* %25)
  %27 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %28 = call i32 @pmcraid_release_buffers(%struct.pmcraid_instance* %27)
  %29 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %30 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_release_regions(%struct.pci_dev* %33)
  %35 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %36 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @scsi_host_put(i32 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  ret void
}

declare dso_local %struct.pmcraid_instance* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pmcraid_release_chrdev(%struct.pmcraid_instance*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @pmcraid_shutdown(%struct.pci_dev*) #1

declare dso_local i32 @pmcraid_disable_interrupts(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @pmcraid_kill_tasklets(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_unregister_interrupt_handler(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_release_buffers(%struct.pmcraid_instance*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
