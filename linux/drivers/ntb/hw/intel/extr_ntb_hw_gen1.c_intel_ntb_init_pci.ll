; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_init_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_init_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@NTB_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot DMA highmem\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot DMA consistent highmem\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ntb_dev*, %struct.pci_dev*)* @intel_ntb_init_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_init_pci(%struct.intel_ntb_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_ntb_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %8 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %4, align 8
  %9 = call i32 @pci_set_drvdata(%struct.pci_dev* %7, %struct.intel_ntb_dev* %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = call i32 @pci_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %100

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load i32, i32* @NTB_NAME, align 4
  %18 = call i32 @pci_request_regions(%struct.pci_dev* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %97

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = call i32 @pci_set_master(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = call i32 @DMA_BIT_MASK(i32 64)
  %27 = call i32 @pci_set_dma_mask(%struct.pci_dev* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i32 @DMA_BIT_MASK(i32 32)
  %33 = call i32 @pci_set_dma_mask(%struct.pci_dev* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %92

37:                                               ; preds = %30
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %22
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = call i32 @DMA_BIT_MASK(i32 64)
  %44 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = call i32 @DMA_BIT_MASK(i32 32)
  %50 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %92

54:                                               ; preds = %47
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 @dev_warn(i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %41
  %59 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %4, align 8
  %60 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 @dma_get_mask(i32* %63)
  %65 = call i32 @dma_coerce_mask_and_coherent(i32* %61, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %92

69:                                               ; preds = %58
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = call i32 @pci_iomap(%struct.pci_dev* %70, i32 0, i32 0)
  %72 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %4, align 8
  %73 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %4, align 8
  %75 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %91

81:                                               ; preds = %69
  %82 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %4, align 8
  %83 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %4, align 8
  %86 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %88 = call i32 @pci_resource_start(%struct.pci_dev* %87, i32 0)
  %89 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %4, align 8
  %90 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %3, align 4
  br label %104

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %68, %53, %36
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = call i32 @pci_clear_master(%struct.pci_dev* %93)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %96 = call i32 @pci_release_regions(%struct.pci_dev* %95)
  br label %97

97:                                               ; preds = %92, %21
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = call i32 @pci_disable_device(%struct.pci_dev* %98)
  br label %100

100:                                              ; preds = %97, %14
  %101 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %102 = call i32 @pci_set_drvdata(%struct.pci_dev* %101, %struct.intel_ntb_dev* null)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %81
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.intel_ntb_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @dma_get_mask(i32*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
