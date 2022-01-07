; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_slot_get_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_slot_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_root = type { %struct.extent_buffer*, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i32, i32*, %struct.extent_buffer**, i64, i64 }

@BTRFS_READ_LOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@BTRFS_WRITE_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_buffer* (%struct.btrfs_root*, %struct.btrfs_path*, i32)* @btrfs_search_slot_get_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_buffer* @btrfs_search_slot_get_root(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i32 %2) #0 {
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 1
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  store %struct.btrfs_fs_info* %14, %struct.btrfs_fs_info** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @BTRFS_READ_LOCK, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %17 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 0
  %28 = call i32 @down_read(i32* %27)
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %30, align 8
  %32 = call %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer* %31)
  store %struct.extent_buffer* %32, %struct.extent_buffer** %9, align 8
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 0
  %35 = call i32 @up_read(i32* %34)
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %37 = icmp ne %struct.extent_buffer* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.extent_buffer* @ERR_PTR(i32 %40)
  store %struct.extent_buffer* %41, %struct.extent_buffer** %4, align 8
  br label %114

42:                                               ; preds = %25
  br label %49

43:                                               ; preds = %20
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 0
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %45, align 8
  store %struct.extent_buffer* %46, %struct.extent_buffer** %9, align 8
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %48 = call i32 @extent_buffer_get(%struct.extent_buffer* %47)
  br label %49

49:                                               ; preds = %43, %42
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %51 = call i32 @btrfs_header_level(%struct.extent_buffer* %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %53 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  br label %92

58:                                               ; preds = %3
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %60 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %65 = call %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root* %64)
  store %struct.extent_buffer* %65, %struct.extent_buffer** %9, align 8
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %67 = call i32 @btrfs_header_level(%struct.extent_buffer* %66)
  store i32 %67, i32* %11, align 4
  br label %92

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %74 = call %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root* %73)
  store %struct.extent_buffer* %74, %struct.extent_buffer** %9, align 8
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %76 = call i32 @btrfs_header_level(%struct.extent_buffer* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %92

81:                                               ; preds = %72
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %83 = call i32 @btrfs_tree_read_unlock(%struct.extent_buffer* %82)
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %85 = call i32 @free_extent_buffer(%struct.extent_buffer* %84)
  br label %86

86:                                               ; preds = %81, %68
  %87 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %88 = call %struct.extent_buffer* @btrfs_lock_root_node(%struct.btrfs_root* %87)
  store %struct.extent_buffer* %88, %struct.extent_buffer** %9, align 8
  %89 = load i32, i32* @BTRFS_WRITE_LOCK, align 4
  store i32 %89, i32* %10, align 4
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %91 = call i32 @btrfs_header_level(%struct.extent_buffer* %90)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %86, %80, %63, %49
  %93 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %94 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %95 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %94, i32 0, i32 2
  %96 = load %struct.extent_buffer**, %struct.extent_buffer*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %96, i64 %98
  store %struct.extent_buffer* %93, %struct.extent_buffer** %99, align 8
  %100 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %101 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %92
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %107 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %92
  %113 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  store %struct.extent_buffer* %113, %struct.extent_buffer** %4, align 8
  br label %114

114:                                              ; preds = %112, %38
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  ret %struct.extent_buffer* %115
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.extent_buffer* @ERR_PTR(i32) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root*) #1

declare dso_local %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_tree_read_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @btrfs_lock_root_node(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
