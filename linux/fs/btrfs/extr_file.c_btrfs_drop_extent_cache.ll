; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_drop_extent_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_drop_extent_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { %struct.extent_map_tree }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64, i64, i64, i64, i64, i64, i64, i64, i8*, i32, i32, i32 }

@EXTENT_FLAG_PINNED = common dso_local global i32 0, align 4
@EXTENT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@EXTENT_FLAG_LOGGING = common dso_local global i32 0, align 4
@EXTENT_MAP_LAST_BYTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_drop_extent_cache(%struct.btrfs_inode* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_map*, align 8
  %10 = alloca %struct.extent_map*, align 8
  %11 = alloca %struct.extent_map*, align 8
  %12 = alloca %struct.extent_map_tree*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.extent_map* null, %struct.extent_map** %10, align 8
  store %struct.extent_map* null, %struct.extent_map** %11, align 8
  %22 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %22, i32 0, i32 0
  store %struct.extent_map_tree* %23, %struct.extent_map_tree** %12, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 %24, %25
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %13, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i64 -1, i64* %13, align 8
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %35, %4
  br label %37

37:                                               ; preds = %36, %126, %426
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %38 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %39 = icmp ne %struct.extent_map* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %41, %struct.extent_map** %10, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %44 = icmp ne %struct.extent_map* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %46, %struct.extent_map** %11, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %49 = icmp ne %struct.extent_map* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %52 = icmp ne %struct.extent_map* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %47
  store i32 1, i32* %20, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %56 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %55, i32 0, i32 0
  %57 = call i32 @write_lock(i32* %56)
  %58 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %58, i64 %59, i64 %60)
  store %struct.extent_map* %61, %struct.extent_map** %9, align 8
  %62 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %63 = icmp ne %struct.extent_map* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %54
  %65 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %66 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %65, i32 0, i32 0
  %67 = call i32 @write_unlock(i32* %66)
  br label %434

68:                                               ; preds = %54
  %69 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %70 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %17, align 8
  %72 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %73 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %14, align 8
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %132

77:                                               ; preds = %68
  %78 = load i32, i32* @EXTENT_FLAG_PINNED, align 4
  %79 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %80 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %79, i32 0, i32 0
  %81 = call i32 @test_bit(i32 %78, i64* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %132

83:                                               ; preds = %77
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %88 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %91 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %13, align 8
  %96 = add nsw i64 %94, %95
  %97 = icmp sge i64 %93, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %86
  %99 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %100 = call i32 @free_extent_map(%struct.extent_map* %99)
  %101 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %102 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %101, i32 0, i32 0
  %103 = call i32 @write_unlock(i32* %102)
  br label %434

104:                                              ; preds = %86, %83
  %105 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %106 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %109 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  store i64 %111, i64* %6, align 8
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %104
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %13, align 8
  %117 = add nsw i64 %115, %116
  %118 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %119 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %122 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = sub nsw i64 %117, %124
  store i64 %125, i64* %13, align 8
  br label %126

126:                                              ; preds = %114, %104
  %127 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %128 = call i32 @free_extent_map(%struct.extent_map* %127)
  %129 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %130 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %129, i32 0, i32 0
  %131 = call i32 @write_unlock(i32* %130)
  br label %37

132:                                              ; preds = %77, %68
  %133 = load i32, i32* @EXTENT_FLAG_COMPRESSED, align 4
  %134 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %135 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %134, i32 0, i32 0
  %136 = call i32 @test_bit(i32 %133, i64* %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* @EXTENT_FLAG_PINNED, align 4
  %138 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %139 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %138, i32 0, i32 0
  %140 = call i32 @clear_bit(i32 %137, i64* %139)
  %141 = load i32, i32* @EXTENT_FLAG_LOGGING, align 4
  %142 = call i32 @clear_bit(i32 %141, i64* %17)
  %143 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %144 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %143, i32 0, i32 11
  %145 = call i32 @list_empty(i32* %144)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %20, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %132
  br label %418

152:                                              ; preds = %132
  %153 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %154 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %6, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %261

158:                                              ; preds = %152
  %159 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %160 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %163 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load i64, i64* %6, align 8
  %165 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %166 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %164, %167
  %169 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %170 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %169, i32 0, i32 3
  store i64 %168, i64* %170, align 8
  %171 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %172 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %176, label %216

176:                                              ; preds = %158
  %177 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %178 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %181 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %180, i32 0, i32 5
  store i64 %179, i64* %181, align 8
  %182 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %183 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %186 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %185, i32 0, i32 4
  store i64 %184, i64* %186, align 8
  %187 = load i32, i32* %18, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %176
  %190 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %191 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %194 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %193, i32 0, i32 6
  store i64 %192, i64* %194, align 8
  br label %201

195:                                              ; preds = %176
  %196 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %197 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %200 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %199, i32 0, i32 6
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %195, %189
  %202 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %203 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %206 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %205, i32 0, i32 8
  %207 = load i8*, i8** %206, align 8
  %208 = call i8* @max(i64 %204, i8* %207)
  %209 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %210 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %209, i32 0, i32 8
  store i8* %208, i8** %210, align 8
  %211 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %212 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %215 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %214, i32 0, i32 7
  store i64 %213, i64* %215, align 8
  br label %236

216:                                              ; preds = %158
  %217 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %218 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %221 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %220, i32 0, i32 5
  store i64 %219, i64* %221, align 8
  %222 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %223 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %222, i32 0, i32 6
  store i64 0, i64* %223, align 8
  %224 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %225 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %228 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %227, i32 0, i32 4
  store i64 %226, i64* %228, align 8
  %229 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %230 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %229, i32 0, i32 8
  store i8* null, i8** %230, align 8
  %231 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %232 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %235 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %234, i32 0, i32 7
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %216, %201
  %237 = load i64, i64* %14, align 8
  %238 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %239 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %238, i32 0, i32 1
  store i64 %237, i64* %239, align 8
  %240 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %241 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %244 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %243, i32 0, i32 10
  store i32 %242, i32* %244, align 4
  %245 = load i64, i64* %17, align 8
  %246 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %247 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %246, i32 0, i32 0
  store i64 %245, i64* %247, align 8
  %248 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %249 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %252 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %251, i32 0, i32 9
  store i32 %250, i32* %252, align 8
  %253 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %254 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %255 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %256 = load i32, i32* %19, align 4
  %257 = call i32 @replace_extent_mapping(%struct.extent_map_tree* %253, %struct.extent_map* %254, %struct.extent_map* %255, i32 %256)
  %258 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %259 = call i32 @free_extent_map(%struct.extent_map* %258)
  %260 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  store %struct.extent_map* %260, %struct.extent_map** %10, align 8
  store %struct.extent_map* null, %struct.extent_map** %11, align 8
  br label %261

261:                                              ; preds = %236, %152
  %262 = load i32, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %417

264:                                              ; preds = %261
  %265 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %266 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %269 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %267, %270
  %272 = load i64, i64* %6, align 8
  %273 = load i64, i64* %13, align 8
  %274 = add nsw i64 %272, %273
  %275 = icmp sgt i64 %271, %274
  br i1 %275, label %276, label %417

276:                                              ; preds = %264
  %277 = load i64, i64* %6, align 8
  %278 = load i64, i64* %13, align 8
  %279 = add nsw i64 %277, %278
  %280 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %281 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = sub nsw i64 %279, %282
  store i64 %283, i64* %21, align 8
  %284 = load i64, i64* %6, align 8
  %285 = load i64, i64* %13, align 8
  %286 = add nsw i64 %284, %285
  %287 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %288 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %287, i32 0, i32 2
  store i64 %286, i64* %288, align 8
  %289 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %290 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %293 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %291, %294
  %296 = load i64, i64* %6, align 8
  %297 = load i64, i64* %13, align 8
  %298 = add nsw i64 %296, %297
  %299 = sub nsw i64 %295, %298
  %300 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %301 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %300, i32 0, i32 3
  store i64 %299, i64* %301, align 8
  %302 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %303 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %302, i32 0, i32 10
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %306 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %305, i32 0, i32 10
  store i32 %304, i32* %306, align 4
  %307 = load i64, i64* %17, align 8
  %308 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %309 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %308, i32 0, i32 0
  store i64 %307, i64* %309, align 8
  %310 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %311 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %314 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %313, i32 0, i32 9
  store i32 %312, i32* %314, align 8
  %315 = load i64, i64* %14, align 8
  %316 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %317 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %316, i32 0, i32 1
  store i64 %315, i64* %317, align 8
  %318 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %319 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %322 = icmp slt i64 %320, %321
  br i1 %322, label %323, label %375

323:                                              ; preds = %276
  %324 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %325 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %324, i32 0, i32 6
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %328 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %327, i32 0, i32 8
  %329 = load i8*, i8** %328, align 8
  %330 = call i8* @max(i64 %326, i8* %329)
  %331 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %332 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %331, i32 0, i32 8
  store i8* %330, i8** %332, align 8
  %333 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %334 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %333, i32 0, i32 7
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %337 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %336, i32 0, i32 7
  store i64 %335, i64* %337, align 8
  %338 = load i32, i32* %18, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %356

340:                                              ; preds = %323
  %341 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %342 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %341, i32 0, i32 6
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %345 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %344, i32 0, i32 6
  store i64 %343, i64* %345, align 8
  %346 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %347 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %346, i32 0, i32 4
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %350 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %349, i32 0, i32 4
  store i64 %348, i64* %350, align 8
  %351 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %352 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %351, i32 0, i32 5
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %355 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %354, i32 0, i32 5
  store i64 %353, i64* %355, align 8
  br label %374

356:                                              ; preds = %323
  %357 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %358 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %361 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %360, i32 0, i32 6
  store i64 %359, i64* %361, align 8
  %362 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %363 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* %21, align 8
  %366 = add nsw i64 %364, %365
  %367 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %368 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %367, i32 0, i32 4
  store i64 %366, i64* %368, align 8
  %369 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %370 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %369, i32 0, i32 5
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %373 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %372, i32 0, i32 5
  store i64 %371, i64* %373, align 8
  br label %374

374:                                              ; preds = %356, %340
  br label %395

375:                                              ; preds = %276
  %376 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %377 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %376, i32 0, i32 3
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %380 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %379, i32 0, i32 7
  store i64 %378, i64* %380, align 8
  %381 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %382 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %385 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %384, i32 0, i32 5
  store i64 %383, i64* %385, align 8
  %386 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %387 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %386, i32 0, i32 6
  store i64 0, i64* %387, align 8
  %388 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %389 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %388, i32 0, i32 4
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %392 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %391, i32 0, i32 4
  store i64 %390, i64* %392, align 8
  %393 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %394 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %393, i32 0, i32 8
  store i8* null, i8** %394, align 8
  br label %395

395:                                              ; preds = %375, %374
  %396 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %397 = call i64 @extent_map_in_tree(%struct.extent_map* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %395
  %400 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %401 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %402 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %403 = load i32, i32* %19, align 4
  %404 = call i32 @replace_extent_mapping(%struct.extent_map_tree* %400, %struct.extent_map* %401, %struct.extent_map* %402, i32 %403)
  br label %414

405:                                              ; preds = %395
  %406 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %407 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %408 = load i32, i32* %19, align 4
  %409 = call i32 @add_extent_mapping(%struct.extent_map_tree* %406, %struct.extent_map* %407, i32 %408)
  store i32 %409, i32* %15, align 4
  %410 = load i32, i32* %15, align 4
  %411 = icmp eq i32 %410, 0
  %412 = zext i1 %411 to i32
  %413 = call i32 @ASSERT(i32 %412)
  br label %414

414:                                              ; preds = %405, %399
  %415 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %416 = call i32 @free_extent_map(%struct.extent_map* %415)
  store %struct.extent_map* null, %struct.extent_map** %10, align 8
  br label %417

417:                                              ; preds = %414, %264, %261
  br label %418

418:                                              ; preds = %417, %151
  %419 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %420 = call i64 @extent_map_in_tree(%struct.extent_map* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %418
  %423 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %424 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %425 = call i32 @remove_extent_mapping(%struct.extent_map_tree* %423, %struct.extent_map* %424)
  br label %426

426:                                              ; preds = %422, %418
  %427 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %428 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %427, i32 0, i32 0
  %429 = call i32 @write_unlock(i32* %428)
  %430 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %431 = call i32 @free_extent_map(%struct.extent_map* %430)
  %432 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %433 = call i32 @free_extent_map(%struct.extent_map* %432)
  br label %37

434:                                              ; preds = %98, %64
  %435 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %436 = icmp ne %struct.extent_map* %435, null
  br i1 %436, label %437, label %440

437:                                              ; preds = %434
  %438 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %439 = call i32 @free_extent_map(%struct.extent_map* %438)
  br label %440

440:                                              ; preds = %437, %434
  %441 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %442 = icmp ne %struct.extent_map* %441, null
  br i1 %442, label %443, label %446

443:                                              ; preds = %440
  %444 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %445 = call i32 @free_extent_map(%struct.extent_map* %444)
  br label %446

446:                                              ; preds = %443, %440
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.extent_map* @alloc_extent_map(...) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i64) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i8* @max(i64, i8*) #1

declare dso_local i32 @replace_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*, %struct.extent_map*, i32) #1

declare dso_local i64 @extent_map_in_tree(%struct.extent_map*) #1

declare dso_local i32 @add_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @remove_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
