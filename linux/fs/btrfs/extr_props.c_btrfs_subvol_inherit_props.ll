; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_btrfs_subvol_inherit_props.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_btrfs_subvol_inherit_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.btrfs_key = type { i64, i32, i32 }
%struct.inode = type { i32 }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_subvol_inherit_props(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_root* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_root* %2, %struct.btrfs_root** %7, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %8, align 8
  %18 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %25 = call %struct.inode* @btrfs_iget(%struct.super_block* %23, %struct.btrfs_key* %9, %struct.btrfs_root* %24, i32* null)
  store %struct.inode* %25, %struct.inode** %10, align 8
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = call i64 @IS_ERR(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = call i32 @PTR_ERR(%struct.inode* %30)
  store i32 %31, i32* %4, align 4
  br label %54

32:                                               ; preds = %3
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %35 = call %struct.inode* @btrfs_iget(%struct.super_block* %33, %struct.btrfs_key* %9, %struct.btrfs_root* %34, i32* null)
  store %struct.inode* %35, %struct.inode** %11, align 8
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = call i64 @IS_ERR(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i32 @iput(%struct.inode* %40)
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = call i32 @PTR_ERR(%struct.inode* %42)
  store i32 %43, i32* %4, align 4
  br label %54

44:                                               ; preds = %32
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = call i32 @inherit_props(%struct.btrfs_trans_handle* %45, %struct.inode* %46, %struct.inode* %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = call i32 @iput(%struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = call i32 @iput(%struct.inode* %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %44, %39, %29
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.inode* @btrfs_iget(%struct.super_block*, %struct.btrfs_key*, %struct.btrfs_root*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @inherit_props(%struct.btrfs_trans_handle*, %struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
