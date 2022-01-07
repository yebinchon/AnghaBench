; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_lookup_inode_extref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_lookup_inode_extref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode_extref = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, i32* }
%struct.btrfs_key = type { i32, i32, i32 }

@BTRFS_INODE_EXTREF_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_inode_extref* @btrfs_lookup_inode_extref(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.btrfs_inode_extref*, align 8
  %11 = alloca %struct.btrfs_trans_handle*, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.btrfs_path*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.btrfs_key, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %11, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load i32, i32* %16, align 4
  %23 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %21, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @BTRFS_INODE_EXTREF_KEY, align 4
  %25 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %21, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i8*, i8** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @btrfs_extref_hash(i32 %26, i8* %27, i32 %28)
  %30 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %21, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %19, align 4
  %36 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %31, %struct.btrfs_root* %32, %struct.btrfs_key* %21, %struct.btrfs_path* %33, i32 %34, i32 %35)
  store i32 %36, i32* %20, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %9
  %40 = load i32, i32* %20, align 4
  %41 = call %struct.btrfs_inode_extref* @ERR_PTR(i32 %40)
  store %struct.btrfs_inode_extref* %41, %struct.btrfs_inode_extref** %10, align 8
  br label %61

42:                                               ; preds = %9
  %43 = load i32, i32* %20, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store %struct.btrfs_inode_extref* null, %struct.btrfs_inode_extref** %10, align 8
  br label %61

46:                                               ; preds = %42
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %48 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %53 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call %struct.btrfs_inode_extref* @btrfs_find_name_in_ext_backref(i32 %51, i32 %56, i32 %57, i8* %58, i32 %59)
  store %struct.btrfs_inode_extref* %60, %struct.btrfs_inode_extref** %10, align 8
  br label %61

61:                                               ; preds = %46, %45, %39
  %62 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %10, align 8
  ret %struct.btrfs_inode_extref* %62
}

declare dso_local i32 @btrfs_extref_hash(i32, i8*, i32) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.btrfs_inode_extref* @ERR_PTR(i32) #1

declare dso_local %struct.btrfs_inode_extref* @btrfs_find_name_in_ext_backref(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
