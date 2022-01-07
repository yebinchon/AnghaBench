; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_populate_free_space_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_populate_free_space_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_block_group_cache = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.btrfs_path = type { i32*, i32*, i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@READA_FORWARD = common dso_local global i32 0, align 4
@BTRFS_EXTENT_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_METADATA_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_BLOCK_GROUP_ITEM_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*)* @populate_free_space_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_free_space_tree(%struct.btrfs_trans_handle* %0, %struct.btrfs_block_group_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %5, align 8
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  store %struct.btrfs_root* %17, %struct.btrfs_root** %6, align 8
  %18 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %18, %struct.btrfs_path** %7, align 8
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %20 = icmp ne %struct.btrfs_path* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %203

24:                                               ; preds = %2
  %25 = load i32, i32* @READA_FORWARD, align 4
  %26 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %27 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %28, %struct.btrfs_path** %8, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %30 = icmp ne %struct.btrfs_path* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %33 = call i32 @btrfs_free_path(%struct.btrfs_path* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %203

36:                                               ; preds = %24
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %38 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %40 = call i32 @add_new_free_space_info(%struct.btrfs_trans_handle* %37, %struct.btrfs_block_group_cache* %38, %struct.btrfs_path* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %197

44:                                               ; preds = %36
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %49 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* @BTRFS_EXTENT_ITEM_KEY, align 8
  %54 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %58 = call i32 @btrfs_search_slot_for_read(%struct.btrfs_root* %56, %struct.btrfs_key* %9, %struct.btrfs_path* %57, i32 1, i32 0)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %193

62:                                               ; preds = %44
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %68 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  %71 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %72 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %76 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %74, %78
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %62, %174
  %81 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %82 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %87 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @btrfs_item_key_to_cpu(i32 %85, %struct.btrfs_key* %9, i32 %90)
  %92 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BTRFS_EXTENT_ITEM_KEY, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %101, label %96

96:                                               ; preds = %80
  %97 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BTRFS_METADATA_ITEM_KEY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %147

101:                                              ; preds = %96, %80
  %102 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %175

107:                                              ; preds = %101
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %114 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %115 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = sub nsw i64 %118, %119
  %121 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %113, %struct.btrfs_block_group_cache* %114, %struct.btrfs_path* %115, i64 %116, i64 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %193

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %107
  %127 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %10, align 8
  %129 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @BTRFS_METADATA_ITEM_KEY, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %135 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %10, align 8
  br label %146

141:                                              ; preds = %126
  %142 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %10, align 8
  br label %146

146:                                              ; preds = %141, %133
  br label %163

147:                                              ; preds = %96
  %148 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @BTRFS_BLOCK_GROUP_ITEM_KEY, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %156 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %154, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %175

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161, %147
  br label %163

163:                                              ; preds = %162, %146
  %164 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %165 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %166 = call i32 @btrfs_next_item(%struct.btrfs_root* %164, %struct.btrfs_path* %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %193

170:                                              ; preds = %163
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %175

174:                                              ; preds = %170
  br label %80

175:                                              ; preds = %173, %160, %106
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* %11, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %175
  %180 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %181 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %182 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* %11, align 8
  %185 = load i64, i64* %10, align 8
  %186 = sub nsw i64 %184, %185
  %187 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %180, %struct.btrfs_block_group_cache* %181, %struct.btrfs_path* %182, i64 %183, i64 %186)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  br label %193

191:                                              ; preds = %179
  br label %192

192:                                              ; preds = %191, %175
  store i32 0, i32* %12, align 4
  br label %193

193:                                              ; preds = %192, %190, %169, %124, %61
  %194 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %195 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %194, i32 0, i32 0
  %196 = call i32 @mutex_unlock(i32* %195)
  br label %197

197:                                              ; preds = %193, %43
  %198 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %199 = call i32 @btrfs_free_path(%struct.btrfs_path* %198)
  %200 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %201 = call i32 @btrfs_free_path(%struct.btrfs_path* %200)
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %197, %31, %21
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @add_new_free_space_info(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_search_slot_for_read(%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64, i64) #1

declare dso_local i32 @btrfs_next_item(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
