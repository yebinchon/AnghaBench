; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..btrfs_inode.h_btrfs_is_free_space_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..btrfs_inode.h_btrfs_is_free_space_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { %struct.TYPE_4__, %struct.btrfs_root* }
%struct.TYPE_4__ = type { i64 }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_root* }

@BTRFS_BTREE_INODE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_FREE_INO_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_inode*)* @btrfs_is_free_space_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_is_free_space_inode(%struct.btrfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_inode*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %3, align 8
  %5 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %5, i32 0, i32 1
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_root* %7, %struct.btrfs_root** %4, align 8
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %14 = icmp eq %struct.btrfs_root* %8, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %17 = call i64 @btrfs_ino(%struct.btrfs_inode* %16)
  %18 = load i64, i64* @BTRFS_BTREE_INODE_OBJECTID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %30

21:                                               ; preds = %15, %1
  %22 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BTRFS_FREE_INO_OBJECTID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @btrfs_ino(%struct.btrfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
