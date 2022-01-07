; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_free_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_free_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i64, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_pcie_free_msi(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %3 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %4 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %9 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @irq_set_chained_handler(i64 %10, i32* null)
  %12 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %13 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @irq_set_handler_data(i64 %14, i32* null)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %18 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @irq_domain_remove(i32 %19)
  %21 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %22 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @irq_domain_remove(i32 %23)
  %25 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %26 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %31 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @__free_page(i64 %32)
  br label %34

34:                                               ; preds = %29, %16
  ret void
}

declare dso_local i32 @irq_set_chained_handler(i64, i32*) #1

declare dso_local i32 @irq_set_handler_data(i64, i32*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @__free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
