; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_wq_submit_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_wq_submit_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.bio = type { i32 }
%struct.async_submit_bio = type { i32, i32, i64, i32, i32*, %struct.bio*, i8* }

@GFP_NOFS = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@btrfs_worker_helper = common dso_local global i32 0, align 4
@run_one_async_start = common dso_local global i32 0, align 4
@run_one_async_done = common dso_local global i32 0, align 4
@run_one_async_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_wq_submit_bio(%struct.btrfs_fs_info* %0, %struct.bio* %1, i32 %2, i64 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.async_submit_bio*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %9, align 8
  store %struct.bio* %1, %struct.bio** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = call %struct.async_submit_bio* @kmalloc(i32 48, i32 %17)
  store %struct.async_submit_bio* %18, %struct.async_submit_bio** %16, align 8
  %19 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %20 = icmp ne %struct.async_submit_bio* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %22, i32* %8, align 4
  br label %64

23:                                               ; preds = %7
  %24 = load i8*, i8** %14, align 8
  %25 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %26 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load %struct.bio*, %struct.bio** %10, align 8
  %28 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %29 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %28, i32 0, i32 5
  store %struct.bio* %27, %struct.bio** %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %32 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %35 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %37 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %36, i32 0, i32 1
  %38 = load i32, i32* @btrfs_worker_helper, align 4
  %39 = load i32, i32* @run_one_async_start, align 4
  %40 = load i32, i32* @run_one_async_done, align 4
  %41 = load i32, i32* @run_one_async_free, align 4
  %42 = call i32 @btrfs_init_work(i32* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %45 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %47 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.bio*, %struct.bio** %10, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @op_is_sync(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %23
  %54 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %55 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %54, i32 0, i32 1
  %56 = call i32 @btrfs_set_work_high_priority(i32* %55)
  br label %57

57:                                               ; preds = %53, %23
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %59 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.async_submit_bio*, %struct.async_submit_bio** %16, align 8
  %62 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %61, i32 0, i32 1
  %63 = call i32 @btrfs_queue_work(i32 %60, i32* %62)
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %57, %21
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local %struct.async_submit_bio* @kmalloc(i32, i32) #1

declare dso_local i32 @btrfs_init_work(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @op_is_sync(i32) #1

declare dso_local i32 @btrfs_set_work_high_priority(i32*) #1

declare dso_local i32 @btrfs_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
