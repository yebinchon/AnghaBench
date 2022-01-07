; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_unmap_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_unmap_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { %struct.rcar_msi }
%struct.rcar_msi = type { i32 }

@INT_PCI_MSI_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_pcie*)* @rcar_pcie_unmap_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_pcie_unmap_msi(%struct.rcar_pcie* %0) #0 {
  %2 = alloca %struct.rcar_pcie*, align 8
  %3 = alloca %struct.rcar_msi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %2, align 8
  %6 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %6, i32 0, i32 0
  store %struct.rcar_msi* %7, %struct.rcar_msi** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @INT_PCI_MSI_NR, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.rcar_msi*, %struct.rcar_msi** %3, align 8
  %14 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @irq_find_mapping(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @irq_dispose_mapping(i32 %21)
  br label %23

23:                                               ; preds = %20, %12
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.rcar_msi*, %struct.rcar_msi** %3, align 8
  %29 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @irq_domain_remove(i32 %30)
  ret void
}

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
