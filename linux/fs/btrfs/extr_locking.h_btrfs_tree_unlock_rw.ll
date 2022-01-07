; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.h_btrfs_tree_unlock_rw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.h_btrfs_tree_unlock_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }

@BTRFS_WRITE_LOCK = common dso_local global i32 0, align 4
@BTRFS_WRITE_LOCK_BLOCKING = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK_BLOCKING = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_buffer*, i32)* @btrfs_tree_unlock_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_tree_unlock_rw(%struct.extent_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BTRFS_WRITE_LOCK, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @BTRFS_WRITE_LOCK_BLOCKING, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %14 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %13)
  br label %33

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @BTRFS_READ_LOCK_BLOCKING, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %21 = call i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer* %20)
  br label %32

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BTRFS_READ_LOCK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %28 = call i32 @btrfs_tree_read_unlock(%struct.extent_buffer* %27)
  br label %31

29:                                               ; preds = %22
  %30 = call i32 (...) @BUG()
  br label %31

31:                                               ; preds = %29, %26
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32, %12
  ret void
}

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
