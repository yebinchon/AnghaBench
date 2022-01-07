; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp.h_return_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp.h_return_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_resource = type { %struct.pci_resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_resource**, %struct.pci_resource*)* @return_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_resource(%struct.pci_resource** %0, %struct.pci_resource* %1) #0 {
  %3 = alloca %struct.pci_resource**, align 8
  %4 = alloca %struct.pci_resource*, align 8
  store %struct.pci_resource** %0, %struct.pci_resource*** %3, align 8
  store %struct.pci_resource* %1, %struct.pci_resource** %4, align 8
  %5 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %6 = icmp ne %struct.pci_resource* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %9 = icmp ne %struct.pci_resource** %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  br label %18

11:                                               ; preds = %7
  %12 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %13 = load %struct.pci_resource*, %struct.pci_resource** %12, align 8
  %14 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %15 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %14, i32 0, i32 0
  store %struct.pci_resource* %13, %struct.pci_resource** %15, align 8
  %16 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %17 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  store %struct.pci_resource* %16, %struct.pci_resource** %17, align 8
  br label %18

18:                                               ; preds = %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
