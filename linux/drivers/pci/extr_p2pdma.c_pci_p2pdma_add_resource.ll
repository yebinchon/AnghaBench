; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_add_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_add_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_p2pdma_pagemap = type { i64, %struct.pci_dev*, %struct.dev_pagemap }
%struct.dev_pagemap = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEMORY_DEVICE_PCI_P2PDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"added peer-to-peer DMA memory %pR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_p2pdma_add_resource(%struct.pci_dev* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_p2pdma_pagemap*, align 8
  %11 = alloca %struct.dev_pagemap*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @pci_resource_flags(%struct.pci_dev* %14, i32 %15)
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %169

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @pci_resource_len(%struct.pci_dev* %25, i32 %26)
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %169

32:                                               ; preds = %23
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @pci_resource_len(%struct.pci_dev* %36, i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %42, %43
  %45 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @pci_resource_len(%struct.pci_dev* %45, i32 %46)
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %169

52:                                               ; preds = %41
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %59 = call i32 @pci_p2pdma_setup(%struct.pci_dev* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %169

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.pci_p2pdma_pagemap* @devm_kzalloc(i32* %67, i32 48, i32 %68)
  store %struct.pci_p2pdma_pagemap* %69, %struct.pci_p2pdma_pagemap** %10, align 8
  %70 = load %struct.pci_p2pdma_pagemap*, %struct.pci_p2pdma_pagemap** %10, align 8
  %71 = icmp ne %struct.pci_p2pdma_pagemap* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %169

75:                                               ; preds = %65
  %76 = load %struct.pci_p2pdma_pagemap*, %struct.pci_p2pdma_pagemap** %10, align 8
  %77 = getelementptr inbounds %struct.pci_p2pdma_pagemap, %struct.pci_p2pdma_pagemap* %76, i32 0, i32 2
  store %struct.dev_pagemap* %77, %struct.dev_pagemap** %11, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @pci_resource_start(%struct.pci_dev* %78, i32 %79)
  %81 = load i64, i64* %9, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %84 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  %86 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %87 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %89, %90
  %92 = sub i64 %91, 1
  %93 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %94 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i64 %92, i64* %95, align 8
  %96 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @pci_resource_flags(%struct.pci_dev* %96, i32 %97)
  %99 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %100 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* @MEMORY_DEVICE_PCI_P2PDMA, align 4
  %103 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %104 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %106 = load %struct.pci_p2pdma_pagemap*, %struct.pci_p2pdma_pagemap** %10, align 8
  %107 = getelementptr inbounds %struct.pci_p2pdma_pagemap, %struct.pci_p2pdma_pagemap* %106, i32 0, i32 1
  store %struct.pci_dev* %105, %struct.pci_dev** %107, align 8
  %108 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i64 @pci_bus_address(%struct.pci_dev* %108, i32 %109)
  %111 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i64 @pci_resource_start(%struct.pci_dev* %111, i32 %112)
  %114 = sub nsw i64 %110, %113
  %115 = load %struct.pci_p2pdma_pagemap*, %struct.pci_p2pdma_pagemap** %10, align 8
  %116 = getelementptr inbounds %struct.pci_p2pdma_pagemap, %struct.pci_p2pdma_pagemap* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %120 = call i8* @devm_memremap_pages(i32* %118, %struct.dev_pagemap* %119)
  store i8* %120, i8** %12, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = call i64 @IS_ERR(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %75
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @PTR_ERR(i8* %125)
  store i32 %126, i32* %13, align 4
  br label %163

127:                                              ; preds = %75
  %128 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %12, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i64 @pci_bus_address(%struct.pci_dev* %135, i32 %136)
  %138 = load i64, i64* %9, align 8
  %139 = add nsw i64 %137, %138
  %140 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %141 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %140, i32 0, i32 0
  %142 = call i32 @resource_size(%struct.TYPE_5__* %141)
  %143 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 0
  %145 = call i32 @dev_to_node(i32* %144)
  %146 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %147 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @gen_pool_add_owner(i32 %132, i64 %134, i64 %139, i32 %142, i32 %145, i32 %148)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %127
  br label %158

153:                                              ; preds = %127
  %154 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %155 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %156 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %155, i32 0, i32 0
  %157 = call i32 @pci_info(%struct.pci_dev* %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %156)
  store i32 0, i32* %5, align 4
  br label %169

158:                                              ; preds = %152
  %159 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 0
  %161 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %162 = call i32 @devm_memunmap_pages(i32* %160, %struct.dev_pagemap* %161)
  br label %163

163:                                              ; preds = %158, %124
  %164 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 0
  %166 = load %struct.dev_pagemap*, %struct.dev_pagemap** %11, align 8
  %167 = call i32 @devm_kfree(i32* %165, %struct.dev_pagemap* %166)
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %163, %153, %72, %62, %49, %29, %20
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_p2pdma_setup(%struct.pci_dev*) #1

declare dso_local %struct.pci_p2pdma_pagemap* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_bus_address(%struct.pci_dev*, i32) #1

declare dso_local i8* @devm_memremap_pages(i32*, %struct.dev_pagemap*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @gen_pool_add_owner(i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @devm_memunmap_pages(i32*, %struct.dev_pagemap*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.dev_pagemap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
