; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_find_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_find_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64, i64, i64*, %struct.extent_buffer**, i8* }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64*, %struct.extent_buffer**, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_item(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i8* %2, i8* %3, i64 %4, %struct.btrfs_key* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.btrfs_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_key, align 8
  %16 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.btrfs_key* %5, %struct.btrfs_key** %13, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %18 = call i32 @ASSERT(%struct.btrfs_path* %17)
  %19 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %20 = bitcast %struct.btrfs_key* %19 to %struct.btrfs_path*
  %21 = call i32 @ASSERT(%struct.btrfs_path* %20)
  %22 = load i64, i64* %12, align 8
  %23 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %30 = bitcast %struct.btrfs_key* %15 to %struct.btrfs_path*
  %31 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %32 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %29, %struct.btrfs_path* %30, %struct.btrfs_path* %31, i32 0, i32 0)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %7, align 4
  br label %93

37:                                               ; preds = %6
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 3
  %40 = load %struct.extent_buffer**, %struct.extent_buffer*** %39, align 8
  %41 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %40, i64 0
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %41, align 8
  store %struct.extent_buffer* %42, %struct.extent_buffer** %16, align 8
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %37
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %47 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %52 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %51)
  %53 = icmp sge i64 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %45
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %56 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %57 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %55, %struct.btrfs_path* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %7, align 4
  br label %93

62:                                               ; preds = %54
  %63 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %64 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %63, i32 0, i32 3
  %65 = load %struct.extent_buffer**, %struct.extent_buffer*** %64, align 8
  %66 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %65, i64 0
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %66, align 8
  store %struct.extent_buffer* %67, %struct.extent_buffer** %16, align 8
  br label %68

68:                                               ; preds = %62, %45, %37
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %70 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %71 = bitcast %struct.btrfs_key* %70 to %struct.btrfs_path*
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %73 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %69, %struct.btrfs_path* %71, i64 %76)
  %78 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %79 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %68
  %85 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %86 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84, %68
  store i32 1, i32* %7, align 4
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %91, %60, %35
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @ASSERT(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_path*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
