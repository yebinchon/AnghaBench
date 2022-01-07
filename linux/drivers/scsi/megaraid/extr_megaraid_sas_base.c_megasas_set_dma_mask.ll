; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_dma_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_dma_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, i32, %struct.TYPE_7__*, %struct.pci_dev* }
%struct.TYPE_7__ = type { i32 }
%struct.pci_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64*, i64 }

@VENTURA_SERIES = common dso_local global i64 0, align 8
@IS_DMA64 = common dso_local global i64 0, align 8
@MR_CAN_HANDLE_64_BIT_DMA_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s bit DMA mask and %s bit consistent mask\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"63\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to set DMA mask\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*)* @megasas_set_dma_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_set_dma_mask(%struct.megasas_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %8 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %7, i32 0, i32 3
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %11 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VENTURA_SERIES, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i64 @DMA_BIT_MASK(i32 63)
  br label %19

17:                                               ; preds = %1
  %18 = call i64 @DMA_BIT_MASK(i32 32)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* @IS_DMA64, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i64 @DMA_BIT_MASK(i32 63)
  %27 = call i64 @dma_set_mask(%struct.TYPE_8__* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i64 @DMA_BIT_MASK(i32 32)
  %33 = call i64 @dma_set_mask_and_coherent(%struct.TYPE_8__* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %118

36:                                               ; preds = %29, %23
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @DMA_BIT_MASK(i32 63)
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %36
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @dma_set_coherent_mask(%struct.TYPE_8__* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i64 @DMA_BIT_MASK(i32 32)
  %54 = call i64 @dma_set_mask_and_coherent(%struct.TYPE_8__* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %59 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32 @megasas_readl(%struct.megasas_instance* %57, i32* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MR_CAN_HANDLE_64_BIT_DMA_OFFSET, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %118

68:                                               ; preds = %56
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = call i64 @DMA_BIT_MASK(i32 63)
  %72 = call i64 @dma_set_mask_and_coherent(%struct.TYPE_8__* %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %118

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %50, %44, %36
  br label %86

78:                                               ; preds = %19
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i64 @DMA_BIT_MASK(i32 32)
  %82 = call i64 @dma_set_mask_and_coherent(%struct.TYPE_8__* %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %118

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %77
  %87 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @DMA_BIT_MASK(i32 32)
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %95 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %94, i32 0, i32 1
  store i32 0, i32* %95, align 8
  br label %99

96:                                               ; preds = %86
  %97 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %98 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %97, i32 0, i32 1
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 0
  %102 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @DMA_BIT_MASK(i32 63)
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %111 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %112 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %117 = call i32 @dev_info(%struct.TYPE_8__* %101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %110, i8* %116)
  store i32 0, i32* %2, align 4
  br label %122

118:                                              ; preds = %84, %74, %67, %35
  %119 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = call i32 @dev_err(%struct.TYPE_8__* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %99
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @dma_set_mask(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @dma_set_mask_and_coherent(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @dma_set_coherent_mask(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @megasas_readl(%struct.megasas_instance*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
