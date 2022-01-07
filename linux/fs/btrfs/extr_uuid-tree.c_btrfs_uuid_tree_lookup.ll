; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_tree_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_tree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"uuid item with illegal size %lu!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i32*, i32, i64)* @btrfs_uuid_tree_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_uuid_tree_lookup(%struct.btrfs_root* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.btrfs_key, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %10, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %18 = icmp ne %struct.btrfs_root* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %97

26:                                               ; preds = %4
  %27 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %27, %struct.btrfs_path** %10, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %29 = icmp ne %struct.btrfs_path* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %97

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @btrfs_uuid_to_key(i32* %34, i32 %35, %struct.btrfs_key* %15)
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %39 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %37, %struct.btrfs_key* %15, %struct.btrfs_path* %38, i32 0, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %97

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %97

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %52 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %51, i32 0, i32 1
  %53 = load %struct.extent_buffer**, %struct.extent_buffer*** %52, align 8
  %54 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %53, i64 0
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %54, align 8
  store %struct.extent_buffer* %55, %struct.extent_buffer** %11, align 8
  %56 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %57 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %61, i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %64, i32 %65)
  store i64 %66, i64* %14, align 8
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @IS_ALIGNED(i64 %69, i32 8)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %50
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %74 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @btrfs_warn(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %76)
  br label %97

78:                                               ; preds = %50
  br label %79

79:                                               ; preds = %91, %78
  %80 = load i64, i64* %13, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i32 @read_extent_buffer(%struct.extent_buffer* %83, i32* %16, i64 %84, i32 4)
  %86 = load i32, i32* %16, align 4
  %87 = call i64 @le64_to_cpu(i32 %86)
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %96

91:                                               ; preds = %82
  %92 = load i64, i64* %14, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %13, align 8
  %95 = sub i64 %94, 4
  store i64 %95, i64* %13, align 8
  br label %79

96:                                               ; preds = %90, %79
  br label %97

97:                                               ; preds = %96, %72, %46, %42, %30, %23
  %98 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %99 = call i32 @btrfs_free_path(%struct.btrfs_path* %98)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_uuid_to_key(i32*, i32, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @btrfs_warn(i32, i8*, i64) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i32*, i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
