; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_find_name_in_backref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_find_name_in_backref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode_ref = type { i32 }
%struct.extent_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_inode_ref* @btrfs_find_name_in_backref(%struct.extent_buffer* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_inode_ref*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_inode_ref*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %14, align 8
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %16, i32 %17)
  store i64 %18, i64* %13, align 8
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %19, i32 %20)
  store i64 %21, i64* %11, align 8
  br label %22

22:                                               ; preds = %55, %45, %4
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %14, align 8
  %29 = add i64 %27, %28
  %30 = inttoptr i64 %29 to %struct.btrfs_inode_ref*
  store %struct.btrfs_inode_ref* %30, %struct.btrfs_inode_ref** %10, align 8
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %32 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %10, align 8
  %33 = call i32 @btrfs_inode_ref_name_len(%struct.extent_buffer* %31, %struct.btrfs_inode_ref* %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %10, align 8
  %35 = getelementptr inbounds %struct.btrfs_inode_ref, %struct.btrfs_inode_ref* %34, i64 1
  %36 = ptrtoint %struct.btrfs_inode_ref* %35 to i64
  store i64 %36, i64* %12, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 4
  %40 = load i64, i64* %14, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  br label %22

46:                                               ; preds = %26
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @memcmp_extent_buffer(%struct.extent_buffer* %47, i8* %48, i64 %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %10, align 8
  store %struct.btrfs_inode_ref* %54, %struct.btrfs_inode_ref** %5, align 8
  br label %57

55:                                               ; preds = %46
  br label %22

56:                                               ; preds = %22
  store %struct.btrfs_inode_ref* null, %struct.btrfs_inode_ref** %5, align 8
  br label %57

57:                                               ; preds = %56, %53
  %58 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %5, align 8
  ret %struct.btrfs_inode_ref* %58
}

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_inode_ref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_ref*) #1

declare dso_local i64 @memcmp_extent_buffer(%struct.extent_buffer*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
