; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_init_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_init_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i64, %struct.nvme_queue* }
%struct.nvme_queue = type { i64* }
%struct.nvme_dev = type { %struct.TYPE_2__, %struct.nvme_queue* }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, i8*, i32)* @nvme_init_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_init_hctx(%struct.blk_mq_hw_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_dev*, align 8
  %8 = alloca %struct.nvme_queue*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nvme_dev*
  store %struct.nvme_dev* %10, %struct.nvme_dev** %7, align 8
  %11 = load %struct.nvme_dev*, %struct.nvme_dev** %7, align 8
  %12 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %11, i32 0, i32 1
  %13 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %13, i64 %16
  store %struct.nvme_queue* %17, %struct.nvme_queue** %8, align 8
  %18 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %19 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %3
  %23 = load %struct.nvme_dev*, %struct.nvme_dev** %7, align 8
  %24 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %31 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %30, i32 0, i32 0
  store i64* %29, i64** %31, align 8
  br label %32

32:                                               ; preds = %22, %3
  %33 = load %struct.nvme_dev*, %struct.nvme_dev** %7, align 8
  %34 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %48 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %48, i32 0, i32 1
  store %struct.nvme_queue* %47, %struct.nvme_queue** %49, align 8
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
