; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_set_inode_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_set_inode_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_set_inode_index(%struct.btrfs_inode* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_inode*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %13 = call i32 @btrfs_inode_delayed_dir_index_count(%struct.btrfs_inode* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %18 = call i32 @btrfs_set_inode_index_count(%struct.btrfs_inode* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %11
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %31 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %25, %21
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @btrfs_inode_delayed_dir_index_count(%struct.btrfs_inode*) #1

declare dso_local i32 @btrfs_set_inode_index_count(%struct.btrfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
