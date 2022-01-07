; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_release_pci_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_release_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (%struct.xen_pcibk_device*, %struct.pci_dev*, i32)* }
%struct.xen_pcibk_device = type { i32 }
%struct.pci_dev = type { i32 }

@xen_pcibk_backend = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_pcibk_device*, %struct.pci_dev*, i32)* @xen_pcibk_release_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_pcibk_release_pci_dev(%struct.xen_pcibk_device* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.xen_pcibk_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load void (%struct.xen_pcibk_device*, %struct.pci_dev*, i32)*, void (%struct.xen_pcibk_device*, %struct.pci_dev*, i32)** %11, align 8
  %13 = icmp ne void (%struct.xen_pcibk_device*, %struct.pci_dev*, i32)* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load void (%struct.xen_pcibk_device*, %struct.pci_dev*, i32)*, void (%struct.xen_pcibk_device*, %struct.pci_dev*, i32)** %16, align 8
  %18 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load i32, i32* %6, align 4
  call void %17(%struct.xen_pcibk_device* %18, %struct.pci_dev* %19, i32 %20)
  br label %21

21:                                               ; preds = %14, %9, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
