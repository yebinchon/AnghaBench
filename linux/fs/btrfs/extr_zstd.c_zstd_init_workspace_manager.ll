; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_zstd.c_zstd_init_workspace_manager.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_zstd.c_zstd_init_workspace_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i32, i32* }
%struct.list_head = type { i32 }

@btrfs_zstd_compress = common dso_local global i32 0, align 4
@wsm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@zstd_reclaim_timer_fn = common dso_local global i32 0, align 4
@ZSTD_BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"BTRFS: cannot preallocate zstd compression workspace\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @zstd_init_workspace_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zstd_init_workspace_manager() #0 {
  %1 = alloca %struct.list_head*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @zstd_calc_ws_mem_sizes()
  store i32* @btrfs_zstd_compress, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 6), align 8
  %4 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 5))
  %5 = call i32 @init_waitqueue_head(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 4))
  %6 = load i32, i32* @zstd_reclaim_timer_fn, align 4
  %7 = call i32 @timer_setup(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 3), i32 %6, i32 0)
  %8 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 2))
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %19, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @ZSTD_BTRFS_MAX_LEVEL, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 0), align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load i32, i32* @ZSTD_BTRFS_MAX_LEVEL, align 4
  %24 = call %struct.list_head* @zstd_alloc_workspace(i32 %23)
  store %struct.list_head* %24, %struct.list_head** %1, align 8
  %25 = load %struct.list_head*, %struct.list_head** %1, align 8
  %26 = call i64 @IS_ERR(%struct.list_head* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %41

30:                                               ; preds = %22
  %31 = load i32, i32* @ZSTD_BTRFS_MAX_LEVEL, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @set_bit(i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 1))
  %34 = load %struct.list_head*, %struct.list_head** %1, align 8
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 0), align 8
  %36 = load i32, i32* @ZSTD_BTRFS_MAX_LEVEL, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = call i32 @list_add(%struct.list_head* %34, i32* %39)
  br label %41

41:                                               ; preds = %30, %28
  ret void
}

declare dso_local i32 @zstd_calc_ws_mem_sizes(...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.list_head* @zstd_alloc_workspace(i32) #1

declare dso_local i64 @IS_ERR(%struct.list_head*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_add(%struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
