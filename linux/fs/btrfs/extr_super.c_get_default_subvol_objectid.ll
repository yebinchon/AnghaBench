; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_get_default_subvol_objectid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_get_default_subvol_objectid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_path = type { i32, i32* }
%struct.btrfs_key = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@BTRFS_FS_TREE_OBJECTID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32*)* @get_default_subvol_objectid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_default_subvol_objectid(%struct.btrfs_fs_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_dir_item*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_key, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 1
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_root* %13, %struct.btrfs_root** %6, align 8
  %14 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %14, %struct.btrfs_path** %8, align 8
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %16 = icmp ne %struct.btrfs_path* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %22 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @btrfs_super_root_dir(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32* null, %struct.btrfs_root* %27, %struct.btrfs_path* %28, i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7, i32 0)
  store %struct.btrfs_dir_item* %30, %struct.btrfs_dir_item** %7, align 8
  %31 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %7, align 8
  %32 = call i64 @IS_ERR(%struct.btrfs_dir_item* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %36 = call i32 @btrfs_free_path(%struct.btrfs_path* %35)
  %37 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %7, align 8
  %38 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %37)
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %20
  %40 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %7, align 8
  %41 = icmp ne %struct.btrfs_dir_item* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %44 = call i32 @btrfs_free_path(%struct.btrfs_path* %43)
  %45 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %60

47:                                               ; preds = %39
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %7, align 8
  %54 = call i32 @btrfs_dir_item_key_to_cpu(i32 %52, %struct.btrfs_dir_item* %53, %struct.btrfs_key* %9)
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %56 = call i32 @btrfs_free_path(%struct.btrfs_path* %55)
  %57 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %42, %34, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_super_root_dir(i32) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_dir_item_key_to_cpu(i32, %struct.btrfs_dir_item*, %struct.btrfs_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
