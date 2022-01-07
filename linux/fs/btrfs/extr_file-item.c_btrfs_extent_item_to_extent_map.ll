; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file-item.c_btrfs_extent_item_to_extent_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file-item.c_btrfs_extent_item_to_extent_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { %struct.btrfs_root* }
%struct.btrfs_root = type { %struct.TYPE_4__, %struct.btrfs_fs_info* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_fs_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_file_extent_item = type { i32 }
%struct.extent_map = type { i32, i32, i64, i8*, i64, i64, i8*, i64, i8*, i32 }
%struct.btrfs_key = type { i64 }

@BTRFS_FILE_EXTENT_REG = common dso_local global i64 0, align 8
@BTRFS_FILE_EXTENT_PREALLOC = common dso_local global i64 0, align 8
@BTRFS_FILE_EXTENT_INLINE = common dso_local global i64 0, align 8
@EXTENT_MAP_HOLE = common dso_local global i8* null, align 8
@BTRFS_COMPRESS_NONE = common dso_local global i32 0, align 4
@EXTENT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@EXTENT_FLAG_PREALLOC = common dso_local global i32 0, align 4
@EXTENT_MAP_INLINE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [69 x i8] c"unknown file extent item type %d, inode %llu, offset %llu, root %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_extent_item_to_extent_map(%struct.btrfs_inode* %0, %struct.btrfs_path* %1, %struct.btrfs_file_extent_item* %2, i32 %3, %struct.extent_map* %4) #0 {
  %6 = alloca %struct.btrfs_inode*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_file_extent_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_map*, align 8
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_key, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %6, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %7, align 8
  store %struct.btrfs_file_extent_item* %2, %struct.btrfs_file_extent_item** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.extent_map* %4, %struct.extent_map** %10, align 8
  %22 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %22, i32 0, i32 0
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %23, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 1
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %25, align 8
  store %struct.btrfs_fs_info* %26, %struct.btrfs_fs_info** %11, align 8
  %27 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %27, i32 0, i32 0
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %28, align 8
  store %struct.btrfs_root* %29, %struct.btrfs_root** %12, align 8
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %31 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %30, i32 0, i32 1
  %32 = load %struct.extent_buffer**, %struct.extent_buffer*** %31, align 8
  %33 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %32, i64 0
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %33, align 8
  store %struct.extent_buffer* %34, %struct.extent_buffer** %13, align 8
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %36 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %41 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %42 = call i64 @btrfs_file_extent_type(%struct.extent_buffer* %40, %struct.btrfs_file_extent_item* %41)
  store i64 %42, i64* %19, align 8
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %44 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %45 = call i32 @btrfs_file_extent_compression(%struct.extent_buffer* %43, %struct.btrfs_file_extent_item* %44)
  store i32 %45, i32* %20, align 4
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %52 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 8
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %53, %struct.btrfs_key* %15, i32 %54)
  %56 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* @BTRFS_FILE_EXTENT_REG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %5
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* @BTRFS_FILE_EXTENT_PREALLOC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61, %5
  %66 = load i64, i64* %16, align 8
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %68 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %69 = call i64 @btrfs_file_extent_num_bytes(%struct.extent_buffer* %67, %struct.btrfs_file_extent_item* %68)
  %70 = add nsw i64 %66, %69
  store i64 %70, i64* %17, align 8
  br label %88

71:                                               ; preds = %61
  %72 = load i64, i64* %19, align 8
  %73 = load i64, i64* @BTRFS_FILE_EXTENT_INLINE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %77 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %78 = call i8* @btrfs_file_extent_ram_bytes(%struct.extent_buffer* %76, %struct.btrfs_file_extent_item* %77)
  %79 = ptrtoint i8* %78 to i64
  store i64 %79, i64* %21, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %21, align 8
  %82 = add i64 %80, %81
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %84 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ALIGN(i64 %82, i32 %85)
  store i64 %86, i64* %17, align 8
  br label %87

87:                                               ; preds = %75, %71
  br label %88

88:                                               ; preds = %87, %65
  %89 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %90 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %91 = call i8* @btrfs_file_extent_ram_bytes(%struct.extent_buffer* %89, %struct.btrfs_file_extent_item* %90)
  %92 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %93 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* @BTRFS_FILE_EXTENT_REG, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* @BTRFS_FILE_EXTENT_PREALLOC, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %178

101:                                              ; preds = %97, %88
  %102 = load i64, i64* %16, align 8
  %103 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %104 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %16, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %109 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %108, i32 0, i32 4
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %112 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %113 = call i64 @btrfs_file_extent_offset(%struct.extent_buffer* %111, %struct.btrfs_file_extent_item* %112)
  %114 = sub nsw i64 %110, %113
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %117 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %119 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %120 = call i64 @btrfs_file_extent_disk_num_bytes(%struct.extent_buffer* %118, %struct.btrfs_file_extent_item* %119)
  %121 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %122 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %121, i32 0, i32 7
  store i64 %120, i64* %122, align 8
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %124 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %125 = call i64 @btrfs_file_extent_disk_bytenr(%struct.extent_buffer* %123, %struct.btrfs_file_extent_item* %124)
  store i64 %125, i64* %18, align 8
  %126 = load i64, i64* %18, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %101
  %129 = load i8*, i8** @EXTENT_MAP_HOLE, align 8
  %130 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %131 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %130, i32 0, i32 6
  store i8* %129, i8** %131, align 8
  br label %226

132:                                              ; preds = %101
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* @BTRFS_COMPRESS_NONE, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = load i32, i32* @EXTENT_FLAG_COMPRESSED, align 4
  %138 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %139 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %138, i32 0, i32 1
  %140 = call i32 @set_bit(i32 %137, i32* %139)
  %141 = load i32, i32* %20, align 4
  %142 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %143 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i64, i64* %18, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %147 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  %148 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %149 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %152 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  br label %177

153:                                              ; preds = %132
  %154 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %155 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %156 = call i64 @btrfs_file_extent_offset(%struct.extent_buffer* %154, %struct.btrfs_file_extent_item* %155)
  %157 = load i64, i64* %18, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* %18, align 8
  %159 = load i64, i64* %18, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %162 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  %163 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %164 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %167 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* %19, align 8
  %169 = load i64, i64* @BTRFS_FILE_EXTENT_PREALLOC, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %153
  %172 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %173 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %174 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %173, i32 0, i32 1
  %175 = call i32 @set_bit(i32 %172, i32* %174)
  br label %176

176:                                              ; preds = %171, %153
  br label %177

177:                                              ; preds = %176, %136
  br label %226

178:                                              ; preds = %97
  %179 = load i64, i64* %19, align 8
  %180 = load i64, i64* @BTRFS_FILE_EXTENT_INLINE, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %214

182:                                              ; preds = %178
  %183 = load i8*, i8** @EXTENT_MAP_INLINE, align 8
  %184 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %185 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %184, i32 0, i32 6
  store i8* %183, i8** %185, align 8
  %186 = load i64, i64* %16, align 8
  %187 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %188 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %187, i32 0, i32 5
  store i64 %186, i64* %188, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* %16, align 8
  %191 = sub nsw i64 %189, %190
  %192 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %193 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %192, i32 0, i32 4
  store i64 %191, i64* %193, align 8
  %194 = load i8*, i8** @EXTENT_MAP_HOLE, align 8
  %195 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %196 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %195, i32 0, i32 3
  store i8* %194, i8** %196, align 8
  %197 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %198 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %197, i32 0, i32 2
  store i64 -1, i64* %198, align 8
  %199 = load i32, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %213, label %201

201:                                              ; preds = %182
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* @BTRFS_COMPRESS_NONE, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %201
  %206 = load i32, i32* @EXTENT_FLAG_COMPRESSED, align 4
  %207 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %208 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %207, i32 0, i32 1
  %209 = call i32 @set_bit(i32 %206, i32* %208)
  %210 = load i32, i32* %20, align 4
  %211 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %212 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %205, %201, %182
  br label %225

214:                                              ; preds = %178
  %215 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %216 = load i64, i64* %19, align 8
  %217 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %218 = call i32 @btrfs_ino(%struct.btrfs_inode* %217)
  %219 = load i64, i64* %16, align 8
  %220 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %221 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @btrfs_err(%struct.btrfs_fs_info* %215, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %216, i32 %218, i64 %219, i32 %223)
  br label %225

225:                                              ; preds = %214, %213
  br label %226

226:                                              ; preds = %128, %225, %177
  ret void
}

declare dso_local i64 @btrfs_file_extent_type(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i32 @btrfs_file_extent_compression(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i64 @btrfs_file_extent_num_bytes(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i8* @btrfs_file_extent_ram_bytes(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @btrfs_file_extent_offset(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i64 @btrfs_file_extent_disk_num_bytes(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i64 @btrfs_file_extent_disk_bytenr(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i64, i32, i64, i32) #1

declare dso_local i32 @btrfs_ino(%struct.btrfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
