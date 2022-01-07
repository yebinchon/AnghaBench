; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_walk_log_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_walk_log_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, %struct.extent_buffer*, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i32, i32, i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.walk_control = type { i32 (%struct.btrfs_root.0*, %struct.extent_buffer.1*, %struct.walk_control*, i32, i32)*, i64 }
%struct.btrfs_root.0 = type opaque
%struct.extent_buffer.1 = type opaque
%struct.btrfs_path = type { %struct.extent_buffer**, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@EXTENT_BUFFER_DIRTY = common dso_local global i32 0, align 4
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.walk_control*)* @walk_log_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_log_tree(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.walk_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.walk_control*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.walk_control* %2, %struct.walk_control** %7, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 2
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %18, %struct.btrfs_path** %12, align 8
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %20 = icmp ne %struct.btrfs_path* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %178

24:                                               ; preds = %3
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 1
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %26, align 8
  %28 = call i32 @btrfs_header_level(%struct.extent_buffer* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 1
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %31, align 8
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %34 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %33, i32 0, i32 0
  %35 = load %struct.extent_buffer**, %struct.extent_buffer*** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %35, i64 %37
  store %struct.extent_buffer* %32, %struct.extent_buffer** %38, align 8
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 1
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %40, align 8
  %42 = call i32 @extent_buffer_get(%struct.extent_buffer* %41)
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %24, %77
  %50 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %53 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %54 = call i32 @walk_down_log_tree(%struct.btrfs_trans_handle* %50, %struct.btrfs_root* %51, %struct.btrfs_path* %52, i32* %11, %struct.walk_control* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %78

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %9, align 4
  br label %174

63:                                               ; preds = %58
  %64 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %65 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %67 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %68 = call i32 @walk_up_log_tree(%struct.btrfs_trans_handle* %64, %struct.btrfs_root* %65, %struct.btrfs_path* %66, i32* %11, %struct.walk_control* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %78

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %9, align 4
  br label %174

77:                                               ; preds = %72
  br label %49

78:                                               ; preds = %71, %57
  %79 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %80 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %79, i32 0, i32 0
  %81 = load %struct.extent_buffer**, %struct.extent_buffer*** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %81, i64 %83
  %85 = load %struct.extent_buffer*, %struct.extent_buffer** %84, align 8
  %86 = icmp ne %struct.extent_buffer* %85, null
  br i1 %86, label %87, label %173

87:                                               ; preds = %78
  %88 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %89 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %88, i32 0, i32 0
  %90 = load i32 (%struct.btrfs_root.0*, %struct.extent_buffer.1*, %struct.walk_control*, i32, i32)*, i32 (%struct.btrfs_root.0*, %struct.extent_buffer.1*, %struct.walk_control*, i32, i32)** %89, align 8
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %92 = bitcast %struct.btrfs_root* %91 to %struct.btrfs_root.0*
  %93 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %94 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %93, i32 0, i32 0
  %95 = load %struct.extent_buffer**, %struct.extent_buffer*** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %95, i64 %97
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %98, align 8
  %100 = bitcast %struct.extent_buffer* %99 to %struct.extent_buffer.1*
  %101 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %102 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %103 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %102, i32 0, i32 0
  %104 = load %struct.extent_buffer**, %struct.extent_buffer*** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %104, i64 %106
  %108 = load %struct.extent_buffer*, %struct.extent_buffer** %107, align 8
  %109 = call i32 @btrfs_header_generation(%struct.extent_buffer* %108)
  %110 = load i32, i32* %13, align 4
  %111 = call i32 %90(%struct.btrfs_root.0* %92, %struct.extent_buffer.1* %100, %struct.walk_control* %101, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %87
  br label %174

115:                                              ; preds = %87
  %116 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %117 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %172

120:                                              ; preds = %115
  %121 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %122 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %121, i32 0, i32 0
  %123 = load %struct.extent_buffer**, %struct.extent_buffer*** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %123, i64 %125
  %127 = load %struct.extent_buffer*, %struct.extent_buffer** %126, align 8
  store %struct.extent_buffer* %127, %struct.extent_buffer** %14, align 8
  %128 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %129 = icmp ne %struct.btrfs_trans_handle* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %120
  %131 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %132 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %131)
  %133 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %134 = call i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer* %133)
  %135 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %136 = call i32 @btrfs_clean_tree_block(%struct.extent_buffer* %135)
  %137 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %138 = call i32 @btrfs_wait_tree_block_writeback(%struct.extent_buffer* %137)
  %139 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %140 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %139)
  br label %151

141:                                              ; preds = %120
  %142 = load i32, i32* @EXTENT_BUFFER_DIRTY, align 4
  %143 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %144 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %143, i32 0, i32 2
  %145 = call i64 @test_and_clear_bit(i32 %142, i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %149 = call i32 @clear_extent_buffer_dirty(%struct.extent_buffer* %148)
  br label %150

150:                                              ; preds = %147, %141
  br label %151

151:                                              ; preds = %150, %130
  %152 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %153 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %157 = icmp ne i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @WARN_ON(i32 %158)
  %160 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %161 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %162 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %165 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @btrfs_free_and_pin_reserved_extent(%struct.btrfs_fs_info* %160, i32 %163, i32 %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %151
  br label %174

171:                                              ; preds = %151
  br label %172

172:                                              ; preds = %171, %115
  br label %173

173:                                              ; preds = %172, %78
  br label %174

174:                                              ; preds = %173, %170, %114, %75, %61
  %175 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %176 = call i32 @btrfs_free_path(%struct.btrfs_path* %175)
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %174, %21
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @walk_down_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32*, %struct.walk_control*) #1

declare dso_local i32 @walk_up_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32*, %struct.walk_control*) #1

declare dso_local i32 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_clean_tree_block(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_wait_tree_block_writeback(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_extent_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_free_and_pin_reserved_extent(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
