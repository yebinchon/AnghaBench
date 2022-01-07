; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.nvme_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NVME_CTRL_DELETING = common dso_local global i32 0, align 4
@NVME_CTRL_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @nvme_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.nvme_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.nvme_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.nvme_dev* %5, %struct.nvme_dev** %3, align 8
  %6 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %6, i32 0, i32 0
  %8 = load i32, i32* @NVME_CTRL_DELETING, align 4
  %9 = call i32 @nvme_change_ctrl_state(%struct.TYPE_6__* %7, i32 %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @pci_set_drvdata(%struct.pci_dev* %10, i32* null)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = call i32 @pci_device_is_present(%struct.pci_dev* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %16, i32 0, i32 0
  %18 = load i32, i32* @NVME_CTRL_DEAD, align 4
  %19 = call i32 @nvme_change_ctrl_state(%struct.TYPE_6__* %17, i32 %18)
  %20 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %21 = call i32 @nvme_dev_disable(%struct.nvme_dev* %20, i32 1)
  %22 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %23 = call i32 @nvme_dev_remove_admin(%struct.nvme_dev* %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @flush_work(i32* %27)
  %29 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %30 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %29, i32 0, i32 0
  %31 = call i32 @nvme_stop_ctrl(%struct.TYPE_6__* %30)
  %32 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %32, i32 0, i32 0
  %34 = call i32 @nvme_remove_namespaces(%struct.TYPE_6__* %33)
  %35 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %36 = call i32 @nvme_dev_disable(%struct.nvme_dev* %35, i32 1)
  %37 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %38 = call i32 @nvme_release_cmb(%struct.nvme_dev* %37)
  %39 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %40 = call i32 @nvme_free_host_mem(%struct.nvme_dev* %39)
  %41 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %42 = call i32 @nvme_dev_remove_admin(%struct.nvme_dev* %41)
  %43 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %44 = call i32 @nvme_free_queues(%struct.nvme_dev* %43, i32 0)
  %45 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %45, i32 0, i32 0
  %47 = call i32 @nvme_uninit_ctrl(%struct.TYPE_6__* %46)
  %48 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %49 = call i32 @nvme_release_prp_pools(%struct.nvme_dev* %48)
  %50 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %51 = call i32 @nvme_dev_unmap(%struct.nvme_dev* %50)
  %52 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %52, i32 0, i32 0
  %54 = call i32 @nvme_put_ctrl(%struct.TYPE_6__* %53)
  ret void
}

declare dso_local %struct.nvme_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @nvme_change_ctrl_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_device_is_present(%struct.pci_dev*) #1

declare dso_local i32 @nvme_dev_disable(%struct.nvme_dev*, i32) #1

declare dso_local i32 @nvme_dev_remove_admin(%struct.nvme_dev*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @nvme_stop_ctrl(%struct.TYPE_6__*) #1

declare dso_local i32 @nvme_remove_namespaces(%struct.TYPE_6__*) #1

declare dso_local i32 @nvme_release_cmb(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_free_host_mem(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_free_queues(%struct.nvme_dev*, i32) #1

declare dso_local i32 @nvme_uninit_ctrl(%struct.TYPE_6__*) #1

declare dso_local i32 @nvme_release_prp_pools(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_dev_unmap(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_put_ctrl(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
