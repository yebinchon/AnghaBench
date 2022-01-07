; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_init_service_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_init_service_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCIE_PORT_DEVICE_MAXSERVICES = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_PME = common dso_local global i32 0, align 4
@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, i32)* @pcie_init_service_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_init_service_irqs(%struct.pci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %19, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  br label %10

22:                                               ; preds = %10
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i64 (...) @pcie_pme_no_msi()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %39

31:                                               ; preds = %27, %22
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @pcie_port_enable_irq_vec(%struct.pci_dev* %32, i32* %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %64

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %30
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  %42 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %40, i32 1, i32 1, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %64

48:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = call i32 @pci_irq_vector(%struct.pci_dev* %54, i32 0)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %49

63:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %45, %37
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @pcie_pme_no_msi(...) #1

declare dso_local i64 @pcie_port_enable_irq_vec(%struct.pci_dev*, i32*, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
