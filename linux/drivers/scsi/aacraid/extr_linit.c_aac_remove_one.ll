; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.aac_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@aac_devices = common dso_local global i32 0, align 4
@aac_cfg_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"aac\00", align 1
@AAC_CHARDEV_NEEDS_REINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @aac_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.aac_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.aac_dev*
  store %struct.aac_dev* %10, %struct.aac_dev** %4, align 8
  %11 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %12 = call i32 @aac_cancel_safw_rescan_worker(%struct.aac_dev* %11)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call i32 @scsi_remove_host(%struct.Scsi_Host* %13)
  %15 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %16 = call i32 @__aac_shutdown(%struct.aac_dev* %15)
  %17 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %18 = call i32 @aac_fib_map_free(%struct.aac_dev* %17)
  %19 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %20 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %19, i32 0, i32 7
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %24 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %27 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %30 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dma_free_coherent(i32* %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %34 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %38 = call i32 @aac_adapter_ioremap(%struct.aac_dev* %37, i32 0)
  %39 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %40 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kfree(i32 %41)
  %43 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %44 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %48 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %47, i32 0, i32 0
  %49 = call i32 @list_del(i32* %48)
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %51 = call i32 @scsi_host_put(%struct.Scsi_Host* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = call i32 @pci_disable_device(%struct.pci_dev* %52)
  %54 = call i64 @list_empty(i32* @aac_devices)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %1
  %57 = load i32, i32* @aac_cfg_major, align 4
  %58 = call i32 @unregister_chrdev(i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @AAC_CHARDEV_NEEDS_REINIT, align 4
  store i32 %59, i32* @aac_cfg_major, align 4
  br label %60

60:                                               ; preds = %56, %1
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @aac_cancel_safw_rescan_worker(%struct.aac_dev*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @__aac_shutdown(%struct.aac_dev*) #1

declare dso_local i32 @aac_fib_map_free(%struct.aac_dev*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @aac_adapter_ioremap(%struct.aac_dev*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @unregister_chrdev(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
