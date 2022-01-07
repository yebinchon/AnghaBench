; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_ordered_data_tree_panic.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_ordered_data_tree_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Inconsistency in ordered tree at offset %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32)* @ordered_data_tree_panic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ordered_data_tree_panic(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %10)
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %7, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @btrfs_panic(%struct.btrfs_fs_info* %12, i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %14)
  ret void
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @btrfs_panic(%struct.btrfs_fs_info*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
