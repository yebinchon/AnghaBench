; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.mtk_pcie_port* }
%struct.mtk_pcie_port = type { i32, i32 }

@MTK_MSI_IRQS_NUM = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@mtk_msi_bottom_irq_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @mtk_pcie_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mtk_pcie_port*, align 8
  %11 = alloca i64, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %13 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %12, i32 0, i32 0
  %14 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %13, align 8
  store %struct.mtk_pcie_port* %14, %struct.mtk_pcie_port** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %10, align 8
  %20 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %10, align 8
  %23 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @MTK_MSI_IRQS_NUM, align 8
  %26 = call i64 @find_first_zero_bit(i32 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @MTK_MSI_IRQS_NUM, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %10, align 8
  %32 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %53

36:                                               ; preds = %4
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %10, align 8
  %39 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__set_bit(i64 %37, i32 %40)
  %42 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %10, align 8
  %43 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %49 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %48, i32 0, i32 0
  %50 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %49, align 8
  %51 = load i32, i32* @handle_edge_irq, align 4
  %52 = call i32 @irq_domain_set_info(%struct.irq_domain* %45, i32 %46, i64 %47, i32* @mtk_msi_bottom_irq_chip, %struct.mtk_pcie_port* %50, i32 %51, i32* null, i32* null)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %36, %30
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i64, i32*, %struct.mtk_pcie_port*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
