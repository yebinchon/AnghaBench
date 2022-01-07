; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_count_inode_extrefs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_count_inode_extrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_inode = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_inode_extref = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_inode*, %struct.btrfs_path*)* @count_inode_extrefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_inode_extrefs(%struct.btrfs_root* %0, %struct.btrfs_inode* %1, %struct.btrfs_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_inode*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.btrfs_inode_extref*, align 8
  %17 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %6, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %19 = call i64 @btrfs_ino(%struct.btrfs_inode* %18)
  store i64 %19, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %20

20:                                               ; preds = %3, %68
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %25 = call i32 @btrfs_find_one_extref(%struct.btrfs_root* %21, i64 %22, i64 %23, %struct.btrfs_path* %24, %struct.btrfs_inode_extref** %16, i64* %14)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %73

29:                                               ; preds = %20
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %31 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %30, i32 0, i32 1
  %32 = load %struct.extent_buffer**, %struct.extent_buffer*** %31, align 8
  %33 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %32, i64 0
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %33, align 8
  store %struct.extent_buffer* %34, %struct.extent_buffer** %17, align 8
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %35, i32 %40)
  store i64 %41, i64* %11, align 8
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %42, i32 %47)
  store i64 %48, i64* %15, align 8
  store i64 0, i64* %12, align 8
  br label %49

49:                                               ; preds = %53, %29
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %54, %55
  %57 = inttoptr i64 %56 to %struct.btrfs_inode_extref*
  store %struct.btrfs_inode_extref* %57, %struct.btrfs_inode_extref** %16, align 8
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %59 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %16, align 8
  %60 = call i32 @btrfs_inode_extref_name_len(%struct.extent_buffer* %58, %struct.btrfs_inode_extref* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 4
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %12, align 8
  br label %49

68:                                               ; preds = %49
  %69 = load i64, i64* %14, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %14, align 8
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %72 = call i32 @btrfs_release_path(%struct.btrfs_path* %71)
  br label %20

73:                                               ; preds = %28
  %74 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %75 = call i32 @btrfs_release_path(%struct.btrfs_path* %74)
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %87

85:                                               ; preds = %78, %73
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @btrfs_find_one_extref(%struct.btrfs_root*, i64, i64, %struct.btrfs_path*, %struct.btrfs_inode_extref**, i64*) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_inode_extref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
