; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_enable_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_enable_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie_port = type { i64 }

@PCIE_MSI_VECTOR = common dso_local global i64 0, align 8
@PCIE_IMSI_ADDR = common dso_local global i64 0, align 8
@PCIE_INT_MASK = common dso_local global i64 0, align 8
@MSI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_pcie_port*)* @mtk_pcie_enable_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_pcie_enable_msi(%struct.mtk_pcie_port* %0) #0 {
  %2 = alloca %struct.mtk_pcie_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mtk_pcie_port* %0, %struct.mtk_pcie_port** %2, align 8
  %5 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCIE_MSI_VECTOR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @virt_to_phys(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @lower_32_bits(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %15 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCIE_IMSI_ADDR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %21 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCIE_INT_MASK, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @MSI_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %32 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCIE_INT_MASK, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  ret void
}

declare dso_local i32 @virt_to_phys(i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
