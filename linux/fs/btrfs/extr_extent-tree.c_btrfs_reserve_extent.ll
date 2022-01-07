; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_reserve_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_reserve_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i64 }
%struct.btrfs_key = type { i64, i32 }
%struct.btrfs_space_info = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOSPC_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"allocation failed flags %llu, wanted %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_reserve_extent(%struct.btrfs_root* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.btrfs_key* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.btrfs_key*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.btrfs_fs_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.btrfs_space_info*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store %struct.btrfs_key* %6, %struct.btrfs_key** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 0
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %25, align 8
  store %struct.btrfs_fs_info* %26, %struct.btrfs_fs_info** %19, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %20, align 4
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %32 = load i32, i32* %17, align 4
  %33 = call i64 @get_alloc_profile_by_root(%struct.btrfs_root* %31, i32 %32)
  store i64 %33, i64* %21, align 8
  br label %34

34:                                               ; preds = %95, %9
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  %37 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load %struct.btrfs_key*, %struct.btrfs_key** %16, align 8
  %48 = load i64, i64* %21, align 8
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @find_free_extent(%struct.btrfs_fs_info* %42, i64 %43, i64 %44, i64 %45, i64 %46, %struct.btrfs_key* %47, i64 %48, i32 %49)
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %22, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  %58 = load %struct.btrfs_key*, %struct.btrfs_key** %16, align 8
  %59 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @btrfs_dec_block_group_reservations(%struct.btrfs_fs_info* %57, i32 %60)
  br label %120

62:                                               ; preds = %53, %34
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* @ENOSPC, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %62
  %68 = load i32, i32* %20, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %96, label %70

70:                                               ; preds = %67
  %71 = load %struct.btrfs_key*, %struct.btrfs_key** %16, align 8
  %72 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load i64, i64* %12, align 8
  %77 = ashr i64 %76, 1
  %78 = load %struct.btrfs_key*, %struct.btrfs_key** %16, align 8
  %79 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @min(i64 %77, i64 %80)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  %84 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @round_down(i64 %82, i64 %85)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = call i64 @max(i64 %87, i64 %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %75
  store i32 1, i32* %20, align 4
  br label %95

95:                                               ; preds = %94, %75
  br label %34

96:                                               ; preds = %70, %67
  %97 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  %98 = load i32, i32* @ENOSPC_DEBUG, align 4
  %99 = call i64 @btrfs_test_opt(%struct.btrfs_fs_info* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  %103 = load i64, i64* %21, align 8
  %104 = call %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info* %102, i64 %103)
  store %struct.btrfs_space_info* %104, %struct.btrfs_space_info** %23, align 8
  %105 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @btrfs_err(%struct.btrfs_fs_info* %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %106, i64 %107)
  %109 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %23, align 8
  %110 = icmp ne %struct.btrfs_space_info* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  %113 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %23, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @btrfs_dump_space_info(%struct.btrfs_fs_info* %112, %struct.btrfs_space_info* %113, i64 %114, i32 1)
  br label %116

116:                                              ; preds = %111, %101
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %62
  br label %120

120:                                              ; preds = %119, %56
  %121 = load i32, i32* %22, align 4
  ret i32 %121
}

declare dso_local i64 @get_alloc_profile_by_root(%struct.btrfs_root*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @find_free_extent(%struct.btrfs_fs_info*, i64, i64, i64, i64, %struct.btrfs_key*, i64, i32) #1

declare dso_local i32 @btrfs_dec_block_group_reservations(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i64, i64) #1

declare dso_local i32 @btrfs_dump_space_info(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
