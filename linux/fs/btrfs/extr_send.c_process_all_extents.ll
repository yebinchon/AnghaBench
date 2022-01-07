; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_all_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_all_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { %struct.TYPE_2__*, %struct.btrfs_root* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_EXTENT_DATA_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @process_all_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_all_extents(%struct.send_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.send_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca %struct.btrfs_key, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %3, align 8
  %11 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %11, i32 0, i32 1
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_root* %13, %struct.btrfs_root** %5, align 8
  %14 = call %struct.btrfs_path* (...) @alloc_path_for_send()
  store %struct.btrfs_path* %14, %struct.btrfs_path** %6, align 8
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %16 = icmp ne %struct.btrfs_path* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %100

20:                                               ; preds = %1
  %21 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* @BTRFS_EXTENT_DATA_KEY, align 8
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %31 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %32 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %30, %struct.btrfs_key* %7, %struct.btrfs_path* %31, i32 0, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %96

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %64, %88
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 1
  %40 = load %struct.extent_buffer**, %struct.extent_buffer*** %39, align 8
  %41 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %40, i64 0
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %41, align 8
  store %struct.extent_buffer* %42, %struct.extent_buffer** %9, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %50 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %49)
  %51 = icmp sge i32 %48, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %37
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %55 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %53, %struct.btrfs_path* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %96

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %95

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63
  br label %37

65:                                               ; preds = %37
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %66, %struct.btrfs_key* %8, i32 %67)
  %69 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %65
  store i32 0, i32* %4, align 4
  br label %96

81:                                               ; preds = %74
  %82 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %83 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %84 = call i32 @process_extent(%struct.send_ctx* %82, %struct.btrfs_path* %83, %struct.btrfs_key* %8)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %96

88:                                               ; preds = %81
  %89 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %90 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %37

95:                                               ; preds = %62
  br label %96

96:                                               ; preds = %95, %87, %80, %58, %35
  %97 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %98 = call i32 @btrfs_free_path(%struct.btrfs_path* %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %17
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.btrfs_path* @alloc_path_for_send(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @process_extent(%struct.send_ctx*, %struct.btrfs_path*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
