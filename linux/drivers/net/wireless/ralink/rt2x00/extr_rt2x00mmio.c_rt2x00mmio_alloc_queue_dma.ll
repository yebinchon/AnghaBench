; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mmio.c_rt2x00mmio_alloc_queue_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mmio.c_rt2x00mmio_alloc_queue_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.data_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.queue_entry_priv_mmio* }
%struct.queue_entry_priv_mmio = type { i64, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.data_queue*)* @rt2x00mmio_alloc_queue_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00mmio_alloc_queue_dma(%struct.rt2x00_dev* %0, %struct.data_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.data_queue*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.data_queue* %1, %struct.data_queue** %5, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %14 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %17 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @dma_alloc_coherent(i32 %12, i32 %19, i64* %8, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %63, %27
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %31 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %36 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %41, align 8
  store %struct.queue_entry_priv_mmio* %42, %struct.queue_entry_priv_mmio** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %46 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 %44, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr i8, i8* %43, i64 %49
  %51 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %52 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %56 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul i32 %54, %57
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %53, %59
  %61 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %62 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %34
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %28

66:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
