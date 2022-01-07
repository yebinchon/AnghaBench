; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_trace_subtree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_trace_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer**, i64* }
%struct.btrfs_key = type { i32 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK_BLOCKING = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_qgroup_trace_subtree(%struct.btrfs_trans_handle* %0, %struct.extent_buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca %struct.btrfs_path*, align 8
  %15 = alloca %struct.btrfs_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %19, i32 0, i32 0
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %20, align 8
  store %struct.btrfs_fs_info* %21, %struct.btrfs_fs_info** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  store %struct.extent_buffer* %22, %struct.extent_buffer** %13, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %14, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %28 = icmp sge i32 %26, %27
  br label %29

29:                                               ; preds = %25, %4
  %30 = phi i1 [ true, %4 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %34 = icmp eq %struct.extent_buffer* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 1
  %40 = call i32 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %221

43:                                               ; preds = %29
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %45 = call i32 @extent_buffer_uptodate(%struct.extent_buffer* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @btrfs_read_buffer(%struct.extent_buffer* %48, i32 %49, i32 %50, i32* null)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %217

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %62 = call i32 @btrfs_qgroup_trace_leaf_items(%struct.btrfs_trans_handle* %60, %struct.extent_buffer* %61)
  store i32 %62, i32* %11, align 4
  br label %217

63:                                               ; preds = %56
  %64 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %64, %struct.btrfs_path** %14, align 8
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %66 = icmp ne %struct.btrfs_path* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %221

70:                                               ; preds = %63
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %72 = call i32 @extent_buffer_get(%struct.extent_buffer* %71)
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %74 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %75 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %74, i32 0, i32 1
  %76 = load %struct.extent_buffer**, %struct.extent_buffer*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %76, i64 %78
  store %struct.extent_buffer* %73, %struct.extent_buffer** %79, align 8
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %81 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 0, i32* %85, align 4
  %86 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %87 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %212, %70
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %213, %92
  %95 = load i32, i32* %12, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %216

97:                                               ; preds = %94
  %98 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %99 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %98, i32 0, i32 1
  %100 = load %struct.extent_buffer**, %struct.extent_buffer*** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %100, i64 %102
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %103, align 8
  %105 = icmp eq %struct.extent_buffer* %104, null
  br i1 %105, label %106, label %189

106:                                              ; preds = %97
  %107 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %108 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %107, i32 0, i32 1
  %109 = load %struct.extent_buffer**, %struct.extent_buffer*** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %109, i64 %112
  %114 = load %struct.extent_buffer*, %struct.extent_buffer** %113, align 8
  store %struct.extent_buffer* %114, %struct.extent_buffer** %13, align 8
  %115 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %116 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %16, align 4
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @btrfs_node_blockptr(%struct.extent_buffer* %123, i32 %124)
  store i32 %125, i32* %18, align 4
  %126 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @btrfs_node_ptr_generation(%struct.extent_buffer* %126, i32 %127)
  store i32 %128, i32* %17, align 4
  %129 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %129, %struct.btrfs_key* %15, i32 %130)
  %132 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info* %132, i32 %133, i32 %134, i32 %135, %struct.btrfs_key* %15)
  store %struct.extent_buffer* %136, %struct.extent_buffer** %13, align 8
  %137 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %138 = call i64 @IS_ERR(%struct.extent_buffer* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %106
  %141 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %142 = call i32 @PTR_ERR(%struct.extent_buffer* %141)
  store i32 %142, i32* %11, align 4
  br label %217

143:                                              ; preds = %106
  %144 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %145 = call i32 @extent_buffer_uptodate(%struct.extent_buffer* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %149 = call i32 @free_extent_buffer(%struct.extent_buffer* %148)
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %11, align 4
  br label %217

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %155 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %156 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %155, i32 0, i32 1
  %157 = load %struct.extent_buffer**, %struct.extent_buffer*** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %157, i64 %159
  store %struct.extent_buffer* %154, %struct.extent_buffer** %160, align 8
  %161 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %162 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 0, i32* %166, align 4
  %167 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %168 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %167)
  %169 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %170 = call i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer* %169)
  %171 = load i64, i64* @BTRFS_READ_LOCK_BLOCKING, align 8
  %172 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %173 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %172, i32 0, i32 2
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  store i64 %171, i64* %177, align 8
  %178 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %179 = load i32, i32* %18, align 4
  %180 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %181 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @GFP_NOFS, align 4
  %184 = call i32 @btrfs_qgroup_trace_extent(%struct.btrfs_trans_handle* %178, i32 %179, i32 %182, i32 %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %153
  br label %217

188:                                              ; preds = %153
  br label %189

189:                                              ; preds = %188, %97
  %190 = load i32, i32* %12, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %189
  %193 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %194 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %195 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %194, i32 0, i32 1
  %196 = load %struct.extent_buffer**, %struct.extent_buffer*** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %196, i64 %198
  %200 = load %struct.extent_buffer*, %struct.extent_buffer** %199, align 8
  %201 = call i32 @btrfs_qgroup_trace_leaf_items(%struct.btrfs_trans_handle* %193, %struct.extent_buffer* %200)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %192
  br label %217

205:                                              ; preds = %192
  %206 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @adjust_slots_upwards(%struct.btrfs_path* %206, i32 %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %216

212:                                              ; preds = %205
  br label %92

213:                                              ; preds = %189
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %12, align 4
  br label %94

216:                                              ; preds = %211, %94
  store i32 0, i32* %11, align 4
  br label %217

217:                                              ; preds = %216, %204, %187, %147, %140, %59, %54
  %218 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %219 = call i32 @btrfs_free_path(%struct.btrfs_path* %218)
  %220 = load i32, i32* %11, align 4
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %217, %67, %42
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_read_buffer(%struct.extent_buffer*, i32, i32, i32*) #1

declare dso_local i32 @btrfs_qgroup_trace_leaf_items(%struct.btrfs_trans_handle*, %struct.extent_buffer*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info*, i32, i32, i32, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_qgroup_trace_extent(%struct.btrfs_trans_handle*, i32, i32, i32) #1

declare dso_local i32 @adjust_slots_upwards(%struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
