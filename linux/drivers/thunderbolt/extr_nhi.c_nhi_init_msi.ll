; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_init_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_init_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_nhi = type { %struct.pci_dev*, i32, i32 }
%struct.pci_dev = type { i32 }

@MSIX_MIN_VECS = common dso_local global i32 0, align 4
@MSIX_MAX_VECS = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@nhi_interrupt_work = common dso_local global i32 0, align 4
@nhi_msi = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"thunderbolt\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"request_irq failed, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_nhi*)* @nhi_init_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhi_init_msi(%struct.tb_nhi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_nhi*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tb_nhi* %0, %struct.tb_nhi** %3, align 8
  %8 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %9 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %12 = call i32 @nhi_disable_interrupts(%struct.tb_nhi* %11)
  %13 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %14 = call i32 @nhi_enable_int_throttling(%struct.tb_nhi* %13)
  %15 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %16 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %15, i32 0, i32 2
  %17 = call i32 @ida_init(i32* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load i32, i32* @MSIX_MIN_VECS, align 4
  %20 = load i32, i32* @MSIX_MAX_VECS, align 4
  %21 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %22 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %1
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* @PCI_IRQ_MSI, align 4
  %28 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %26, i32 1, i32 1, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %25
  %34 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %35 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %34, i32 0, i32 1
  %36 = load i32, i32* @nhi_interrupt_work, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %39 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %38, i32 0, i32 0
  %40 = load %struct.pci_dev*, %struct.pci_dev** %39, align 8
  %41 = call i32 @pci_irq_vector(%struct.pci_dev* %40, i32 0)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %63

46:                                               ; preds = %33
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @nhi_msi, align 4
  %51 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %52 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %53 = call i32 @devm_request_irq(i32* %48, i32 %49, i32 %50, i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.tb_nhi* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %1
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %56, %44, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @nhi_disable_interrupts(%struct.tb_nhi*) #1

declare dso_local i32 @nhi_enable_int_throttling(%struct.tb_nhi*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.tb_nhi*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
