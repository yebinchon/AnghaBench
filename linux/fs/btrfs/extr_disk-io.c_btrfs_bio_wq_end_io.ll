; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_bio_wq_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_bio_wq_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.bio = type { i32, %struct.btrfs_end_io_wq* }
%struct.btrfs_end_io_wq = type { i32, %struct.bio*, i64, %struct.btrfs_fs_info*, i32, %struct.btrfs_end_io_wq* }

@btrfs_end_io_wq_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@end_workqueue_bio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_bio_wq_end_io(%struct.btrfs_fs_info* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_end_io_wq*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @btrfs_end_io_wq_cache, align 4
  %10 = load i32, i32* @GFP_NOFS, align 4
  %11 = call %struct.btrfs_end_io_wq* @kmem_cache_alloc(i32 %9, i32 %10)
  store %struct.btrfs_end_io_wq* %11, %struct.btrfs_end_io_wq** %8, align 8
  %12 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %8, align 8
  %13 = icmp ne %struct.btrfs_end_io_wq* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.bio*, %struct.bio** %6, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 1
  %19 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %18, align 8
  %20 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %8, align 8
  %21 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %20, i32 0, i32 5
  store %struct.btrfs_end_io_wq* %19, %struct.btrfs_end_io_wq** %21, align 8
  %22 = load %struct.bio*, %struct.bio** %6, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %8, align 8
  %26 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %28 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %8, align 8
  %29 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %28, i32 0, i32 3
  store %struct.btrfs_fs_info* %27, %struct.btrfs_fs_info** %29, align 8
  %30 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %8, align 8
  %31 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %8, align 8
  %34 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %33, i32 0, i32 1
  store %struct.bio* %32, %struct.bio** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %8, align 8
  %39 = load %struct.bio*, %struct.bio** %6, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 1
  store %struct.btrfs_end_io_wq* %38, %struct.btrfs_end_io_wq** %40, align 8
  %41 = load i32, i32* @end_workqueue_bio, align 4
  %42 = load %struct.bio*, %struct.bio** %6, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %16, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.btrfs_end_io_wq* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
