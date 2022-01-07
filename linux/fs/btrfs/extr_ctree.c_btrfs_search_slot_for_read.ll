; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_slot_for_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_slot_for_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_search_slot_for_read(%struct.btrfs_root* %0, %struct.btrfs_key* %1, %struct.btrfs_path* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_key*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %8, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %14

14:                                               ; preds = %100, %52, %5
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %16 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %18 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %15, %struct.btrfs_key* %16, %struct.btrfs_path* %17, i32 0, i32 0)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %112

23:                                               ; preds = %14
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %25 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %24, i32 0, i32 1
  %26 = load %struct.extent_buffer**, %struct.extent_buffer*** %25, align 8
  %27 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %26, i64 0
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %27, align 8
  store %struct.extent_buffer* %28, %struct.extent_buffer** %13, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %23
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %33 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %38 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %37)
  %39 = icmp sge i64 %36, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %42 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %43 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %41, %struct.btrfs_path* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %112

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %112

52:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %54 = call i32 @btrfs_release_path(%struct.btrfs_path* %53)
  br label %14

55:                                               ; preds = %31
  br label %111

56:                                               ; preds = %23
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %56
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %66 = call i32 @btrfs_prev_leaf(%struct.btrfs_root* %64, %struct.btrfs_path* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %112

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %71
  %75 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %76 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %75, i32 0, i32 1
  %77 = load %struct.extent_buffer**, %struct.extent_buffer*** %76, align 8
  %78 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %77, i64 0
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %78, align 8
  store %struct.extent_buffer* %79, %struct.extent_buffer** %13, align 8
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %81 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %86 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %90 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %88, %74
  store i32 0, i32* %6, align 4
  br label %112

96:                                               ; preds = %71
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i32 1, i32* %6, align 4
  br label %112

100:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  %101 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %102 = call i32 @btrfs_release_path(%struct.btrfs_path* %101)
  br label %14

103:                                              ; preds = %56
  %104 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %105 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %55
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %99, %95, %69, %51, %46, %21
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_prev_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
