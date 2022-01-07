; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_raise_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_raise_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf_test = type { i32, %struct.pci_epf_test_reg**, %struct.pci_epf* }
%struct.pci_epf_test_reg = type { i32 }
%struct.pci_epf = type { i32, %struct.pci_epc*, %struct.device }
%struct.pci_epc = type { i32 }
%struct.device = type { i32 }

@STATUS_IRQ_RAISED = common dso_local global i32 0, align 4
@PCI_EPC_IRQ_LEGACY = common dso_local global i32 0, align 4
@PCI_EPC_IRQ_MSI = common dso_local global i32 0, align 4
@PCI_EPC_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to raise IRQ, unknown type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_epf_test*, i32, i32)* @pci_epf_test_raise_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_epf_test_raise_irq(%struct.pci_epf_test* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_epf_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_epf*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.pci_epc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_epf_test_reg*, align 8
  store %struct.pci_epf_test* %0, %struct.pci_epf_test** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %13 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %12, i32 0, i32 2
  %14 = load %struct.pci_epf*, %struct.pci_epf** %13, align 8
  store %struct.pci_epf* %14, %struct.pci_epf** %7, align 8
  %15 = load %struct.pci_epf*, %struct.pci_epf** %7, align 8
  %16 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %15, i32 0, i32 2
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.pci_epf*, %struct.pci_epf** %7, align 8
  %18 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %17, i32 0, i32 1
  %19 = load %struct.pci_epc*, %struct.pci_epc** %18, align 8
  store %struct.pci_epc* %19, %struct.pci_epc** %9, align 8
  %20 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %21 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %24 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %23, i32 0, i32 1
  %25 = load %struct.pci_epf_test_reg**, %struct.pci_epf_test_reg*** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pci_epf_test_reg*, %struct.pci_epf_test_reg** %25, i64 %27
  %29 = load %struct.pci_epf_test_reg*, %struct.pci_epf_test_reg** %28, align 8
  store %struct.pci_epf_test_reg* %29, %struct.pci_epf_test_reg** %11, align 8
  %30 = load i32, i32* @STATUS_IRQ_RAISED, align 4
  %31 = load %struct.pci_epf_test_reg*, %struct.pci_epf_test_reg** %11, align 8
  %32 = getelementptr inbounds %struct.pci_epf_test_reg, %struct.pci_epf_test_reg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %59 [
    i32 130, label %36
    i32 129, label %43
    i32 128, label %51
  ]

36:                                               ; preds = %3
  %37 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %38 = load %struct.pci_epf*, %struct.pci_epf** %7, align 8
  %39 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCI_EPC_IRQ_LEGACY, align 4
  %42 = call i32 @pci_epc_raise_irq(%struct.pci_epc* %37, i32 %40, i32 %41, i32 0)
  br label %62

43:                                               ; preds = %3
  %44 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %45 = load %struct.pci_epf*, %struct.pci_epf** %7, align 8
  %46 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PCI_EPC_IRQ_MSI, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pci_epc_raise_irq(%struct.pci_epc* %44, i32 %47, i32 %48, i32 %49)
  br label %62

51:                                               ; preds = %3
  %52 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %53 = load %struct.pci_epf*, %struct.pci_epf** %7, align 8
  %54 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PCI_EPC_IRQ_MSIX, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @pci_epc_raise_irq(%struct.pci_epc* %52, i32 %55, i32 %56, i32 %57)
  br label %62

59:                                               ; preds = %3
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %51, %43, %36
  ret void
}

declare dso_local i32 @pci_epc_raise_irq(%struct.pci_epc*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
