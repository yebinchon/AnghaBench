; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_modify_free_space_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_modify_free_space_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, i32* }
%struct.btrfs_key = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64, i64, i32)* @modify_free_space_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_free_space_bitmap(%struct.btrfs_trans_handle* %0, %struct.btrfs_block_group_cache* %1, %struct.btrfs_path* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_block_group_cache*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_root*, align 8
  %14 = alloca %struct.btrfs_key, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %8, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %26, align 8
  store %struct.btrfs_root* %27, %struct.btrfs_root** %13, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %31, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %6
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %40 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %38, %43
  store i64 %44, i64* %22, align 8
  %45 = load i64, i64* %22, align 8
  %46 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %47, align 8
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  store i64 -1, i64* %48, align 8
  %49 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %51 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %52 = call i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle* %49, %struct.btrfs_root* %50, %struct.btrfs_key* %14, %struct.btrfs_path* %51, i32 0, i32 1)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %208

56:                                               ; preds = %37
  %57 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %58 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %59 = load i64, i64* %22, align 8
  %60 = call i32 @free_space_test_bit(%struct.btrfs_block_group_cache* %57, %struct.btrfs_path* %58, i64 %59)
  store i32 %60, i32* %18, align 4
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %62 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %67 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @btrfs_item_key_to_cpu(i32 %65, %struct.btrfs_key* %14, i32 %70)
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %74, %76
  %78 = icmp sge i64 %72, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %56
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %82 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %83 = call i32 @free_space_next_bitmap(%struct.btrfs_trans_handle* %80, %struct.btrfs_root* %81, %struct.btrfs_path* %82)
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %21, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %208

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %56
  br label %102

89:                                               ; preds = %6
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %92, align 8
  %93 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  store i64 -1, i64* %93, align 8
  %94 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %96 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %97 = call i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle* %94, %struct.btrfs_root* %95, %struct.btrfs_key* %14, %struct.btrfs_path* %96, i32 0, i32 1)
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %208

101:                                              ; preds = %89
  store i32 -1, i32* %18, align 4
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i64, i64* %10, align 8
  store i64 %103, i64* %16, align 8
  %104 = load i64, i64* %11, align 8
  store i64 %104, i64* %17, align 8
  br label %105

105:                                              ; preds = %102, %124
  %106 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %107 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @free_space_set_bits(%struct.btrfs_block_group_cache* %106, %struct.btrfs_path* %107, i64* %16, i64* %17, i32 %111)
  %113 = load i64, i64* %17, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %125

116:                                              ; preds = %105
  %117 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %118 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %120 = call i32 @free_space_next_bitmap(%struct.btrfs_trans_handle* %117, %struct.btrfs_root* %118, %struct.btrfs_path* %119)
  store i32 %120, i32* %21, align 4
  %121 = load i32, i32* %21, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %208

124:                                              ; preds = %116
  br label %105

125:                                              ; preds = %115
  %126 = load i64, i64* %15, align 8
  %127 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %128 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %132 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %130, %134
  %136 = icmp slt i64 %126, %135
  br i1 %136, label %137, label %170

137:                                              ; preds = %125
  %138 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %139 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %144 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @btrfs_item_key_to_cpu(i32 %142, %struct.btrfs_key* %14, i32 %147)
  %149 = load i64, i64* %15, align 8
  %150 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %151, %153
  %155 = icmp sge i64 %149, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %137
  %157 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %158 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %159 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %160 = call i32 @free_space_next_bitmap(%struct.btrfs_trans_handle* %157, %struct.btrfs_root* %158, %struct.btrfs_path* %159)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %208

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %137
  %166 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %167 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %168 = load i64, i64* %15, align 8
  %169 = call i32 @free_space_test_bit(%struct.btrfs_block_group_cache* %166, %struct.btrfs_path* %167, i64 %168)
  store i32 %169, i32* %19, align 4
  br label %171

170:                                              ; preds = %125
  store i32 -1, i32* %19, align 4
  br label %171

171:                                              ; preds = %170, %165
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  store i32 -1, i32* %20, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %20, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %20, align 4
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %19, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %20, align 4
  br label %186

186:                                              ; preds = %183, %180
  br label %200

187:                                              ; preds = %171
  store i32 1, i32* %20, align 4
  %188 = load i32, i32* %18, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* %20, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %20, align 4
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* %19, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %20, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %20, align 4
  br label %199

199:                                              ; preds = %196, %193
  br label %200

200:                                              ; preds = %199, %186
  %201 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %202 = call i32 @btrfs_release_path(%struct.btrfs_path* %201)
  %203 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %204 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %205 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %206 = load i32, i32* %20, align 4
  %207 = call i32 @update_free_space_extent_count(%struct.btrfs_trans_handle* %203, %struct.btrfs_block_group_cache* %204, %struct.btrfs_path* %205, i32 %206)
  store i32 %207, i32* %21, align 4
  br label %208

208:                                              ; preds = %200, %163, %123, %100, %86, %55
  %209 = load i32, i32* %21, align 4
  ret i32 %209
}

declare dso_local i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @free_space_test_bit(%struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @free_space_next_bitmap(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @free_space_set_bits(%struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64*, i64*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @update_free_space_extent_count(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
