; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_load_free_space_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_load_free_space_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_caching_control = type { i64, i32, %struct.btrfs_block_group_cache* }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.btrfs_fs_info = type { i64, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, i32* }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_FREE_SPACE_INFO_KEY = common dso_local global i64 0, align 8
@BTRFS_FREE_SPACE_BITMAP_KEY = common dso_local global i64 0, align 8
@CACHING_CTL_WAKE_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"incorrect extent count for %llu; counted %u, expected %u\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_caching_control*, %struct.btrfs_path*, i64)* @load_free_space_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_free_space_bitmaps(%struct.btrfs_caching_control* %0, %struct.btrfs_path* %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_caching_control*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_block_group_cache*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.btrfs_caching_control* %0, %struct.btrfs_caching_control** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %19 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %19, i32 0, i32 2
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %20, align 8
  store %struct.btrfs_block_group_cache* %21, %struct.btrfs_block_group_cache** %7, align 8
  %22 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %23 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %22, i32 0, i32 1
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %23, align 8
  store %struct.btrfs_fs_info* %24, %struct.btrfs_fs_info** %8, align 8
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 1
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %26, align 8
  store %struct.btrfs_root* %27, %struct.btrfs_root** %9, align 8
  %28 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %29 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %31, %35
  store i64 %36, i64* %14, align 8
  br label %37

37:                                               ; preds = %3, %145
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %40 = call i32 @btrfs_next_item(%struct.btrfs_root* %38, %struct.btrfs_path* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %177

44:                                               ; preds = %37
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %146

48:                                               ; preds = %44
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %50 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %55 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @btrfs_item_key_to_cpu(i32 %53, %struct.btrfs_key* %10, i32 %58)
  %60 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BTRFS_FREE_SPACE_INFO_KEY, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %146

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BTRFS_FREE_SPACE_BITMAP_KEY, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %78, %80
  %82 = load i64, i64* %14, align 8
  %83 = icmp sle i64 %81, %82
  br label %84

84:                                               ; preds = %76, %65
  %85 = phi i1 [ false, %65 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %91 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %15, align 8
  br label %94

94:                                               ; preds = %138, %84
  %95 = load i64, i64* %15, align 8
  %96 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %97, %99
  %101 = icmp slt i64 %95, %100
  br i1 %101, label %102, label %145

102:                                              ; preds = %94
  %103 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %104 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %105 = load i64, i64* %15, align 8
  %106 = call i32 @free_space_test_bit(%struct.btrfs_block_group_cache* %103, %struct.btrfs_path* %104, i64 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* %15, align 8
  store i64 %113, i64* %13, align 8
  br label %138

114:                                              ; preds = %109, %102
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %15, align 8
  %124 = call i64 @add_new_free_space(%struct.btrfs_block_group_cache* %121, i64 %122, i64 %123)
  %125 = load i64, i64* %16, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %16, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* @CACHING_CTL_WAKE_UP, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  store i64 0, i64* %16, align 8
  %131 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %132 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %131, i32 0, i32 1
  %133 = call i32 @wake_up(i32* %132)
  br label %134

134:                                              ; preds = %130, %120
  %135 = load i64, i64* %17, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %17, align 8
  br label %137

137:                                              ; preds = %134, %117, %114
  br label %138

138:                                              ; preds = %137, %112
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %11, align 4
  %140 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %141 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %15, align 8
  br label %94

145:                                              ; preds = %94
  br label %37

146:                                              ; preds = %64, %47
  %147 = load i32, i32* %11, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* %14, align 8
  %153 = call i64 @add_new_free_space(%struct.btrfs_block_group_cache* %150, i64 %151, i64 %152)
  %154 = load i64, i64* %16, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %16, align 8
  %156 = load i64, i64* %17, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %17, align 8
  br label %158

158:                                              ; preds = %149, %146
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %6, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %164 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %165 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %17, align 8
  %169 = load i64, i64* %6, align 8
  %170 = call i32 @btrfs_err(%struct.btrfs_fs_info* %163, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %167, i64 %168, i64 %169)
  %171 = call i32 @ASSERT(i32 0)
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %18, align 4
  br label %177

174:                                              ; preds = %158
  %175 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %176 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %175, i32 0, i32 0
  store i64 -1, i64* %176, align 8
  store i32 0, i32* %18, align 4
  br label %177

177:                                              ; preds = %174, %162, %43
  %178 = load i32, i32* %18, align 4
  ret i32 %178
}

declare dso_local i32 @btrfs_next_item(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @free_space_test_bit(%struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64) #1

declare dso_local i64 @add_new_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
