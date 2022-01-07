; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_load_free_space_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_load_free_space_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_caching_control = type { i64, i32, %struct.btrfs_block_group_cache* }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, i32* }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_FREE_SPACE_INFO_KEY = common dso_local global i64 0, align 8
@BTRFS_FREE_SPACE_EXTENT_KEY = common dso_local global i64 0, align 8
@CACHING_CTL_WAKE_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"incorrect extent count for %llu; counted %u, expected %u\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_caching_control*, %struct.btrfs_path*, i64)* @load_free_space_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_free_space_extents(%struct.btrfs_caching_control* %0, %struct.btrfs_path* %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_caching_control*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_block_group_cache*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.btrfs_caching_control* %0, %struct.btrfs_caching_control** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %15, i32 0, i32 2
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %16, align 8
  store %struct.btrfs_block_group_cache* %17, %struct.btrfs_block_group_cache** %7, align 8
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 1
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  store %struct.btrfs_fs_info* %20, %struct.btrfs_fs_info** %8, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 0
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %22, align 8
  store %struct.btrfs_root* %23, %struct.btrfs_root** %9, align 8
  %24 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %25 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %29 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %3, %106
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %36 = call i32 @btrfs_next_item(%struct.btrfs_root* %34, %struct.btrfs_path* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %128

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %109

44:                                               ; preds = %40
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %51 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @btrfs_item_key_to_cpu(i32 %49, %struct.btrfs_key* %10, i32 %54)
  %56 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BTRFS_FREE_SPACE_INFO_KEY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %109

61:                                               ; preds = %44
  %62 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BTRFS_FREE_SPACE_EXTENT_KEY, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %74, %76
  %78 = load i64, i64* %11, align 8
  %79 = icmp sle i64 %77, %78
  br label %80

80:                                               ; preds = %72, %61
  %81 = phi i1 [ false, %61 ], [ %79, %72 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %87 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %89 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %92, %94
  %96 = call i64 @add_new_free_space(%struct.btrfs_block_group_cache* %88, i64 %90, i64 %95)
  %97 = load i64, i64* %12, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* @CACHING_CTL_WAKE_UP, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %80
  store i64 0, i64* %12, align 8
  %103 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %104 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %103, i32 0, i32 1
  %105 = call i32 @wake_up(i32* %104)
  br label %106

106:                                              ; preds = %102, %80
  %107 = load i64, i64* %13, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %13, align 8
  br label %33

109:                                              ; preds = %60, %43
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %115 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %116 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @btrfs_err(%struct.btrfs_fs_info* %114, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %118, i64 %119, i64 %120)
  %122 = call i32 @ASSERT(i32 0)
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %14, align 4
  br label %128

125:                                              ; preds = %109
  %126 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %127 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %126, i32 0, i32 0
  store i64 -1, i64* %127, align 8
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %125, %113, %39
  %129 = load i32, i32* %14, align 4
  ret i32 %129
}

declare dso_local i32 @btrfs_next_item(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @add_new_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
