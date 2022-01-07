; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.AdapterControlBlock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@msix_enable = common dso_local global i64 0, align 8
@ARCMST_NUM_MSIX_VECTORS = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"arcmsr%d: msi-x enabled\0A\00", align 1
@msi_enable = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"msi enabled\0A\00", align 1
@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@arcmsr_do_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"arcmsr\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"arcmsr%d: request_irq =%d failed!\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.AdapterControlBlock*)* @arcmsr_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_request_irq(%struct.pci_dev* %0, %struct.AdapterControlBlock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.AdapterControlBlock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.AdapterControlBlock* %1, %struct.AdapterControlBlock** %5, align 8
  %9 = load i64, i64* @msix_enable, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = load i32, i32* @ARCMST_NUM_MSIX_VECTORS, align 4
  %15 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %16 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %13, i32 1, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %21 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i64 0, i64* %6, align 8
  br label %52

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* @msi_enable, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* @PCI_IRQ_MSI, align 4
  %33 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %31, i32 1, i32 1, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %50

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %27
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  %44 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %42, i32 1, i32 1, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %100

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %50, %19
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %55 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %80, %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @pci_irq_vector(%struct.pci_dev* %61, i32 %62)
  %64 = load i32, i32* @arcmsr_do_interrupt, align 4
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %67 = call i64 @request_irq(i32 %63, i32 %64, i64 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.AdapterControlBlock* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %71 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @pci_irq_vector(%struct.pci_dev* %75, i32 %76)
  %78 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %77)
  br label %85

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %56

83:                                               ; preds = %56
  %84 = load i32, i32* @SUCCESS, align 4
  store i32 %84, i32* %3, align 4
  br label %100

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %90, %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %8, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @pci_irq_vector(%struct.pci_dev* %91, i32 %92)
  %94 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %95 = call i32 @free_irq(i32 %93, %struct.AdapterControlBlock* %94)
  br label %86

96:                                               ; preds = %86
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %97)
  %99 = load i32, i32* @FAILED, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %83, %47
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @request_irq(i32, i32, i64, i8*, %struct.AdapterControlBlock*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.AdapterControlBlock*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
