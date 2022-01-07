; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_kdesc_fill_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_kdesc_fill_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_pool = type { i32, i32, i32, i32, i32, %struct.knav_region* }
%struct.knav_region = type { i32, i64 }

@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knav_pool*)* @kdesc_fill_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdesc_fill_pool(%struct.knav_pool* %0) #0 {
  %2 = alloca %struct.knav_pool*, align 8
  %3 = alloca %struct.knav_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.knav_pool* %0, %struct.knav_pool** %2, align 8
  %8 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %9 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %8, i32 0, i32 5
  %10 = load %struct.knav_region*, %struct.knav_region** %9, align 8
  store %struct.knav_region* %10, %struct.knav_region** %3, align 8
  %11 = load %struct.knav_region*, %struct.knav_region** %3, align 8
  %12 = getelementptr inbounds %struct.knav_region, %struct.knav_region* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %15 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %56, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %19 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %16
  %23 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %24 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.knav_region*, %struct.knav_region** %3, align 8
  %29 = getelementptr inbounds %struct.knav_region, %struct.knav_region* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.knav_region*, %struct.knav_region** %3, align 8
  %32 = getelementptr inbounds %struct.knav_region, %struct.knav_region* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  store i64 %37, i64* %6, align 8
  %38 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %39 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %42 = call i32 @ALIGN(i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %44 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i32 @dma_sync_single_for_device(i32 %45, i64 %46, i32 %47, i32 %48)
  %50 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %51 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @knav_queue_push(i32 %52, i64 %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %22
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %16

59:                                               ; preds = %16
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local i32 @knav_queue_push(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
