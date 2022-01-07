; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_handle_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_handle_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MAX_MSI_IRQS_PER_CTRL = common dso_local global i32 0, align 4
@PCIE_MSI_INTR0_STATUS = common dso_local global i64 0, align 8
@MSI_REG_CTRL_BLOCK_SIZE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dw_handle_msi_irq(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %9 = load i32, i32* @IRQ_NONE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %11 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAX_MSI_IRQS_PER_CTRL, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %55, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %21 = load i64, i64* @PCIE_MSI_INTR0_STATUS, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MSI_REG_CTRL_BLOCK_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = call i32 @dw_pcie_rd_own_conf(%struct.pcie_port* %20, i64 %26, i32 4, i32* %6)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %55

31:                                               ; preds = %19
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %40, %31
  %34 = bitcast i32* %6 to i64*
  %35 = load i32, i32* @MAX_MSI_IRQS_PER_CTRL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @find_next_bit(i64* %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @MAX_MSI_IRQS_PER_CTRL, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %42 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @MAX_MSI_IRQS_PER_CTRL, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @irq_find_mapping(i32 %43, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @generic_handle_irq(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %33

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %30
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %15

58:                                               ; preds = %15
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @dw_pcie_rd_own_conf(%struct.pcie_port*, i64, i32, i32*) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
