; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_tree_mod_dont_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_tree_mod_dont_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }
%struct.extent_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.extent_buffer*)* @tree_mod_dont_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_mod_dont_log(%struct.btrfs_fs_info* %0, %struct.extent_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %5, align 8
  %6 = call i32 (...) @smp_mb()
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 1
  %9 = call i64 @list_empty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %14 = icmp ne %struct.extent_buffer* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %17 = call i64 @btrfs_header_level(%struct.extent_buffer* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %33

20:                                               ; preds = %15, %12
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 0
  %23 = call i32 @write_lock(i32* %22)
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 1
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 0
  %31 = call i32 @write_unlock(i32* %30)
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %28, %19, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
