; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to set DMA bit mask\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot set DMA highmem bit mask\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to set consistent DMA bit mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Cannot set consistent DMA highmem bit mask\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to set NTB device DMA bit mask\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"PCIe AER capability disabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to enable PCIe device\0A\00", align 1
@NTB_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to request resources\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"NT-function PCIe interface initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_ntb_dev*)* @idt_init_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_init_pci(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt_ntb_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %3, align 8
  %6 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @DMA_BIT_MASK(i32 64)
  %12 = call i32 @pci_set_dma_mask(%struct.pci_dev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @DMA_BIT_MASK(i32 32)
  %18 = call i32 @pci_set_dma_mask(%struct.pci_dev* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %119

26:                                               ; preds = %15
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @DMA_BIT_MASK(i32 64)
  %33 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @DMA_BIT_MASK(i32 32)
  %39 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %119

47:                                               ; preds = %36
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %30
  %52 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %53 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 @dma_get_mask(i32* %56)
  %58 = call i32 @dma_coerce_mask_and_coherent(i32* %54, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %119

66:                                               ; preds = %51
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = call i32 @dev_warn(i32* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %78

75:                                               ; preds = %66
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = call i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev* %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = call i32 @pcim_enable_device(%struct.pci_dev* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %115

87:                                               ; preds = %78
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = call i32 @pci_set_master(%struct.pci_dev* %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* @NTB_NAME, align 4
  %92 = call i32 @pcim_iomap_regions_request_all(%struct.pci_dev* %90, i32 1, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %112

99:                                               ; preds = %87
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = call i32* @pcim_iomap_table(%struct.pci_dev* %100)
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %105 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %108 = call i32 @pci_set_drvdata(%struct.pci_dev* %106, %struct.idt_ntb_dev* %107)
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  %111 = call i32 @dev_dbg(i32* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %119

112:                                              ; preds = %95
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = call i32 @pci_clear_master(%struct.pci_dev* %113)
  br label %115

115:                                              ; preds = %112, %83
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %99, %61, %42, %21
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @dma_get_mask(i32*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions_request_all(%struct.pci_dev*, i32, i32) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.idt_ntb_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
