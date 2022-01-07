; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_add_pci_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_add_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32)* }
%struct.xen_pcibk_device = type { i32 }
%struct.pci_dev = type { i32 }

@xen_pcibk_backend = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32)* @xen_pcibk_add_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_add_pci_dev(%struct.xen_pcibk_device* %0, %struct.pci_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_pcibk_device*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32)*, i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32)*, i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32)** %19, align 8
  %21 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 %20(%struct.xen_pcibk_device* %21, %struct.pci_dev* %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %12, %4
  store i32 -1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
