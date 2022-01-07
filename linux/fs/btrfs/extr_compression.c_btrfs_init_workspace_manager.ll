; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_init_workspace_manager.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_init_workspace_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspace_manager = type { i32, i32, i32, %struct.btrfs_compress_op*, i32, i32 }
%struct.btrfs_compress_op = type { %struct.list_head* (i32)* }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"BTRFS: cannot preallocate compression workspace, will try later\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_init_workspace_manager(%struct.workspace_manager* %0, %struct.btrfs_compress_op* %1) #0 {
  %3 = alloca %struct.workspace_manager*, align 8
  %4 = alloca %struct.btrfs_compress_op*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.workspace_manager* %0, %struct.workspace_manager** %3, align 8
  store %struct.btrfs_compress_op* %1, %struct.btrfs_compress_op** %4, align 8
  %6 = load %struct.btrfs_compress_op*, %struct.btrfs_compress_op** %4, align 8
  %7 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %8 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %7, i32 0, i32 3
  store %struct.btrfs_compress_op* %6, %struct.btrfs_compress_op** %8, align 8
  %9 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %10 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %9, i32 0, i32 1
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %13 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %12, i32 0, i32 5
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %16 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %15, i32 0, i32 2
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %19 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %18, i32 0, i32 4
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %22 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %21, i32 0, i32 3
  %23 = load %struct.btrfs_compress_op*, %struct.btrfs_compress_op** %22, align 8
  %24 = getelementptr inbounds %struct.btrfs_compress_op, %struct.btrfs_compress_op* %23, i32 0, i32 0
  %25 = load %struct.list_head* (i32)*, %struct.list_head* (i32)** %24, align 8
  %26 = call %struct.list_head* %25(i32 0)
  store %struct.list_head* %26, %struct.list_head** %5, align 8
  %27 = load %struct.list_head*, %struct.list_head** %5, align 8
  %28 = call i64 @IS_ERR(%struct.list_head* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %34 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %33, i32 0, i32 2
  %35 = call i32 @atomic_set(i32* %34, i32 1)
  %36 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %37 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.list_head*, %struct.list_head** %5, align 8
  %39 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %40 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %39, i32 0, i32 1
  %41 = call i32 @list_add(%struct.list_head* %38, i32* %40)
  br label %42

42:                                               ; preds = %32, %30
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @IS_ERR(%struct.list_head*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @list_add(%struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
