; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dev_remove_admin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dev_remove_admin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*)* @nvme_dev_remove_admin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_dev_remove_admin(%struct.nvme_dev* %0) #0 {
  %2 = alloca %struct.nvme_dev*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %2, align 8
  %3 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @blk_queue_dying(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %8
  %16 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %17 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @blk_mq_unquiesce_queue(i64 %19)
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @blk_cleanup_queue(i64 %24)
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 0
  %28 = call i32 @blk_mq_free_tag_set(i32* %27)
  br label %29

29:                                               ; preds = %15, %8, %1
  ret void
}

declare dso_local i32 @blk_queue_dying(i64) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i64) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
