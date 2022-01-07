; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-defrag.c_btrfs_defrag_leaves.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-defrag.c_btrfs_defrag_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32, %struct.btrfs_key, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.btrfs_root* }
%struct.btrfs_path = type { i32, i32, i64*, %struct.extent_buffer**, i8** }
%struct.extent_buffer = type { i32 }

@BTRFS_ROOT_REF_COWS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_OLDEST_GENERATION = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_defrag_leaves(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i8*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %21 = icmp eq %struct.btrfs_root* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %163

23:                                               ; preds = %2
  %24 = load i32, i32* @BTRFS_ROOT_REF_COWS, align 4
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 4
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %163

30:                                               ; preds = %23
  %31 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %31, %struct.btrfs_path** %6, align 8
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %33 = icmp ne %struct.btrfs_path* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %221

37:                                               ; preds = %30
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %39 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @btrfs_header_level(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %163

45:                                               ; preds = %37
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %53 = call %struct.extent_buffer* @btrfs_lock_root_node(%struct.btrfs_root* %52)
  store %struct.extent_buffer* %53, %struct.extent_buffer** %13, align 8
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %55 = call i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer* %54)
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %57 = call i8* @btrfs_header_nritems(%struct.extent_buffer* %56)
  store i8* %57, i8** %14, align 8
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %63 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %62, i32 0, i32 2
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr i8, i8* %64, i64 -1
  %66 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %61, %struct.TYPE_4__* %63, i8* %65)
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %68 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %67)
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %70 = call i32 @free_extent_buffer(%struct.extent_buffer* %69)
  %71 = call i32 @memset(%struct.btrfs_key* %7, i32 0, i32 24)
  br label %76

72:                                               ; preds = %45
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %74 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %73, i32 0, i32 1
  %75 = call i32 @memcpy(%struct.btrfs_key* %7, %struct.btrfs_key* %74, i32 24)
  br label %76

76:                                               ; preds = %72, %51
  %77 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %78 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %81 = load i32, i32* @BTRFS_OLDEST_GENERATION, align 4
  %82 = call i32 @btrfs_search_forward(%struct.btrfs_root* %79, %struct.btrfs_key* %7, %struct.btrfs_path* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %163

86:                                               ; preds = %76
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %163

90:                                               ; preds = %86
  %91 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %92 = call i32 @btrfs_release_path(%struct.btrfs_path* %91)
  %93 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %94 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %96 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %97 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %98 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %95, %struct.btrfs_root* %96, %struct.btrfs_key* %7, %struct.btrfs_path* %97, i32 0, i32 1)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %8, align 4
  br label %163

103:                                              ; preds = %90
  %104 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %105 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %104, i32 0, i32 3
  %106 = load %struct.extent_buffer**, %struct.extent_buffer*** %105, align 8
  %107 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %106, i64 1
  %108 = load %struct.extent_buffer*, %struct.extent_buffer** %107, align 8
  %109 = icmp ne %struct.extent_buffer* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  br label %163

111:                                              ; preds = %103
  %112 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %113 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @BUG_ON(i32 %118)
  %120 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %121 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %122 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %123 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %122, i32 0, i32 3
  %124 = load %struct.extent_buffer**, %struct.extent_buffer*** %123, align 8
  %125 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %124, i64 1
  %126 = load %struct.extent_buffer*, %struct.extent_buffer** %125, align 8
  %127 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %128 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %127, i32 0, i32 1
  %129 = call i32 @btrfs_realloc_node(%struct.btrfs_trans_handle* %120, %struct.btrfs_root* %121, %struct.extent_buffer* %126, i32 0, i32* %12, %struct.btrfs_key* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %111
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @EAGAIN, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp eq i32 %133, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @WARN_ON(i32 %137)
  br label %163

139:                                              ; preds = %111
  %140 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %141 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %140, i32 0, i32 3
  %142 = load %struct.extent_buffer**, %struct.extent_buffer*** %141, align 8
  %143 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %142, i64 1
  %144 = load %struct.extent_buffer*, %struct.extent_buffer** %143, align 8
  %145 = call i8* @btrfs_header_nritems(%struct.extent_buffer* %144)
  %146 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %147 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %146, i32 0, i32 4
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 1
  store i8* %145, i8** %149, align 8
  %150 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %151 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %152 = load i32, i32* @BTRFS_OLDEST_GENERATION, align 4
  %153 = call i32 @btrfs_find_next_key(%struct.btrfs_root* %150, %struct.btrfs_path* %151, %struct.btrfs_key* %7, i32 1, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %139
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %158 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %157, i32 0, i32 1
  %159 = call i32 @memcpy(%struct.btrfs_key* %158, %struct.btrfs_key* %7, i32 24)
  %160 = load i32, i32* @EAGAIN, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %156, %139
  br label %163

163:                                              ; preds = %162, %132, %110, %101, %89, %85, %44, %29, %22
  %164 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %165 = call i32 @btrfs_free_path(%struct.btrfs_path* %164)
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @EAGAIN, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %204

170:                                              ; preds = %163
  %171 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %172 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %176 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %174, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  br label %205

181:                                              ; preds = %170
  %182 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %183 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %187 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %185, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %205

192:                                              ; preds = %181
  %193 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %194 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %198 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %196, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  br label %205

203:                                              ; preds = %192
  store i32 0, i32* %8, align 4
  br label %204

204:                                              ; preds = %203, %163
  br label %205

205:                                              ; preds = %204, %202, %191, %180
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @EAGAIN, align 4
  %208 = sub nsw i32 0, %207
  %209 = icmp ne i32 %206, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %212 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %211, i32 0, i32 1
  %213 = call i32 @memset(%struct.btrfs_key* %212, i32 0, i32 24)
  %214 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %215 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %218 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %210, %205
  %220 = load i32, i32* %8, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %219, %34
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_header_level(i32) #1

declare dso_local %struct.extent_buffer* @btrfs_lock_root_node(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer*) #1

declare dso_local i8* @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @memset(%struct.btrfs_key*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.btrfs_key*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_search_forward(%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_realloc_node(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, i32, i32*, %struct.btrfs_key*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_find_next_key(%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
