; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_cb_pcidas64_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_cb_pcidas64_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i32, i64, i32, i64, i32*, i64*, i32*, i64* }
%struct.pcidas64_board = type { i32 }
%struct.pci_dev = type { i32 }

@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@AO_DMA_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @cb_pcidas64_free_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_pcidas64_free_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcidas64_board*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pcidas64_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.pcidas64_board*, %struct.pcidas64_board** %8, align 8
  store %struct.pcidas64_board* %9, %struct.pcidas64_board** %3, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.pcidas64_private*, %struct.pcidas64_private** %13, align 8
  store %struct.pcidas64_private* %14, %struct.pcidas64_private** %5, align 8
  %15 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %16 = icmp ne %struct.pcidas64_private* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %132

18:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %53, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pcidas64_board*, %struct.pcidas64_board** %3, align 8
  %22 = call i32 @ai_dma_ring_count(%struct.pcidas64_board* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %26 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %25, i32 0, i32 7
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %24
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %37 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %38 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %37, i32 0, i32 7
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %45 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dma_free_coherent(i32* %35, i32 %36, i64 %43, i32 %50)
  br label %52

52:                                               ; preds = %33, %24
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %19

56:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %90, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %63 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %62, i32 0, i32 5
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %61
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %74 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %75 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %74, i32 0, i32 5
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %82 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dma_free_coherent(i32* %72, i32 %73, i64 %80, i32 %87)
  br label %89

89:                                               ; preds = %70, %61
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %57

93:                                               ; preds = %57
  %94 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %95 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load %struct.pcidas64_board*, %struct.pcidas64_board** %3, align 8
  %102 = call i32 @ai_dma_ring_count(%struct.pcidas64_board* %101)
  %103 = sext i32 %102 to i64
  %104 = mul i64 4, %103
  %105 = trunc i64 %104 to i32
  %106 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %107 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %110 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dma_free_coherent(i32* %100, i32 %105, i64 %108, i32 %111)
  br label %113

113:                                              ; preds = %98, %93
  %114 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %115 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 4, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %126 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %129 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dma_free_coherent(i32* %120, i32 %124, i64 %127, i32 %130)
  br label %132

132:                                              ; preds = %17, %118, %113
  ret void
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i32 @ai_dma_ring_count(%struct.pcidas64_board*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
