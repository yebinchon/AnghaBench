; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_find_name_in_ext_backref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_find_name_in_ext_backref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode_extref = type { i32 }
%struct.extent_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_inode_extref* @btrfs_find_name_in_ext_backref(%struct.extent_buffer* %0, i32 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_inode_extref*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_inode_extref*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %16, align 8
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %18, i32 %19)
  store i64 %20, i64* %15, align 8
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %21, i32 %22)
  store i64 %23, i64* %13, align 8
  br label %24

24:                                               ; preds = %57, %5
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* %15, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %16, align 8
  %31 = add i64 %29, %30
  %32 = inttoptr i64 %31 to %struct.btrfs_inode_extref*
  store %struct.btrfs_inode_extref* %32, %struct.btrfs_inode_extref** %12, align 8
  %33 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %12, align 8
  %34 = getelementptr inbounds %struct.btrfs_inode_extref, %struct.btrfs_inode_extref* %33, i32 0, i32 0
  %35 = ptrtoint i32* %34 to i64
  store i64 %35, i64* %14, align 8
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %37 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %12, align 8
  %38 = call i32 @btrfs_inode_extref_name_len(%struct.extent_buffer* %36, %struct.btrfs_inode_extref* %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %28
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %44 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %12, align 8
  %45 = call i64 @btrfs_inode_extref_parent(%struct.extent_buffer* %43, %struct.btrfs_inode_extref* %44)
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @memcmp_extent_buffer(%struct.extent_buffer* %49, i8* %50, i64 %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %12, align 8
  store %struct.btrfs_inode_extref* %56, %struct.btrfs_inode_extref** %6, align 8
  br label %64

57:                                               ; preds = %48, %42, %28
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 4
  %61 = load i64, i64* %16, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %16, align 8
  br label %24

63:                                               ; preds = %24
  store %struct.btrfs_inode_extref* null, %struct.btrfs_inode_extref** %6, align 8
  br label %64

64:                                               ; preds = %63, %55
  %65 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %6, align 8
  ret %struct.btrfs_inode_extref* %65
}

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_inode_extref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i64 @btrfs_inode_extref_parent(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i64 @memcmp_extent_buffer(%struct.extent_buffer*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
