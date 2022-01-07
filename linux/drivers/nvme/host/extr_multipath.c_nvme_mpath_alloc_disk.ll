; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_mpath_alloc_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_mpath_alloc_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nvme_ns_head = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.request_queue*, %struct.nvme_ns_head*, i32* }
%struct.request_queue = type { i32, %struct.nvme_ns_head* }

@nvme_requeue_work = common dso_local global i32 0, align 4
@multipath = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nvme_ns_head_make_request = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@NVME_CTRL_VWC_PRESENT = common dso_local global i32 0, align 4
@nvme_ns_head_ops = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"nvme%dn%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_mpath_alloc_disk(%struct.nvme_ctrl* %0, %struct.nvme_ns_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca %struct.nvme_ns_head*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store %struct.nvme_ns_head* %1, %struct.nvme_ns_head** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %9 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %8, i32 0, i32 5
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %11, i32 0, i32 4
  %13 = call i32 @bio_list_init(i32* %12)
  %14 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %15 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %14, i32 0, i32 3
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %18 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %17, i32 0, i32 2
  %19 = load i32, i32* @nvme_requeue_work, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @multipath, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %2
  store i32 0, i32* %3, align 4
  br label %116

32:                                               ; preds = %28
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.request_queue* @blk_alloc_queue_node(i32 %33, i32 %36)
  store %struct.request_queue* %37, %struct.request_queue** %6, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %39 = icmp ne %struct.request_queue* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %113

41:                                               ; preds = %32
  %42 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %43 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %43, i32 0, i32 1
  store %struct.nvme_ns_head* %42, %struct.nvme_ns_head** %44, align 8
  %45 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %46 = load i32, i32* @nvme_ns_head_make_request, align 4
  %47 = call i32 @blk_queue_make_request(%struct.request_queue* %45, i32 %46)
  %48 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %49 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %50 = call i32 @blk_queue_flag_set(i32 %48, %struct.request_queue* %49)
  %51 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %52 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %51, i32 512)
  %53 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %53, i32 0, i32 0
  %55 = call i32 @blk_set_stacking_limits(i32* %54)
  %56 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %57 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NVME_CTRL_VWC_PRESENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %41
  %64 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @blk_queue_write_cache(%struct.request_queue* %64, i32 %65, i32 %66)
  %68 = call %struct.TYPE_4__* @alloc_disk(i32 0)
  %69 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %70 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %69, i32 0, i32 1
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %72 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %63
  br label %110

76:                                               ; preds = %63
  %77 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %78 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i32* @nvme_ns_head_ops, i32** %80, align 8
  %81 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %82 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %83 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store %struct.nvme_ns_head* %81, %struct.nvme_ns_head** %85, align 8
  %86 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %87 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %88 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store %struct.request_queue* %86, %struct.request_queue** %90, align 8
  %91 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %92 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %93 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %97 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %102 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %107 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @sprintf(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %108)
  store i32 0, i32* %3, align 4
  br label %116

110:                                              ; preds = %75
  %111 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %112 = call i32 @blk_cleanup_queue(%struct.request_queue* %111)
  br label %113

113:                                              ; preds = %110, %40
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %113, %76, %31
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.request_queue* @blk_alloc_queue_node(i32, i32) #1

declare dso_local i32 @blk_queue_make_request(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_set_stacking_limits(i32*) #1

declare dso_local i32 @blk_queue_write_cache(%struct.request_queue*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @alloc_disk(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
