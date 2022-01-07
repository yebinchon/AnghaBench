; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_pool_desc_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_pool_desc_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_pool = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @knav_pool_desc_unmap(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.knav_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.knav_pool*
  store %struct.knav_pool* %11, %struct.knav_pool** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.knav_pool*, %struct.knav_pool** %7, align 8
  %14 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @min(i32 %12, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.knav_pool*, %struct.knav_pool** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @knav_pool_desc_dma_to_virt(%struct.knav_pool* %19, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load %struct.knav_pool*, %struct.knav_pool** %7, align 8
  %23 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_sync_single_for_cpu(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @prefetch(i8* %29)
  %31 = load i8*, i8** %9, align 8
  ret i8* %31
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @knav_pool_desc_dma_to_virt(%struct.knav_pool*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @prefetch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
