; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_alloc_dmb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_alloc_dmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.smcd_dmb = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISM_NR_DMBS = common dso_local global i64 0, align 8
@ISM_DMB_BIT_OFFSET = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ism_dev*, %struct.smcd_dmb*)* @ism_alloc_dmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_alloc_dmb(%struct.ism_dev* %0, %struct.smcd_dmb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ism_dev*, align 8
  %5 = alloca %struct.smcd_dmb*, align 8
  %6 = alloca i64, align 8
  store %struct.ism_dev* %0, %struct.ism_dev** %4, align 8
  store %struct.smcd_dmb* %1, %struct.smcd_dmb** %5, align 8
  %7 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %8 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @PAGE_ALIGN(i32 %9)
  %11 = load %struct.ism_dev*, %struct.ism_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i64 @dma_get_max_seg_size(i32* %14)
  %16 = icmp sgt i64 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %105

20:                                               ; preds = %2
  %21 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %22 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %20
  %26 = load %struct.ism_dev*, %struct.ism_dev** %4, align 8
  %27 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* @ISM_NR_DMBS, align 8
  %30 = load i64, i64* @ISM_DMB_BIT_OFFSET, align 8
  %31 = call i64 @find_next_zero_bit(i32 %28, i64 %29, i64 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @ISM_NR_DMBS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %105

38:                                               ; preds = %25
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %41 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %20
  %43 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %44 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ISM_DMB_BIT_OFFSET, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %50 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ism_dev*, %struct.ism_dev** %4, align 8
  %53 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @test_and_set_bit(i64 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48, %42
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %105

60:                                               ; preds = %48
  %61 = load %struct.ism_dev*, %struct.ism_dev** %4, align 8
  %62 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %66 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %69 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %68, i32 0, i32 2
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = load i32, i32* @__GFP_NOWARN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @__GFP_COMP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @__GFP_NORETRY, align 4
  %78 = or i32 %76, %77
  %79 = call i64 @dma_alloc_coherent(i32* %64, i32 %67, i32* %69, i32 %78)
  %80 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %81 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %83 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %60
  %87 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %88 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ism_dev*, %struct.ism_dev** %4, align 8
  %91 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @clear_bit(i64 %89, i32 %92)
  br label %94

94:                                               ; preds = %86, %60
  %95 = load %struct.smcd_dmb*, %struct.smcd_dmb** %5, align 8
  %96 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  br label %103

103:                                              ; preds = %100, %99
  %104 = phi i32 [ 0, %99 ], [ %102, %100 ]
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %57, %35, %17
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i64 @dma_get_max_seg_size(i32*) #1

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i64 @test_and_set_bit(i64, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
