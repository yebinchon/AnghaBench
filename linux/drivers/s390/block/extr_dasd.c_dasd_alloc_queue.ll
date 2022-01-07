; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.dasd_block* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32* }

@dasd_mq_ops = common dso_local global i32 0, align 4
@nr_hw_queues = common dso_local global i32 0, align 4
@queue_depth = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*)* @dasd_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_alloc_queue(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %5 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %6 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i32* @dasd_mq_ops, i32** %7, align 8
  %8 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 4, i32* %10, align 8
  %11 = load i32, i32* @nr_hw_queues, align 4
  %12 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @queue_depth, align 4
  %16 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %20 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @NUMA_NO_NODE, align 4
  %24 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %25 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %28 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %27, i32 0, i32 1
  %29 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_7__* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %56

34:                                               ; preds = %1
  %35 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %36 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %35, i32 0, i32 1
  %37 = call %struct.TYPE_6__* @blk_mq_init_queue(%struct.TYPE_7__* %36)
  %38 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %39 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %38, i32 0, i32 0
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %41 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i64 @IS_ERR(%struct.TYPE_6__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %47 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call i32 @PTR_ERR(%struct.TYPE_6__* %48)
  store i32 %49, i32* %2, align 4
  br label %56

50:                                               ; preds = %34
  %51 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %52 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %53 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store %struct.dasd_block* %51, %struct.dasd_block** %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %45, %32
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_6__* @blk_mq_init_queue(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
