; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pcie_register_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pcie_register_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_host_bridge = type { %struct.mt7621_pcie*, i32, i32, i32*, %struct.TYPE_4__, i32, i32 }
%struct.mt7621_pcie = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.list_head = type { i32 }

@mt7621_pci_ops = common dso_local global i32 0, align 4
@of_irq_parse_and_map_pci = common dso_local global i32 0, align 4
@pci_common_swizzle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_host_bridge*, %struct.list_head*)* @mt7621_pcie_register_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_pcie_register_host(%struct.pci_host_bridge* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.pci_host_bridge*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.mt7621_pcie*, align 8
  store %struct.pci_host_bridge* %0, %struct.pci_host_bridge** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %7 = call %struct.mt7621_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge* %6)
  store %struct.mt7621_pcie* %7, %struct.mt7621_pcie** %5, align 8
  %8 = load %struct.list_head*, %struct.list_head** %4, align 8
  %9 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %9, i32 0, i32 6
  %11 = call i32 @list_splice_init(%struct.list_head* %8, i32* %10)
  %12 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %17 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %19 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %22 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %25 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %24, i32 0, i32 3
  store i32* @mt7621_pci_ops, i32** %25, align 8
  %26 = load i32, i32* @of_irq_parse_and_map_pci, align 4
  %27 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %28 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @pci_common_swizzle, align 4
  %30 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %31 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %33 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %34 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %33, i32 0, i32 0
  store %struct.mt7621_pcie* %32, %struct.mt7621_pcie** %34, align 8
  %35 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %36 = call i32 @pci_host_probe(%struct.pci_host_bridge* %35)
  ret i32 %36
}

declare dso_local %struct.mt7621_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge*) #1

declare dso_local i32 @list_splice_init(%struct.list_head*, i32*) #1

declare dso_local i32 @pci_host_probe(%struct.pci_host_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
