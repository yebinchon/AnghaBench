; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_compose_msi_req_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_compose_msi_req_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_create_interrupt2 = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cpumask = type { i32 }

@PCI_CREATE_INTERRUPT_MESSAGE2 = common dso_local global i32 0, align 4
@dest_Fixed = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_create_interrupt2*, %struct.cpumask*, i32, i32)* @hv_compose_msi_req_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_compose_msi_req_v2(%struct.pci_create_interrupt2* %0, %struct.cpumask* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_create_interrupt2*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_create_interrupt2* %0, %struct.pci_create_interrupt2** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @PCI_CREATE_INTERRUPT_MESSAGE2, align 4
  %11 = load %struct.pci_create_interrupt2*, %struct.pci_create_interrupt2** %5, align 8
  %12 = getelementptr inbounds %struct.pci_create_interrupt2, %struct.pci_create_interrupt2* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.pci_create_interrupt2*, %struct.pci_create_interrupt2** %5, align 8
  %16 = getelementptr inbounds %struct.pci_create_interrupt2, %struct.pci_create_interrupt2* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.pci_create_interrupt2*, %struct.pci_create_interrupt2** %5, align 8
  %20 = getelementptr inbounds %struct.pci_create_interrupt2, %struct.pci_create_interrupt2* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load %struct.pci_create_interrupt2*, %struct.pci_create_interrupt2** %5, align 8
  %23 = getelementptr inbounds %struct.pci_create_interrupt2, %struct.pci_create_interrupt2* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @dest_Fixed, align 4
  %26 = load %struct.pci_create_interrupt2*, %struct.pci_create_interrupt2** %5, align 8
  %27 = getelementptr inbounds %struct.pci_create_interrupt2, %struct.pci_create_interrupt2* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %30 = load i32, i32* @cpu_online_mask, align 4
  %31 = call i32 @cpumask_first_and(%struct.cpumask* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @hv_cpu_number_to_vp_number(i32 %32)
  %34 = load %struct.pci_create_interrupt2*, %struct.pci_create_interrupt2** %5, align 8
  %35 = getelementptr inbounds %struct.pci_create_interrupt2, %struct.pci_create_interrupt2* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %33, i32* %38, align 4
  %39 = load %struct.pci_create_interrupt2*, %struct.pci_create_interrupt2** %5, align 8
  %40 = getelementptr inbounds %struct.pci_create_interrupt2, %struct.pci_create_interrupt2* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  ret i32 32
}

declare dso_local i32 @cpumask_first_and(%struct.cpumask*, i32) #1

declare dso_local i32 @hv_cpu_number_to_vp_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
