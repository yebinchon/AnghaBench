; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_create_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_create_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_loop_ctrl = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i64, %struct.nvme_loop_ctrl*, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@nvme_loop_mq_ops = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_loop_ctrl*)* @nvme_loop_create_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_loop_create_io_queues(%struct.nvme_loop_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_loop_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_loop_ctrl* %0, %struct.nvme_loop_ctrl** %3, align 8
  %5 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %6 = call i32 @nvme_loop_init_io_queues(%struct.nvme_loop_ctrl* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %113

11:                                               ; preds = %1
  %12 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %12, i32 0, i32 0
  %14 = call i32 @memset(%struct.TYPE_9__* %13, i32 0, i32 56)
  %15 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 8
  store i32* @nvme_loop_mq_ops, i32** %17, align 8
  %18 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 7
  store i32 %23, i32* %26, align 8
  %27 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @NUMA_NO_NODE, align 4
  %31 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 6
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %35 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = add i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %47 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %48 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  store %struct.nvme_loop_ctrl* %46, %struct.nvme_loop_ctrl** %49, align 8
  %50 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %51 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  store i64 %54, i64* %57, align 8
  %58 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %59 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %62, i32 0, i32 0
  %64 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %65 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %66, align 8
  %67 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %67, i32 0, i32 0
  %69 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_9__* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %11
  br label %109

73:                                               ; preds = %11
  %74 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %75 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %74, i32 0, i32 0
  %76 = call i32 @blk_mq_init_queue(%struct.TYPE_9__* %75)
  %77 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %78 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %81 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %88 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %4, align 4
  br label %105

92:                                               ; preds = %73
  %93 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %94 = call i32 @nvme_loop_connect_io_queues(%struct.nvme_loop_ctrl* %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %99

98:                                               ; preds = %92
  store i32 0, i32* %2, align 4
  br label %113

99:                                               ; preds = %97
  %100 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %101 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @blk_cleanup_queue(i32 %103)
  br label %105

105:                                              ; preds = %99, %86
  %106 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %107 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %106, i32 0, i32 0
  %108 = call i32 @blk_mq_free_tag_set(%struct.TYPE_9__* %107)
  br label %109

109:                                              ; preds = %105, %72
  %110 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %111 = call i32 @nvme_loop_destroy_io_queues(%struct.nvme_loop_ctrl* %110)
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %98, %9
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @nvme_loop_init_io_queues(%struct.nvme_loop_ctrl*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_mq_init_queue(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @nvme_loop_connect_io_queues(%struct.nvme_loop_ctrl*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_9__*) #1

declare dso_local i32 @nvme_loop_destroy_io_queues(%struct.nvme_loop_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
