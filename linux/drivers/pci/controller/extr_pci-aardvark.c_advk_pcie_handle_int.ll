; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_handle_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_handle_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advk_pcie = type { i32 }

@PCIE_ISR0_REG = common dso_local global i32 0, align 4
@PCIE_ISR0_MASK_REG = common dso_local global i32 0, align 4
@PCIE_ISR0_ALL_MASK = common dso_local global i32 0, align 4
@PCIE_ISR1_REG = common dso_local global i32 0, align 4
@PCIE_ISR1_MASK_REG = common dso_local global i32 0, align 4
@PCIE_ISR1_ALL_MASK = common dso_local global i32 0, align 4
@PCIE_ISR0_MSI_INT_PENDING = common dso_local global i32 0, align 4
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.advk_pcie*)* @advk_pcie_handle_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advk_pcie_handle_int(%struct.advk_pcie* %0) #0 {
  %2 = alloca %struct.advk_pcie*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.advk_pcie* %0, %struct.advk_pcie** %2, align 8
  %11 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %12 = load i32, i32* @PCIE_ISR0_REG, align 4
  %13 = call i32 @advk_readl(%struct.advk_pcie* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %15 = load i32, i32* @PCIE_ISR0_MASK_REG, align 4
  %16 = call i32 @advk_readl(%struct.advk_pcie* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @PCIE_ISR0_ALL_MASK, align 4
  %21 = and i32 %19, %20
  %22 = and i32 %17, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %24 = load i32, i32* @PCIE_ISR1_REG, align 4
  %25 = call i32 @advk_readl(%struct.advk_pcie* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %27 = load i32, i32* @PCIE_ISR1_MASK_REG, align 4
  %28 = call i32 @advk_readl(%struct.advk_pcie* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* @PCIE_ISR1_ALL_MASK, align 4
  %33 = and i32 %31, %32
  %34 = and i32 %29, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PCIE_ISR0_REG, align 4
  %44 = call i32 @advk_writel(%struct.advk_pcie* %41, i32 %42, i32 %43)
  %45 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PCIE_ISR1_REG, align 4
  %48 = call i32 @advk_writel(%struct.advk_pcie* %45, i32 %46, i32 %47)
  br label %85

49:                                               ; preds = %37, %1
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @PCIE_ISR0_MSI_INT_PENDING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %56 = call i32 @advk_pcie_handle_msi(%struct.advk_pcie* %55)
  br label %57

57:                                               ; preds = %54, %49
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %82, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @PCI_NUM_INTX, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @PCIE_ISR1_INTX_ASSERT(i32 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %82

69:                                               ; preds = %62
  %70 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @PCIE_ISR1_INTX_ASSERT(i32 %71)
  %73 = load i32, i32* @PCIE_ISR1_REG, align 4
  %74 = call i32 @advk_writel(%struct.advk_pcie* %70, i32 %72, i32 %73)
  %75 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %76 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @irq_find_mapping(i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @generic_handle_irq(i32 %80)
  br label %82

82:                                               ; preds = %69, %68
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %58

85:                                               ; preds = %40, %58
  ret void
}

declare dso_local i32 @advk_readl(%struct.advk_pcie*, i32) #1

declare dso_local i32 @advk_writel(%struct.advk_pcie*, i32, i32) #1

declare dso_local i32 @advk_pcie_handle_msi(%struct.advk_pcie*) #1

declare dso_local i32 @PCIE_ISR1_INTX_ASSERT(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
