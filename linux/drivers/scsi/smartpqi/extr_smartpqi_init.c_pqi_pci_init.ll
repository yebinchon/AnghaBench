; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to set DMA mask\0A\00", align 1
@DRIVER_NAME_SHORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to obtain PCI resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"failed to map memory for controller registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"failed to set PCIe completion timeout\0A\00", align 1
@PCI_EXP_COMP_TIMEOUT_65_TO_210_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_pci_init(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %6 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %7 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = call i32 @pci_enable_device(%struct.TYPE_10__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %14 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %114

19:                                               ; preds = %1
  %20 = call i32 @DMA_BIT_MASK(i32 32)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %22 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dma_set_mask_and_coherent(i32* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %31 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %108

35:                                               ; preds = %19
  %36 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %37 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load i32, i32* @DRIVER_NAME_SHORT, align 4
  %40 = call i32 @pci_request_regions(%struct.TYPE_10__* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %45 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %108

49:                                               ; preds = %35
  %50 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %51 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = call i32 @pci_resource_start(%struct.TYPE_10__* %52, i32 0)
  %54 = call %struct.TYPE_11__* @ioremap_nocache(i32 %53, i32 4)
  %55 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %56 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %55, i32 0, i32 3
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %56, align 8
  %57 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %58 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %57, i32 0, i32 3
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %49
  %62 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %63 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %103

69:                                               ; preds = %49
  %70 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %71 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = call i32 @pqi_set_pcie_completion_timeout(%struct.TYPE_10__* %72, i32 6)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %78 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %103

82:                                               ; preds = %69
  %83 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %84 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = call i32 @pci_set_master(%struct.TYPE_10__* %85)
  %87 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %88 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %87, i32 0, i32 3
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %91 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %90, i32 0, i32 1
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %91, align 8
  %92 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %93 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %97 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %96, i32 0, i32 2
  store i32* %95, i32** %97, align 8
  %98 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %99 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %102 = call i32 @pci_set_drvdata(%struct.TYPE_10__* %100, %struct.pqi_ctrl_info* %101)
  store i32 0, i32* %2, align 4
  br label %114

103:                                              ; preds = %76, %61
  %104 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %105 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = call i32 @pci_release_regions(%struct.TYPE_10__* %106)
  br label %108

108:                                              ; preds = %103, %43, %29
  %109 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %110 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = call i32 @pci_disable_device(%struct.TYPE_10__* %111)
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %108, %82, %12
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @pci_enable_device(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_11__* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pqi_set_pcie_completion_timeout(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pci_set_master(%struct.TYPE_10__*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_10__*, %struct.pqi_ctrl_info*) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_10__*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
