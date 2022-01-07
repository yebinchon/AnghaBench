; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_wq_run_delayed_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_wq_run_delayed_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_root = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_async_delayed_work = type { i32, i32, %struct.btrfs_delayed_root* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btrfs_delayed_meta_helper = common dso_local global i32 0, align 4
@btrfs_async_run_delayed_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_delayed_root*, %struct.btrfs_fs_info*, i32)* @btrfs_wq_run_delayed_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_wq_run_delayed_node(%struct.btrfs_delayed_root* %0, %struct.btrfs_fs_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_delayed_root*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_async_delayed_work*, align 8
  store %struct.btrfs_delayed_root* %0, %struct.btrfs_delayed_root** %5, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.btrfs_async_delayed_work* @kmalloc(i32 16, i32 %9)
  store %struct.btrfs_async_delayed_work* %10, %struct.btrfs_async_delayed_work** %8, align 8
  %11 = load %struct.btrfs_async_delayed_work*, %struct.btrfs_async_delayed_work** %8, align 8
  %12 = icmp ne %struct.btrfs_async_delayed_work* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %5, align 8
  %18 = load %struct.btrfs_async_delayed_work*, %struct.btrfs_async_delayed_work** %8, align 8
  %19 = getelementptr inbounds %struct.btrfs_async_delayed_work, %struct.btrfs_async_delayed_work* %18, i32 0, i32 2
  store %struct.btrfs_delayed_root* %17, %struct.btrfs_delayed_root** %19, align 8
  %20 = load %struct.btrfs_async_delayed_work*, %struct.btrfs_async_delayed_work** %8, align 8
  %21 = getelementptr inbounds %struct.btrfs_async_delayed_work, %struct.btrfs_async_delayed_work* %20, i32 0, i32 1
  %22 = load i32, i32* @btrfs_delayed_meta_helper, align 4
  %23 = load i32, i32* @btrfs_async_run_delayed_root, align 4
  %24 = call i32 @btrfs_init_work(i32* %21, i32 %22, i32 %23, i32* null, i32* null)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.btrfs_async_delayed_work*, %struct.btrfs_async_delayed_work** %8, align 8
  %27 = getelementptr inbounds %struct.btrfs_async_delayed_work, %struct.btrfs_async_delayed_work* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.btrfs_async_delayed_work*, %struct.btrfs_async_delayed_work** %8, align 8
  %32 = getelementptr inbounds %struct.btrfs_async_delayed_work, %struct.btrfs_async_delayed_work* %31, i32 0, i32 1
  %33 = call i32 @btrfs_queue_work(i32 %30, i32* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %16, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.btrfs_async_delayed_work* @kmalloc(i32, i32) #1

declare dso_local i32 @btrfs_init_work(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @btrfs_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
