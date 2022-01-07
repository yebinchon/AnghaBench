; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.pcie_port* }
%struct.pcie_port = type { i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @dw_pcie_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pcie_port*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %15 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %14, i32 0, i32 0
  %16 = load %struct.pcie_port*, %struct.pcie_port** %15, align 8
  store %struct.pcie_port* %16, %struct.pcie_port** %10, align 8
  %17 = load %struct.pcie_port*, %struct.pcie_port** %10, align 8
  %18 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %17, i32 0, i32 1
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pcie_port*, %struct.pcie_port** %10, align 8
  %22 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pcie_port*, %struct.pcie_port** %10, align 8
  %25 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @order_base_2(i32 %27)
  %29 = call i32 @bitmap_find_free_region(i32 %23, i32 %26, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.pcie_port*, %struct.pcie_port** %10, align 8
  %31 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %30, i32 0, i32 1
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @raw_spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %62

39:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %46, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %49, %50
  %52 = load %struct.pcie_port*, %struct.pcie_port** %10, align 8
  %53 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pcie_port*, %struct.pcie_port** %10, align 8
  %56 = load i32, i32* @handle_edge_irq, align 4
  %57 = call i32 @irq_domain_set_info(%struct.irq_domain* %45, i32 %48, i32 %51, i32 %54, %struct.pcie_port* %55, i32 %56, i32* null, i32* null)
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %40

61:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32, %struct.pcie_port*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
