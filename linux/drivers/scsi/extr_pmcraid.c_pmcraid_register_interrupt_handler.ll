; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_register_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_register_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32, i32, %struct.pmcraid_isr_param*, %struct.TYPE_2__, %struct.pci_dev* }
%struct.pmcraid_isr_param = type { i32, %struct.pmcraid_instance* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i64 }

@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@pmcraid_enable_msix = common dso_local global i64 0, align 8
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PMCRAID_NUM_MSIX_VECTORS = common dso_local global i32 0, align 4
@pmcraid_isr_msix = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@pmcraid_isr = common dso_local global i32 0, align 4
@PMCRAID_DRIVER_NAME = common dso_local global i32 0, align 4
@DOORBELL_INTR_MODE_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_register_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_register_interrupt_handler(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pmcraid_isr_param*, align 8
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %3, align 8
  %12 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %13 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %12, i32 0, i32 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  %15 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i64, i64* @pmcraid_enable_msix, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* @PMCRAID_NUM_MSIX_VECTORS, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %23, i32 1, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %117

31:                                               ; preds = %22
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  %37 = load i32, i32* @pmcraid_isr_msix, align 4
  store i32 %37, i32* %10, align 4
  br label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @pmcraid_isr, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %36
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %48 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %47, i32 0, i32 2
  %49 = load %struct.pmcraid_isr_param*, %struct.pmcraid_isr_param** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pmcraid_isr_param, %struct.pmcraid_isr_param* %49, i64 %51
  store %struct.pmcraid_isr_param* %52, %struct.pmcraid_isr_param** %11, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.pmcraid_isr_param*, %struct.pmcraid_isr_param** %11, align 8
  %55 = getelementptr inbounds %struct.pmcraid_isr_param, %struct.pmcraid_isr_param* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %57 = load %struct.pmcraid_isr_param*, %struct.pmcraid_isr_param** %11, align 8
  %58 = getelementptr inbounds %struct.pmcraid_isr_param, %struct.pmcraid_isr_param* %57, i32 0, i32 1
  store %struct.pmcraid_instance* %56, %struct.pmcraid_instance** %58, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @pci_irq_vector(%struct.pci_dev* %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PMCRAID_DRIVER_NAME, align 4
  %65 = load %struct.pmcraid_isr_param*, %struct.pmcraid_isr_param** %11, align 8
  %66 = call i32 @request_irq(i32 %61, i32 %62, i32 %63, i32 %64, %struct.pmcraid_isr_param* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %46
  br label %97

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %77 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %74
  %83 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %84 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* @DOORBELL_INTR_MODE_MSIX, align 4
  %86 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %87 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @iowrite32(i32 %85, i32 %89)
  %91 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %92 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ioread32(i32 %94)
  br label %96

96:                                               ; preds = %82, %74
  store i32 0, i32* %2, align 4
  br label %117

97:                                               ; preds = %69
  br label %98

98:                                               ; preds = %102, %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @pci_irq_vector(%struct.pci_dev* %103, i32 %104)
  %106 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %107 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %106, i32 0, i32 2
  %108 = load %struct.pmcraid_isr_param*, %struct.pmcraid_isr_param** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.pmcraid_isr_param, %struct.pmcraid_isr_param* %108, i64 %110
  %112 = call i32 @free_irq(i32 %105, %struct.pmcraid_isr_param* %111)
  br label %98

113:                                              ; preds = %98
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %113, %96, %29
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.pmcraid_isr_param*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @free_irq(i32, %struct.pmcraid_isr_param*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
