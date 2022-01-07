; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_get_pcifront_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_get_pcifront_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dev*, %struct.xen_pcibk_device*, i32*, i32*, i32*)* }
%struct.pci_dev = type { i32 }
%struct.xen_pcibk_device = type { i32 }

@xen_pcibk_backend = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.xen_pcibk_device*, i32*, i32*, i32*)* @xen_pcibk_get_pcifront_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_get_pcifront_dev(%struct.pci_dev* %0, %struct.xen_pcibk_device* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.xen_pcibk_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store %struct.xen_pcibk_device* %1, %struct.xen_pcibk_device** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.pci_dev*, %struct.xen_pcibk_device*, i32*, i32*, i32*)*, i32 (%struct.pci_dev*, %struct.xen_pcibk_device*, i32*, i32*, i32*)** %16, align 8
  %18 = icmp ne i32 (%struct.pci_dev*, %struct.xen_pcibk_device*, i32*, i32*, i32*)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.pci_dev*, %struct.xen_pcibk_device*, i32*, i32*, i32*)*, i32 (%struct.pci_dev*, %struct.xen_pcibk_device*, i32*, i32*, i32*)** %21, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %24 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 %22(%struct.pci_dev* %23, %struct.xen_pcibk_device* %24, i32* %25, i32* %26, i32* %27)
  store i32 %28, i32* %6, align 4
  br label %30

29:                                               ; preds = %14, %5
  store i32 -1, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
