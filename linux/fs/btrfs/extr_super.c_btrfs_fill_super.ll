; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32 }
%struct.btrfs_fs_devices = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i64, i32, i32 }

@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@BTRFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@btrfs_super_ops = common dso_local global i32 0, align 4
@btrfs_dentry_operations = common dso_local global i32 0, align 4
@btrfs_export_ops = common dso_local global i32 0, align 4
@btrfs_xattr_handlers = common dso_local global i32 0, align 4
@SB_I_VERSION = common dso_local global i32 0, align 4
@SB_I_CGROUPWB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"super_setup_bdi failed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"open_ctree failed\00", align 1
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.btrfs_fs_devices*, i8*)* @btrfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_fill_super(%struct.super_block* %0, %struct.btrfs_fs_devices* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.btrfs_fs_devices*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.btrfs_fs_devices* %1, %struct.btrfs_fs_devices** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %12)
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %9, align 8
  %14 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @BTRFS_SUPER_MAGIC, align 4
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 7
  store i32* @btrfs_super_ops, i32** %21, align 8
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 6
  store i32* @btrfs_dentry_operations, i32** %23, align 8
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 5
  store i32* @btrfs_export_ops, i32** %25, align 8
  %26 = load i32, i32* @btrfs_xattr_handlers, align 4
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @SB_I_VERSION, align 4
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @SB_I_CGROUPWB, align 4
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = call i32 @super_setup_bdi(%struct.super_block* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %47 = call i32 @btrfs_err(%struct.btrfs_fs_info* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %101

49:                                               ; preds = %3
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @open_ctree(%struct.super_block* %50, %struct.btrfs_fs_devices* %51, i8* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %58 = call i32 @btrfs_err(%struct.btrfs_fs_info* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %101

60:                                               ; preds = %49
  %61 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %62 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %64 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %68 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.inode* @btrfs_iget(%struct.super_block* %66, %struct.btrfs_key* %10, i32 %69, i32* null)
  store %struct.inode* %70, %struct.inode** %8, align 8
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call i64 @IS_ERR(%struct.inode* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = call i32 @PTR_ERR(%struct.inode* %75)
  store i32 %76, i32* %11, align 4
  br label %97

77:                                               ; preds = %60
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = call i32 @d_make_root(%struct.inode* %78)
  %80 = load %struct.super_block*, %struct.super_block** %5, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.super_block*, %struct.super_block** %5, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %97

89:                                               ; preds = %77
  %90 = load %struct.super_block*, %struct.super_block** %5, align 8
  %91 = call i32 @cleancache_init_fs(%struct.super_block* %90)
  %92 = load i32, i32* @SB_ACTIVE, align 4
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = getelementptr inbounds %struct.super_block, %struct.super_block* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %101

97:                                               ; preds = %86, %74
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %99 = call i32 @close_ctree(%struct.btrfs_fs_info* %98)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %89, %56, %45
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local i32 @super_setup_bdi(%struct.super_block*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*) #1

declare dso_local i32 @open_ctree(%struct.super_block*, %struct.btrfs_fs_devices*, i8*) #1

declare dso_local %struct.inode* @btrfs_iget(%struct.super_block*, %struct.btrfs_key*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @cleancache_init_fs(%struct.super_block*) #1

declare dso_local i32 @close_ctree(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
