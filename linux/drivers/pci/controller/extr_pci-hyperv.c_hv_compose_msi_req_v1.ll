; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_compose_msi_req_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_compose_msi_req_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_create_interrupt = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cpumask = type { i32 }

@PCI_CREATE_INTERRUPT_MESSAGE = common dso_local global i32 0, align 4
@dest_Fixed = common dso_local global i32 0, align 4
@CPU_AFFINITY_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_create_interrupt*, %struct.cpumask*, i32, i32)* @hv_compose_msi_req_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_compose_msi_req_v1(%struct.pci_create_interrupt* %0, %struct.cpumask* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_create_interrupt*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_create_interrupt* %0, %struct.pci_create_interrupt** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @PCI_CREATE_INTERRUPT_MESSAGE, align 4
  %10 = load %struct.pci_create_interrupt*, %struct.pci_create_interrupt** %5, align 8
  %11 = getelementptr inbounds %struct.pci_create_interrupt, %struct.pci_create_interrupt* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.pci_create_interrupt*, %struct.pci_create_interrupt** %5, align 8
  %15 = getelementptr inbounds %struct.pci_create_interrupt, %struct.pci_create_interrupt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.pci_create_interrupt*, %struct.pci_create_interrupt** %5, align 8
  %19 = getelementptr inbounds %struct.pci_create_interrupt, %struct.pci_create_interrupt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load %struct.pci_create_interrupt*, %struct.pci_create_interrupt** %5, align 8
  %22 = getelementptr inbounds %struct.pci_create_interrupt, %struct.pci_create_interrupt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @dest_Fixed, align 4
  %25 = load %struct.pci_create_interrupt*, %struct.pci_create_interrupt** %5, align 8
  %26 = getelementptr inbounds %struct.pci_create_interrupt, %struct.pci_create_interrupt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @CPU_AFFINITY_ALL, align 4
  %29 = load %struct.pci_create_interrupt*, %struct.pci_create_interrupt** %5, align 8
  %30 = getelementptr inbounds %struct.pci_create_interrupt, %struct.pci_create_interrupt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  ret i32 24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
