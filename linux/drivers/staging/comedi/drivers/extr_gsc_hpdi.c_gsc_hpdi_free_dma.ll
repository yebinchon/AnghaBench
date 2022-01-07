; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.hpdi_private* }
%struct.hpdi_private = type { i32, i64, i32*, i64* }
%struct.pci_dev = type { i32 }

@NUM_DMA_BUFFERS = common dso_local global i32 0, align 4
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@NUM_DMA_DESCRIPTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @gsc_hpdi_free_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_hpdi_free_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hpdi_private*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %6)
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.hpdi_private*, %struct.hpdi_private** %9, align 8
  store %struct.hpdi_private* %10, %struct.hpdi_private** %4, align 8
  %11 = load %struct.hpdi_private*, %struct.hpdi_private** %4, align 8
  %12 = icmp ne %struct.hpdi_private* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %70

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %48, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NUM_DMA_BUFFERS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.hpdi_private*, %struct.hpdi_private** %4, align 8
  %21 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %20, i32 0, i32 3
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %19
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %32 = load %struct.hpdi_private*, %struct.hpdi_private** %4, align 8
  %33 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hpdi_private*, %struct.hpdi_private** %4, align 8
  %40 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dma_free_coherent(i32* %30, i32 %31, i64 %38, i32 %45)
  br label %47

47:                                               ; preds = %28, %19
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %15

51:                                               ; preds = %15
  %52 = load %struct.hpdi_private*, %struct.hpdi_private** %4, align 8
  %53 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* @NUM_DMA_DESCRIPTORS, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.hpdi_private*, %struct.hpdi_private** %4, align 8
  %64 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.hpdi_private*, %struct.hpdi_private** %4, align 8
  %67 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_free_coherent(i32* %58, i32 %62, i64 %65, i32 %68)
  br label %70

70:                                               ; preds = %13, %56, %51
  ret void
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
