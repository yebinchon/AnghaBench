; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_wr_own_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_wr_own_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i64 }
%struct.exynos_pcie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*, i32, i32, i32)* @exynos_pcie_wr_own_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_pcie_wr_own_conf(%struct.pcie_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pcie_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dw_pcie*, align 8
  %10 = alloca %struct.exynos_pcie*, align 8
  %11 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pcie_port*, %struct.pcie_port** %5, align 8
  %13 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %12)
  store %struct.dw_pcie* %13, %struct.dw_pcie** %9, align 8
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  %15 = call %struct.exynos_pcie* @to_exynos_pcie(%struct.dw_pcie* %14)
  store %struct.exynos_pcie* %15, %struct.exynos_pcie** %10, align 8
  %16 = load %struct.exynos_pcie*, %struct.exynos_pcie** %10, align 8
  %17 = call i32 @exynos_pcie_sideband_dbi_w_mode(%struct.exynos_pcie* %16, i32 1)
  %18 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  %19 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dw_pcie_write(i64 %23, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.exynos_pcie*, %struct.exynos_pcie** %10, align 8
  %28 = call i32 @exynos_pcie_sideband_dbi_w_mode(%struct.exynos_pcie* %27, i32 0)
  %29 = load i32, i32* %11, align 4
  ret i32 %29
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.exynos_pcie* @to_exynos_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @exynos_pcie_sideband_dbi_w_mode(%struct.exynos_pcie*, i32) #1

declare dso_local i32 @dw_pcie_write(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
