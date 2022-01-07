; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_cio_gp_dma_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_cio_gp_dma_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@CIO_DMA_GFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gen_pool* @cio_gp_dma_create(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.gen_pool*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gen_pool*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call %struct.gen_pool* @gen_pool_create(i32 3, i32 -1)
  store %struct.gen_pool* %10, %struct.gen_pool** %6, align 8
  %11 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %12 = icmp ne %struct.gen_pool* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.gen_pool* null, %struct.gen_pool** %3, align 8
  br label %40

14:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @CIO_DMA_GFP, align 4
  %23 = call i8* @dma_alloc_coherent(%struct.device* %20, i32 %21, i32* %8, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  store %struct.gen_pool* %27, %struct.gen_pool** %3, align 8
  br label %40

28:                                               ; preds = %19
  %29 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call i32 @gen_pool_add_virt(%struct.gen_pool* %29, i64 %31, i32 %32, i32 %33, i32 -1)
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  store %struct.gen_pool* %39, %struct.gen_pool** %3, align 8
  br label %40

40:                                               ; preds = %38, %26, %13
  %41 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  ret %struct.gen_pool* %41
}

declare dso_local %struct.gen_pool* @gen_pool_create(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @gen_pool_add_virt(%struct.gen_pool*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
