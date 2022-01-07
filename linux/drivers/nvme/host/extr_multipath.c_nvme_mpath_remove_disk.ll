; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_mpath_remove_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_mpath_remove_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns_head = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GENHD_FL_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_mpath_remove_disk(%struct.nvme_ns_head* %0) #0 {
  %2 = alloca %struct.nvme_ns_head*, align 8
  store %struct.nvme_ns_head* %0, %struct.nvme_ns_head** %2, align 8
  %3 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %45

8:                                                ; preds = %1
  %9 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GENHD_FL_UP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %2, align 8
  %19 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @del_gendisk(%struct.TYPE_3__* %20)
  br label %22

22:                                               ; preds = %17, %8
  %23 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %2, align 8
  %24 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @blk_set_queue_dying(i32 %27)
  %29 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %2, align 8
  %30 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %29, i32 0, i32 1
  %31 = call i32 @kblockd_schedule_work(i32* %30)
  %32 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %2, align 8
  %33 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %32, i32 0, i32 1
  %34 = call i32 @flush_work(i32* %33)
  %35 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %2, align 8
  %36 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @blk_cleanup_queue(i32 %39)
  %41 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %2, align 8
  %42 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = call i32 @put_disk(%struct.TYPE_3__* %43)
  br label %45

45:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @del_gendisk(%struct.TYPE_3__*) #1

declare dso_local i32 @blk_set_queue_dying(i32) #1

declare dso_local i32 @kblockd_schedule_work(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
