; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_get_inode_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_get_inode_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.fs_path = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.btrfs_path = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_INODE_EXTREF_KEY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@__copy_first_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i64, %struct.fs_path*)* @get_inode_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_inode_path(%struct.btrfs_root* %0, i64 %1, %struct.fs_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fs_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.fs_path* %2, %struct.fs_path** %7, align 8
  %12 = call %struct.btrfs_path* (...) @alloc_path_for_send()
  store %struct.btrfs_path* %12, %struct.btrfs_path** %11, align 8
  %13 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %14 = icmp ne %struct.btrfs_path* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %79

18:                                               ; preds = %3
  %19 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %20 = call i32 @fs_path_reset(%struct.fs_path* %19)
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %24 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %28 = call i32 @btrfs_search_slot_for_read(%struct.btrfs_root* %26, %struct.btrfs_key* %9, %struct.btrfs_path* %27, i32 1, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %75

32:                                               ; preds = %18
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %75

36:                                               ; preds = %32
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %38 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %43 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @btrfs_item_key_to_cpu(i32 %41, %struct.btrfs_key* %10, i32 %46)
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57, %36
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %75

65:                                               ; preds = %57, %52
  %66 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %68 = load i32, i32* @__copy_first_ref, align 4
  %69 = load %struct.fs_path*, %struct.fs_path** %7, align 8
  %70 = call i32 @iterate_inode_ref(%struct.btrfs_root* %66, %struct.btrfs_path* %67, %struct.btrfs_key* %10, i32 1, i32 %68, %struct.fs_path* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %75

74:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %73, %62, %35, %31
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %77 = call i32 @btrfs_free_path(%struct.btrfs_path* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %15
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.btrfs_path* @alloc_path_for_send(...) #1

declare dso_local i32 @fs_path_reset(%struct.fs_path*) #1

declare dso_local i32 @btrfs_search_slot_for_read(%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @iterate_inode_ref(%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
