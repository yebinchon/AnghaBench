; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_publish_pci_roots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_publish_pci_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xen_pcibk_device*, i32)* }
%struct.xen_pcibk_device = type { i32 }

@xen_pcibk_backend = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_pcibk_device*, i32)* @xen_pcibk_publish_pci_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_publish_pci_roots(%struct.xen_pcibk_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_pcibk_device*, align 8
  %5 = alloca i32, align 4
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.xen_pcibk_device*, i32)*, i32 (%struct.xen_pcibk_device*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.xen_pcibk_device*, i32)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.xen_pcibk_device*, i32)*, i32 (%struct.xen_pcibk_device*, i32)** %15, align 8
  %17 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 %16(%struct.xen_pcibk_device* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
