; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c___dw_pcie_ep_reset_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c___dw_pcie_ep_reset_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_pcie*, i32, i32)* @__dw_pcie_ep_reset_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dw_pcie_ep_reset_bar(%struct.dw_pcie* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dw_pcie* %0, %struct.dw_pcie** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @PCI_BASE_ADDRESS_0, align 8
  %9 = load i32, i32* %5, align 4
  %10 = mul i32 4, %9
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  store i64 %12, i64* %7, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %14 = call i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie* %13)
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @dw_pcie_writel_dbi2(%struct.dw_pcie* %15, i64 %16, i32 0)
  %18 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %18, i64 %19, i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, 4
  %29 = call i32 @dw_pcie_writel_dbi2(%struct.dw_pcie* %26, i64 %28, i32 0)
  %30 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, 4
  %33 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %30, i64 %32, i32 0)
  br label %34

34:                                               ; preds = %25, %3
  %35 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %36 = call i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie* %35)
  ret void
}

declare dso_local i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_writel_dbi2(%struct.dw_pcie*, i64, i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i64, i32) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
