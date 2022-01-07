; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advk_pcie = type { i32 }

@HOST_CTRL_INT_STATUS_REG = common dso_local global i32 0, align 4
@PCIE_IRQ_CORE_INT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @advk_pcie_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advk_pcie_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.advk_pcie*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.advk_pcie*
  store %struct.advk_pcie* %9, %struct.advk_pcie** %6, align 8
  %10 = load %struct.advk_pcie*, %struct.advk_pcie** %6, align 8
  %11 = load i32, i32* @HOST_CTRL_INT_STATUS_REG, align 4
  %12 = call i32 @advk_readl(%struct.advk_pcie* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PCIE_IRQ_CORE_INT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.advk_pcie*, %struct.advk_pcie** %6, align 8
  %21 = call i32 @advk_pcie_handle_int(%struct.advk_pcie* %20)
  %22 = load %struct.advk_pcie*, %struct.advk_pcie** %6, align 8
  %23 = load i32, i32* @PCIE_IRQ_CORE_INT, align 4
  %24 = load i32, i32* @HOST_CTRL_INT_STATUS_REG, align 4
  %25 = call i32 @advk_writel(%struct.advk_pcie* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %19, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @advk_readl(%struct.advk_pcie*, i32) #1

declare dso_local i32 @advk_pcie_handle_int(%struct.advk_pcie*) #1

declare dso_local i32 @advk_writel(%struct.advk_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
