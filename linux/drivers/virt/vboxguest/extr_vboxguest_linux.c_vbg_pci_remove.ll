; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vbg_dev = type { i32, i32, i32 }

@vbg_gdev_mutex = common dso_local global i32 0, align 4
@vbg_gdev = common dso_local global i32* null, align 8
@dev_attr_host_features = common dso_local global i32 0, align 4
@dev_attr_host_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vbg_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbg_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.vbg_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.vbg_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.vbg_dev* %5, %struct.vbg_dev** %3, align 8
  %6 = call i32 @mutex_lock(i32* @vbg_gdev_mutex)
  store i32* null, i32** @vbg_gdev, align 8
  %7 = call i32 @mutex_unlock(i32* @vbg_gdev_mutex)
  %8 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_remove_file(i32 %10, i32* @dev_attr_host_features)
  %12 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @device_remove_file(i32 %14, i32* @dev_attr_host_version)
  %16 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %16, i32 0, i32 1
  %18 = call i32 @misc_deregister(i32* %17)
  %19 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %20 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %19, i32 0, i32 0
  %21 = call i32 @misc_deregister(i32* %20)
  %22 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %23 = call i32 @vbg_core_exit(%struct.vbg_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_disable_device(%struct.pci_dev* %24)
  ret void
}

declare dso_local %struct.vbg_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @vbg_core_exit(%struct.vbg_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
