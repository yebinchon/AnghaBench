; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_handle_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_handle_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advk_pcie = type { i32 }

@PCIE_MSI_MASK_REG = common dso_local global i32 0, align 4
@PCIE_MSI_STATUS_REG = common dso_local global i32 0, align 4
@MSI_IRQ_NUM = common dso_local global i64 0, align 8
@PCIE_MSI_PAYLOAD_REG = common dso_local global i32 0, align 4
@PCIE_ISR0_MSI_INT_PENDING = common dso_local global i64 0, align 8
@PCIE_ISR0_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.advk_pcie*)* @advk_pcie_handle_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advk_pcie_handle_msi(%struct.advk_pcie* %0) #0 {
  %2 = alloca %struct.advk_pcie*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.advk_pcie* %0, %struct.advk_pcie** %2, align 8
  %8 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %9 = load i32, i32* @PCIE_MSI_MASK_REG, align 4
  %10 = call i32 @advk_readl(%struct.advk_pcie* %8, i32 %9)
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %13 = load i32, i32* @PCIE_MSI_STATUS_REG, align 4
  %14 = call i32 @advk_readl(%struct.advk_pcie* %12, i32 %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  store i64 %19, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %43, %1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @MSI_IRQ_NUM, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @BIT(i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %43

31:                                               ; preds = %24
  %32 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @BIT(i64 %33)
  %35 = load i32, i32* @PCIE_MSI_STATUS_REG, align 4
  %36 = call i32 @advk_writel(%struct.advk_pcie* %32, i64 %34, i32 %35)
  %37 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %38 = load i32, i32* @PCIE_MSI_PAYLOAD_REG, align 4
  %39 = call i32 @advk_readl(%struct.advk_pcie* %37, i32 %38)
  %40 = and i32 %39, 255
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @generic_handle_irq(i32 %41)
  br label %43

43:                                               ; preds = %31, %30
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %20

46:                                               ; preds = %20
  %47 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %48 = load i64, i64* @PCIE_ISR0_MSI_INT_PENDING, align 8
  %49 = load i32, i32* @PCIE_ISR0_REG, align 4
  %50 = call i32 @advk_writel(%struct.advk_pcie* %47, i64 %48, i32 %49)
  ret void
}

declare dso_local i32 @advk_readl(%struct.advk_pcie*, i32) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @advk_writel(%struct.advk_pcie*, i64, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
