; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, i32, %struct.TYPE_2__, i32*, i32, %struct.nvme_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_queue = type { i32, i32, i32, i32, i64, i32*, i64, i32, i32, %struct.nvme_dev*, i32 }

@NVME_ADM_SQES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, i32, i32)* @nvme_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_alloc_queue(%struct.nvme_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvme_queue*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %10 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %9, i32 0, i32 5
  %11 = load %struct.nvme_queue*, %struct.nvme_queue** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %11, i64 %13
  store %struct.nvme_queue* %14, %struct.nvme_queue** %8, align 8
  %15 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %16 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  br label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @NVME_ADM_SQES, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %33 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %34 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %37 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %39 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %42 = call i32 @CQ_SIZE(%struct.nvme_queue* %41)
  %43 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %44 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %43, i32 0, i32 3
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i64 @dma_alloc_coherent(i32 %40, i32 %42, i32* %44, i32 %45)
  %47 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %48 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %50 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %31
  br label %110

54:                                               ; preds = %31
  %55 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %56 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @nvme_alloc_sq_cmds(%struct.nvme_dev* %55, %struct.nvme_queue* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %96

61:                                               ; preds = %54
  %62 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %63 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %64 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %63, i32 0, i32 9
  store %struct.nvme_dev* %62, %struct.nvme_dev** %64, align 8
  %65 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %66 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %65, i32 0, i32 8
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %69 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %68, i32 0, i32 7
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %72 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %71, i32 0, i32 6
  store i64 0, i64* %72, align 8
  %73 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %74 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %76 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %78, 2
  %80 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %81 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %79, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %77, i64 %84
  %86 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %87 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %86, i32 0, i32 5
  store i32* %85, i32** %87, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %90 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %92 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  store i32 0, i32* %4, align 4
  br label %113

96:                                               ; preds = %60
  %97 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %98 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %101 = call i32 @CQ_SIZE(%struct.nvme_queue* %100)
  %102 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %103 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %107 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dma_free_coherent(i32 %99, i32 %101, i8* %105, i32 %108)
  br label %110

110:                                              ; preds = %96, %53
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %61, %21
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @CQ_SIZE(%struct.nvme_queue*) #1

declare dso_local i64 @nvme_alloc_sq_cmds(%struct.nvme_dev*, %struct.nvme_queue*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
