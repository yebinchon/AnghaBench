; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_distance_many.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_distance_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device = type { i32* }

@CONFIG_DMA_VIRT_OPS = common dso_local global i32 0, align 4
@dma_virt_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"cannot be used for peer-to-peer DMA because the driver makes use of dma_virt_ops\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"cannot be used for peer-to-peer DMA as it is not a PCI device\0A\00", align 1
@PCI_P2PDMA_MAP_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_p2pdma_distance_many(%struct.pci_dev* %0, %struct.device** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.device**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.device** %1, %struct.device*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %106

19:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %97, %19
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %20
  %25 = load i32, i32* @CONFIG_DMA_VIRT_OPS, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.device**, %struct.device*** %7, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.device*, %struct.device** %29, i64 %31
  %33 = load %struct.device*, %struct.device** %32, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, @dma_virt_ops
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.device**, %struct.device*** %7, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.device*, %struct.device** %41, i64 %43
  %45 = load %struct.device*, %struct.device** %44, align 8
  %46 = call i32 @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %40, %37
  store i32 -1, i32* %5, align 4
  br label %106

48:                                               ; preds = %28, %24
  %49 = load %struct.device**, %struct.device*** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.device*, %struct.device** %49, i64 %51
  %53 = load %struct.device*, %struct.device** %52, align 8
  %54 = call %struct.pci_dev* @find_parent_pci_dev(%struct.device* %53)
  store %struct.pci_dev* %54, %struct.pci_dev** %11, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %56 = icmp ne %struct.pci_dev* %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.device**, %struct.device*** %7, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.device*, %struct.device** %61, i64 %63
  %65 = load %struct.device*, %struct.device** %64, align 8
  %66 = call i32 @dev_warn(%struct.device* %65, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %60, %57
  store i32 -1, i32* %5, align 4
  br label %106

68:                                               ; preds = %48
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %73 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %74 = call i32 @upstream_bridge_distance_warn(%struct.pci_dev* %72, %struct.pci_dev* %73, i32* %13)
  store i32 %74, i32* %15, align 4
  br label %79

75:                                               ; preds = %68
  %76 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %78 = call i32 @upstream_bridge_distance(%struct.pci_dev* %76, %struct.pci_dev* %77, i32* %13, i32* null, i32* null)
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %81 = call i32 @pci_dev_put(%struct.pci_dev* %80)
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @PCI_P2PDMA_MAP_NOT_SUPPORTED, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %100

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %20

100:                                              ; preds = %92, %20
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 -1, i32* %5, align 4
  br label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %103, %67, %47, %18
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.pci_dev* @find_parent_pci_dev(%struct.device*) #1

declare dso_local i32 @upstream_bridge_distance_warn(%struct.pci_dev*, %struct.pci_dev*, i32*) #1

declare dso_local i32 @upstream_bridge_distance(%struct.pci_dev*, %struct.pci_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
