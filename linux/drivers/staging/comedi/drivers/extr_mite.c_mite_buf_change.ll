; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_buf_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_buf_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_ring = type { i32, %struct.mite_dma_desc*, i32, i32 }
%struct.mite_dma_desc = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, %struct.comedi_async* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_async = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mite: ring buffer allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mite_buf_change(%struct.mite_ring* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mite_ring*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.mite_dma_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.mite_ring* %0, %struct.mite_ring** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 1
  %11 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  store %struct.comedi_async* %11, %struct.comedi_async** %6, align 8
  %12 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %13 = call i32 @mite_free_dma_descs(%struct.mite_ring* %12)
  %14 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = lshr i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %26 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %33 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %32, i32 0, i32 2
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.mite_dma_desc* @dma_alloc_coherent(i32 %27, i32 %31, i32* %33, i32 %34)
  store %struct.mite_dma_desc* %35, %struct.mite_dma_desc** %7, align 8
  %36 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %7, align 8
  %37 = icmp ne %struct.mite_dma_desc* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %19
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %19
  %48 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %7, align 8
  %49 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %50 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %49, i32 0, i32 1
  store %struct.mite_dma_desc* %48, %struct.mite_dma_desc** %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %53 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = call i32 @mite_init_ring_descriptors(%struct.mite_ring* %54, %struct.comedi_subdevice* %55, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %38, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @mite_free_dma_descs(%struct.mite_ring*) #1

declare dso_local %struct.mite_dma_desc* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mite_init_ring_descriptors(%struct.mite_ring*, %struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
