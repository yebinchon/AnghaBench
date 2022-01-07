; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_cio_gp_dma_zalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_cio_gp_dma_zalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@CIO_DMA_GFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cio_gp_dma_zalloc(%struct.gen_pool* %0, %struct.device* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gen_pool*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %12 = icmp ne %struct.gen_pool* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %45

14:                                               ; preds = %3
  %15 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @gen_pool_alloc(%struct.gen_pool* %15, i64 %16)
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %33, %14
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i64 @round_up(i64 %23, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* @CIO_DMA_GFP, align 4
  %29 = call i64 @dma_alloc_coherent(%struct.device* %26, i64 %27, i32* %8, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %45

33:                                               ; preds = %22
  %34 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @gen_pool_add_virt(%struct.gen_pool* %34, i64 %35, i32 %36, i64 %37, i32 -1)
  %39 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @gen_pool_alloc(%struct.gen_pool* %39, i64 %40)
  store i64 %41, i64* %9, align 8
  br label %18

42:                                               ; preds = %18
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %42, %32, %13
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local i64 @gen_pool_alloc(%struct.gen_pool*, i64) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @gen_pool_add_virt(%struct.gen_pool*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
