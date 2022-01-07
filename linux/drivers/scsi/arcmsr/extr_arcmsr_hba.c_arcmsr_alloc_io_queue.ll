; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_alloc_io_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_alloc_io_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_2__*, %struct.MessageUnit_D*, %struct.MessageUnit_B*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.MessageUnit_D = type { i32 }
%struct.MessageUnit_B = type { i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"arcmsr%d: DMA allocation failed\0A\00", align 1
@ARCMSR_MAX_HBE_DONEQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*)* @arcmsr_alloc_io_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_alloc_io_queue(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store i32 1, i32* %4, align 4
  %9 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %10 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %9, i32 0, i32 10
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %7, align 8
  %12 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %13 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %130 [
    i32 130, label %15
    i32 129, label %49
    i32 128, label %83
  ]

15:                                               ; preds = %1
  %16 = call i8* @roundup(i32 4, i32 32)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %19 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %23 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @dma_alloc_coherent(i32* %21, i32 %24, i8** %6, i32 %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %15
  %30 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %31 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %30, i32 0, i32 7
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_notice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %2, align 4
  br label %133

36:                                               ; preds = %15
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %39 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %42 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to %struct.MessageUnit_B*
  %45 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %46 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %45, i32 0, i32 9
  store %struct.MessageUnit_B* %44, %struct.MessageUnit_B** %46, align 8
  %47 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %48 = call i32 @arcmsr_hbaB_assign_regAddr(%struct.AdapterControlBlock* %47)
  br label %131

49:                                               ; preds = %1
  %50 = call i8* @roundup(i32 4, i32 32)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %53 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %57 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @dma_alloc_coherent(i32* %55, i32 %58, i8** %6, i32 %59)
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %49
  %64 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %65 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %64, i32 0, i32 7
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pr_notice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 0, i32* %2, align 4
  br label %133

70:                                               ; preds = %49
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %73 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %76 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = bitcast i8* %77 to %struct.MessageUnit_D*
  %79 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %80 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %79, i32 0, i32 8
  store %struct.MessageUnit_D* %78, %struct.MessageUnit_D** %80, align 8
  %81 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %82 = call i32 @arcmsr_hbaD_assign_regAddr(%struct.AdapterControlBlock* %81)
  br label %131

83:                                               ; preds = %1
  %84 = load i32, i32* @ARCMSR_MAX_HBE_DONEQUEUE, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = add i64 %86, 128
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @roundup(i32 %89, i32 32)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %93 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %97 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @dma_alloc_coherent(i32* %95, i32 %98, i8** %6, i32 %99)
  store i8* %100, i8** %5, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %83
  %104 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %105 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %104, i32 0, i32 7
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pr_notice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %108)
  store i32 0, i32* %2, align 4
  br label %133

110:                                              ; preds = %83
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %113 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %116 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %119 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  %120 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %121 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = udiv i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %127 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %129 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %128, i32 0, i32 3
  store i32 0, i32* %129, align 4
  br label %131

130:                                              ; preds = %1
  br label %131

131:                                              ; preds = %130, %110, %70, %36
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %103, %63, %29
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i8**, i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @arcmsr_hbaB_assign_regAddr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hbaD_assign_regAddr(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
