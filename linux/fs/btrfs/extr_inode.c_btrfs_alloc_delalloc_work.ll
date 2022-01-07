; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_alloc_delalloc_work.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_alloc_delalloc_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delalloc_work = type { i32, %struct.inode*, i32, i32 }
%struct.inode = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@btrfs_flush_delalloc_helper = common dso_local global i32 0, align 4
@btrfs_run_delalloc_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_delalloc_work* (%struct.inode*)* @btrfs_alloc_delalloc_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_delalloc_work* @btrfs_alloc_delalloc_work(%struct.inode* %0) #0 {
  %2 = alloca %struct.btrfs_delalloc_work*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_delalloc_work*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load i32, i32* @GFP_NOFS, align 4
  %6 = call %struct.btrfs_delalloc_work* @kmalloc(i32 24, i32 %5)
  store %struct.btrfs_delalloc_work* %6, %struct.btrfs_delalloc_work** %4, align 8
  %7 = load %struct.btrfs_delalloc_work*, %struct.btrfs_delalloc_work** %4, align 8
  %8 = icmp ne %struct.btrfs_delalloc_work* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.btrfs_delalloc_work* null, %struct.btrfs_delalloc_work** %2, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.btrfs_delalloc_work*, %struct.btrfs_delalloc_work** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_delalloc_work, %struct.btrfs_delalloc_work* %11, i32 0, i32 3
  %13 = call i32 @init_completion(i32* %12)
  %14 = load %struct.btrfs_delalloc_work*, %struct.btrfs_delalloc_work** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_delalloc_work, %struct.btrfs_delalloc_work* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = load %struct.btrfs_delalloc_work*, %struct.btrfs_delalloc_work** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_delalloc_work, %struct.btrfs_delalloc_work* %18, i32 0, i32 1
  store %struct.inode* %17, %struct.inode** %19, align 8
  %20 = load %struct.btrfs_delalloc_work*, %struct.btrfs_delalloc_work** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_delalloc_work, %struct.btrfs_delalloc_work* %20, i32 0, i32 0
  %22 = load i32, i32* @btrfs_flush_delalloc_helper, align 4
  %23 = load i32, i32* @btrfs_run_delalloc_work, align 4
  %24 = call i32 @btrfs_init_work(i32* %21, i32 %22, i32 %23, i32* null, i32* null)
  %25 = load %struct.btrfs_delalloc_work*, %struct.btrfs_delalloc_work** %4, align 8
  store %struct.btrfs_delalloc_work* %25, %struct.btrfs_delalloc_work** %2, align 8
  br label %26

26:                                               ; preds = %10, %9
  %27 = load %struct.btrfs_delalloc_work*, %struct.btrfs_delalloc_work** %2, align 8
  ret %struct.btrfs_delalloc_work* %27
}

declare dso_local %struct.btrfs_delalloc_work* @kmalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @btrfs_init_work(i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
