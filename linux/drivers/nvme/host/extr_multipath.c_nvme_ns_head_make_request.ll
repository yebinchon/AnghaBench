; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_ns_head_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_ns_head_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.nvme_ns_head* }
%struct.nvme_ns_head = type { i32, i32, i32, i32 }
%struct.bio = type { i32, %struct.TYPE_6__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.nvme_ns = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }

@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@REQ_NVME_MPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no usable path - requeuing I/O\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"no available path - failing I/O\0A\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @nvme_ns_head_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ns_head_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.nvme_ns_head*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nvme_ns*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %11, align 8
  store %struct.nvme_ns_head* %12, %struct.nvme_ns_head** %5, align 8
  %13 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.device* @disk_to_dev(i32 %15)
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %19 = call i32 @blk_queue_split(%struct.request_queue* %18, %struct.bio** %4)
  %20 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %21 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %20, i32 0, i32 0
  %22 = call i32 @srcu_read_lock(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %24 = call %struct.nvme_ns* @nvme_find_path(%struct.nvme_ns_head* %23)
  store %struct.nvme_ns* %24, %struct.nvme_ns** %7, align 8
  %25 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  %26 = call i64 @likely(%struct.nvme_ns* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %2
  %29 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  %30 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 2
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  %34 = load i32, i32* @REQ_NVME_MPATH, align 4
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  %46 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @disk_devt(i32 %49)
  %51 = load %struct.bio*, %struct.bio** %4, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @trace_block_bio_remap(i32 %43, %struct.bio* %44, i32 %50, i32 %54)
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = call i32 @direct_make_request(%struct.bio* %56)
  store i32 %57, i32* %8, align 4
  br label %84

58:                                               ; preds = %2
  %59 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %60 = call i64 @nvme_available_path(%struct.nvme_ns_head* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @dev_warn_ratelimited(%struct.device* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %66 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %65, i32 0, i32 1
  %67 = call i32 @spin_lock_irq(i32* %66)
  %68 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %69 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %68, i32 0, i32 2
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = call i32 @bio_list_add(i32* %69, %struct.bio* %70)
  %72 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %73 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock_irq(i32* %73)
  br label %83

75:                                               ; preds = %58
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = call i32 @dev_warn_ratelimited(%struct.device* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @BLK_STS_IOERR, align 4
  %79 = load %struct.bio*, %struct.bio** %4, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.bio*, %struct.bio** %4, align 8
  %82 = call i32 @bio_endio(%struct.bio* %81)
  br label %83

83:                                               ; preds = %75, %62
  br label %84

84:                                               ; preds = %83, %28
  %85 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %86 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %85, i32 0, i32 0
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @srcu_read_unlock(i32* %86, i32 %87)
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local %struct.device* @disk_to_dev(i32) #1

declare dso_local i32 @blk_queue_split(%struct.request_queue*, %struct.bio**) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.nvme_ns* @nvme_find_path(%struct.nvme_ns_head*) #1

declare dso_local i64 @likely(%struct.nvme_ns*) #1

declare dso_local i32 @trace_block_bio_remap(i32, %struct.bio*, i32, i32) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @direct_make_request(%struct.bio*) #1

declare dso_local i64 @nvme_available_path(%struct.nvme_ns_head*) #1

declare dso_local i32 @dev_warn_ratelimited(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
