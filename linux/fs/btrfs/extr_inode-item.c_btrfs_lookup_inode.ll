; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_lookup_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_lookup_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_ROOT_ITEM_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_lookup_inode(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_key* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.btrfs_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.extent_buffer*, align 8
  %17 = alloca %struct.btrfs_key, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %9, align 8
  store %struct.btrfs_key* %3, %struct.btrfs_key** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 -1, i32 0
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %27 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %25, %struct.btrfs_root* %26, %struct.btrfs_key* %27, %struct.btrfs_path* %28, i32 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %5
  %35 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %36 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %88

40:                                               ; preds = %34
  %41 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %42 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %88

45:                                               ; preds = %40
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %47 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %45
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %54 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %60 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %59, i32 0, i32 1
  %61 = load %struct.extent_buffer**, %struct.extent_buffer*** %60, align 8
  %62 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %61, i64 0
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %62, align 8
  store %struct.extent_buffer* %63, %struct.extent_buffer** %16, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %64, %struct.btrfs_key* %17, i32 %65)
  %67 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %70 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %52
  %74 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %77 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %82 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  store i32 0, i32* %6, align 4
  br label %90

87:                                               ; preds = %73, %52
  br label %88

88:                                               ; preds = %87, %45, %40, %34, %5
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %80
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
