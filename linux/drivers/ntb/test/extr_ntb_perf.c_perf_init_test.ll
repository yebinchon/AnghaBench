; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_init_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_init_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_thread = type { i32, i32, i32, i32, %struct.perf_ctx* }
%struct.perf_ctx = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@use_dma = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@perf_dma_filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%d: Failed to get DMA channel\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_thread*)* @perf_init_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_init_test(%struct.perf_thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_thread*, align 8
  %4 = alloca %struct.perf_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_thread* %0, %struct.perf_thread** %3, align 8
  %6 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %7 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %6, i32 0, i32 4
  %8 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  store %struct.perf_ctx* %8, %struct.perf_ctx** %4, align 8
  %9 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @dev_to_node(i32* %18)
  %20 = call i32 @kmalloc_node(i32 %13, i32 %14, i32 %19)
  %21 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %22 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %24 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %84

30:                                               ; preds = %1
  %31 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %32 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_random_bytes(i32 %33, i32 %38)
  %40 = load i32, i32* @use_dma, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %84

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dma_cap_zero(i32 %44)
  %46 = load i32, i32* @DMA_MEMCPY, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dma_cap_set(i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @perf_dma_filter, align 4
  %51 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %52 = call i32 @dma_request_channel(i32 %49, i32 %50, %struct.perf_ctx* %51)
  %53 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %54 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %56 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %43
  %60 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %65 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %68, i32 0, i32 1
  %70 = call i32 @atomic_dec(i32* %69)
  %71 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %71, i32 0, i32 0
  %73 = call i32 @wake_up(i32* %72)
  %74 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %75 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @kfree(i32 %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %84

80:                                               ; preds = %43
  %81 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %82 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %81, i32 0, i32 0
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %59, %42, %27
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_channel(i32, i32, %struct.perf_ctx*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
