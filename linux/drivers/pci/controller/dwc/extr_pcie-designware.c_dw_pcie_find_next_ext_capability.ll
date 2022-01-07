; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_find_next_ext_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_find_next_ext_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }

@PCI_CFG_SPACE_SIZE = common dso_local global i32 0, align 4
@PCI_CFG_SPACE_EXP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie*, i32, i64)* @dw_pcie_find_next_ext_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_find_next_ext_capability(%struct.dw_pcie* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dw_pcie* %0, %struct.dw_pcie** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @PCI_CFG_SPACE_EXP_SIZE, align 4
  %13 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sdiv i32 %14, 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @dw_pcie_readl_dbi(%struct.dw_pcie* %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %55

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  %31 = icmp sgt i32 %29, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @PCI_EXT_CAP_ID(i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %37, %32
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @PCI_EXT_CAP_NEXT(i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %54

50:                                               ; preds = %43
  %51 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @dw_pcie_readl_dbi(%struct.dw_pcie* %51, i32 %52)
  store i64 %53, i64* %8, align 8
  br label %28

54:                                               ; preds = %49, %28
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %41, %26
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i64 @PCI_EXT_CAP_ID(i64) #1

declare dso_local i32 @PCI_EXT_CAP_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
