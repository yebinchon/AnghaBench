; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_all_new_xattrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_all_new_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { %struct.TYPE_2__*, %struct.btrfs_root* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_XATTR_ITEM_KEY = common dso_local global i64 0, align 8
@__process_new_xattr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @process_all_new_xattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_all_new_xattrs(%struct.send_ctx* %0) #0 {
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
  %11 = call %struct.btrfs_path* (...) @alloc_path_for_send()
  store %struct.btrfs_path* %11, %struct.btrfs_path** %6, align 8
  %12 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %13 = icmp ne %struct.btrfs_path* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %102

17:                                               ; preds = %1
  %18 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %18, i32 0, i32 1
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %5, align 8
  %21 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* @BTRFS_XATTR_ITEM_KEY, align 8
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

35:                                               ; preds = %17
  br label %98

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %64, %90
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
  br label %98

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %97

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
  br label %98

81:                                               ; preds = %74
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %83 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %84 = load i32, i32* @__process_new_xattr, align 4
  %85 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %86 = call i32 @iterate_dir_item(%struct.btrfs_root* %82, %struct.btrfs_path* %83, i32 %84, %struct.send_ctx* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %98

90:                                               ; preds = %81
  %91 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %92 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %37

97:                                               ; preds = %62
  br label %98

98:                                               ; preds = %97, %89, %80, %58, %35
  %99 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %100 = call i32 @btrfs_free_path(%struct.btrfs_path* %99)
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %14
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.btrfs_path* @alloc_path_for_send(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @iterate_dir_item(%struct.btrfs_root*, %struct.btrfs_path*, i32, %struct.send_ctx*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
