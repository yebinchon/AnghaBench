; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_find_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_find_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_root_item = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_ROOT_ITEM_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_root(%struct.btrfs_root* %0, %struct.btrfs_key* %1, %struct.btrfs_path* %2, %struct.btrfs_root_item* %3, %struct.btrfs_key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_key*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.btrfs_root_item*, align 8
  %11 = alloca %struct.btrfs_key*, align 8
  %12 = alloca %struct.btrfs_key, align 8
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %8, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %9, align 8
  store %struct.btrfs_root_item* %3, %struct.btrfs_root_item** %10, align 8
  store %struct.btrfs_key* %4, %struct.btrfs_key** %11, align 8
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %17 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %19 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %16, %struct.btrfs_key* %17, %struct.btrfs_path* %18, i32 0, i32 0)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %98

24:                                               ; preds = %5
  %25 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %26 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %94

33:                                               ; preds = %29
  br label %53

34:                                               ; preds = %24
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %40 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %94

46:                                               ; preds = %34
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %48 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %46, %33
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %55 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %54, i32 0, i32 1
  %56 = load %struct.extent_buffer**, %struct.extent_buffer*** %55, align 8
  %57 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %56, i64 0
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %57, align 8
  store %struct.extent_buffer* %58, %struct.extent_buffer** %13, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %60 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %15, align 4
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %64, %struct.btrfs_key* %12, i32 %65)
  %67 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %70 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %53
  %74 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %53
  store i32 1, i32* %14, align 4
  br label %94

79:                                               ; preds = %73
  %80 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %10, align 8
  %81 = icmp ne %struct.btrfs_root_item* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %10, align 8
  %86 = call i32 @btrfs_read_root_item(%struct.extent_buffer* %83, i32 %84, %struct.btrfs_root_item* %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %89 = icmp ne %struct.btrfs_key* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %92 = call i32 @memcpy(%struct.btrfs_key* %91, %struct.btrfs_key* %12, i32 24)
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %78, %45, %32
  %95 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %96 = call i32 @btrfs_release_path(%struct.btrfs_path* %95)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %22
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_read_root_item(%struct.extent_buffer*, i32, %struct.btrfs_root_item*) #1

declare dso_local i32 @memcpy(%struct.btrfs_key*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
