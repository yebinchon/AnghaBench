; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_export.c_btrfs_get_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_export.c_btrfs_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_root = type { i64 }
%struct.inode = type { i64 }
%struct.btrfs_key = type { i64, i32, i64 }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@ESTALE = common dso_local global i32 0, align 4
@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i64, i64, i64, i32)* @btrfs_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @btrfs_get_dentry(%struct.super_block* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.btrfs_root*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.btrfs_key, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.super_block*, %struct.super_block** %7, align 8
  %19 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %18)
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %12, align 8
  store i32 0, i32* %17, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @ESTALE, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.dentry* @ERR_PTR(i32 %25)
  store %struct.dentry* %26, %struct.dentry** %6, align 8
  br label %92

27:                                               ; preds = %5
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  store i64 -1, i64* %32, align 8
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 0
  %35 = call i32 @srcu_read_lock(i32* %34)
  store i32 %35, i32* %16, align 4
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %37 = call %struct.inode* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info* %36, %struct.btrfs_key* %15)
  %38 = bitcast %struct.inode* %37 to %struct.btrfs_root*
  store %struct.btrfs_root* %38, %struct.btrfs_root** %13, align 8
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %40 = bitcast %struct.btrfs_root* %39 to %struct.inode*
  %41 = call i64 @IS_ERR(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %45 = bitcast %struct.btrfs_root* %44 to %struct.inode*
  %46 = call i32 @PTR_ERR(%struct.inode* %45)
  store i32 %46, i32* %17, align 4
  br label %85

47:                                               ; preds = %27
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %51 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.super_block*, %struct.super_block** %7, align 8
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %55 = bitcast %struct.btrfs_root* %54 to %struct.inode*
  %56 = call %struct.inode* @btrfs_iget(%struct.super_block* %53, %struct.btrfs_key* %15, %struct.inode* %55, i32* null)
  store %struct.inode* %56, %struct.inode** %14, align 8
  %57 = load %struct.inode*, %struct.inode** %14, align 8
  %58 = call i64 @IS_ERR(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load %struct.inode*, %struct.inode** %14, align 8
  %62 = call i32 @PTR_ERR(%struct.inode* %61)
  store i32 %62, i32* %17, align 4
  br label %85

63:                                               ; preds = %47
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %65 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %64, i32 0, i32 0
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @srcu_read_unlock(i32* %65, i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.inode*, %struct.inode** %14, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.inode*, %struct.inode** %14, align 8
  %78 = call i32 @iput(%struct.inode* %77)
  %79 = load i32, i32* @ESTALE, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.dentry* @ERR_PTR(i32 %80)
  store %struct.dentry* %81, %struct.dentry** %6, align 8
  br label %92

82:                                               ; preds = %70, %63
  %83 = load %struct.inode*, %struct.inode** %14, align 8
  %84 = call %struct.dentry* @d_obtain_alias(%struct.inode* %83)
  store %struct.dentry* %84, %struct.dentry** %6, align 8
  br label %92

85:                                               ; preds = %60, %43
  %86 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %87 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %86, i32 0, i32 0
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @srcu_read_unlock(i32* %87, i32 %88)
  %90 = load i32, i32* %17, align 4
  %91 = call %struct.dentry* @ERR_PTR(i32 %90)
  store %struct.dentry* %91, %struct.dentry** %6, align 8
  br label %92

92:                                               ; preds = %85, %82, %76, %23
  %93 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %93
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.inode* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info*, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @btrfs_iget(%struct.super_block*, %struct.btrfs_key*, %struct.inode*, i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
