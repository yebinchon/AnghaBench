; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_free_dma_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_free_dma_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@UDC_EP0OUT_IX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_dma_pools(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  store %struct.udc* %0, %struct.udc** %2, align 8
  %3 = load %struct.udc*, %struct.udc** %2, align 8
  %4 = getelementptr inbounds %struct.udc, %struct.udc* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.udc*, %struct.udc** %2, align 8
  %7 = getelementptr inbounds %struct.udc, %struct.udc* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.udc*, %struct.udc** %2, align 8
  %14 = getelementptr inbounds %struct.udc, %struct.udc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_pool_free(i32 %5, i32 %12, i32 %19)
  %21 = load %struct.udc*, %struct.udc** %2, align 8
  %22 = getelementptr inbounds %struct.udc, %struct.udc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.udc*, %struct.udc** %2, align 8
  %25 = getelementptr inbounds %struct.udc, %struct.udc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.udc*, %struct.udc** %2, align 8
  %32 = getelementptr inbounds %struct.udc, %struct.udc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dma_pool_free(i32 %23, i32 %30, i32 %37)
  %39 = load %struct.udc*, %struct.udc** %2, align 8
  %40 = getelementptr inbounds %struct.udc, %struct.udc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_pool_destroy(i32 %41)
  %43 = load %struct.udc*, %struct.udc** %2, align 8
  %44 = getelementptr inbounds %struct.udc, %struct.udc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_pool_destroy(i32 %45)
  ret void
}

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
