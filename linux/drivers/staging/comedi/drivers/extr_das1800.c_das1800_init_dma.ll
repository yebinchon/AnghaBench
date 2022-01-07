; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_init_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_init_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.das1800_private* }
%struct.das1800_private = type { i64, i32 }
%struct.comedi_devconfig = type { i32* }

@DMA_CH5 = common dso_local global i64 0, align 8
@DMA_CH6 = common dso_local global i64 0, align 8
@DMA_CH7 = common dso_local global i64 0, align 8
@DMA_CH5_CH6 = common dso_local global i64 0, align 8
@DMA_CH6_CH7 = common dso_local global i64 0, align 8
@DMA_CH7_CH5 = common dso_local global i64 0, align 8
@DMA_BUF_SIZE = common dso_local global i32 0, align 4
@COMEDI_ISADMA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_devconfig*)* @das1800_init_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das1800_init_dma(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_devconfig*, align 8
  %5 = alloca %struct.das1800_private*, align 8
  %6 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.das1800_private*, %struct.das1800_private** %8, align 8
  store %struct.das1800_private* %9, %struct.das1800_private** %5, align 8
  %10 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 7
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 4
  %22 = or i32 %17, %21
  switch i32 %22, label %47 [
    i32 5, label %23
    i32 6, label %27
    i32 7, label %31
    i32 101, label %35
    i32 118, label %39
    i32 87, label %43
  ]

23:                                               ; preds = %2
  %24 = load i64, i64* @DMA_CH5, align 8
  %25 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %26 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %48

27:                                               ; preds = %2
  %28 = load i64, i64* @DMA_CH6, align 8
  %29 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %30 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %48

31:                                               ; preds = %2
  %32 = load i64, i64* @DMA_CH7, align 8
  %33 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %34 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %48

35:                                               ; preds = %2
  %36 = load i64, i64* @DMA_CH5_CH6, align 8
  %37 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %38 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %48

39:                                               ; preds = %2
  %40 = load i64, i64* @DMA_CH6_CH7, align 8
  %41 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %42 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %48

43:                                               ; preds = %2
  %44 = load i64, i64* @DMA_CH7_CH5, align 8
  %45 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %46 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %48

47:                                               ; preds = %2
  br label %74

48:                                               ; preds = %43, %39, %35, %31, %27, %23
  %49 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 2, i32 1
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DMA_BUF_SIZE, align 4
  %63 = load i32, i32* @COMEDI_ISADMA_READ, align 4
  %64 = call i32 @comedi_isadma_alloc(%struct.comedi_device* %49, i32 %55, i32 %58, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %66 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %68 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %48
  %72 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %73 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %47, %71, %48
  ret void
}

declare dso_local i32 @comedi_isadma_alloc(%struct.comedi_device*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
