; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_..pcipci.h_pci_resource_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_..pcipci.h_pci_resource_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@PCI_CLASS_BRIDGE_CARDBUS = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCES = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.resource*)* @pci_resource_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_resource_alignment(%struct.pci_dev* %0, %struct.resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %8, 8
  %10 = load i32, i32* @PCI_CLASS_BRIDGE_CARDBUS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = call i32 @pci_cardbus_resource_alignment(%struct.resource* %13)
  store i32 %14, i32* %3, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.resource*, %struct.resource** %5, align 8
  %17 = call i32 @resource_alignment(%struct.resource* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @pci_cardbus_resource_alignment(%struct.resource*) #1

declare dso_local i32 @resource_alignment(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
