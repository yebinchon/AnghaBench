; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_get_fs_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_get_fs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32 }
%struct.btrfs_fs_info = type { %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root* }
%struct.btrfs_key = type { i64, i64, i32 }
%struct.btrfs_path = type { i32 }

@BTRFS_ROOT_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_EXTENT_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_CHUNK_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_DEV_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_CSUM_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_QUOTA_TREE_OBJECTID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_UUID_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_FREE_SPACE_TREE_OBJECTID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_ORPHAN_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_ORPHAN_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_ROOT_ORPHAN_ITEM_INSERTED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_root* @btrfs_get_fs_root(%struct.btrfs_fs_info* %0, %struct.btrfs_key* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %13 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BTRFS_ROOT_TREE_OBJECTID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 0
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %4, align 8
  br label %231

21:                                               ; preds = %3
  %22 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BTRFS_EXTENT_TREE_OBJECTID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 7
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %29, align 8
  store %struct.btrfs_root* %30, %struct.btrfs_root** %4, align 8
  br label %231

31:                                               ; preds = %21
  %32 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %33 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BTRFS_CHUNK_TREE_OBJECTID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 6
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %39, align 8
  store %struct.btrfs_root* %40, %struct.btrfs_root** %4, align 8
  br label %231

41:                                               ; preds = %31
  %42 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %43 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BTRFS_DEV_TREE_OBJECTID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %49 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %48, i32 0, i32 5
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %49, align 8
  store %struct.btrfs_root* %50, %struct.btrfs_root** %4, align 8
  br label %231

51:                                               ; preds = %41
  %52 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %53 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BTRFS_CSUM_TREE_OBJECTID, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %59 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %58, i32 0, i32 4
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %59, align 8
  store %struct.btrfs_root* %60, %struct.btrfs_root** %4, align 8
  br label %231

61:                                               ; preds = %51
  %62 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %63 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BTRFS_QUOTA_TREE_OBJECTID, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %69 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %68, i32 0, i32 3
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %69, align 8
  %71 = icmp ne %struct.btrfs_root* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 3
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %74, align 8
  br label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.btrfs_root* @ERR_PTR(i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi %struct.btrfs_root* [ %75, %72 ], [ %79, %76 ]
  store %struct.btrfs_root* %81, %struct.btrfs_root** %4, align 8
  br label %231

82:                                               ; preds = %61
  %83 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %84 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BTRFS_UUID_TREE_OBJECTID, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %90 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %89, i32 0, i32 2
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %90, align 8
  %92 = icmp ne %struct.btrfs_root* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %95 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %94, i32 0, i32 2
  %96 = load %struct.btrfs_root*, %struct.btrfs_root** %95, align 8
  br label %101

97:                                               ; preds = %88
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  %100 = call %struct.btrfs_root* @ERR_PTR(i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi %struct.btrfs_root* [ %96, %93 ], [ %100, %97 ]
  store %struct.btrfs_root* %102, %struct.btrfs_root** %4, align 8
  br label %231

103:                                              ; preds = %82
  %104 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %105 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BTRFS_FREE_SPACE_TREE_OBJECTID, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %111 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %110, i32 0, i32 1
  %112 = load %struct.btrfs_root*, %struct.btrfs_root** %111, align 8
  %113 = icmp ne %struct.btrfs_root* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %116 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %115, i32 0, i32 1
  %117 = load %struct.btrfs_root*, %struct.btrfs_root** %116, align 8
  br label %122

118:                                              ; preds = %109
  %119 = load i32, i32* @ENOENT, align 4
  %120 = sub nsw i32 0, %119
  %121 = call %struct.btrfs_root* @ERR_PTR(i32 %120)
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi %struct.btrfs_root* [ %117, %114 ], [ %121, %118 ]
  store %struct.btrfs_root* %123, %struct.btrfs_root** %4, align 8
  br label %231

124:                                              ; preds = %103
  br label %125

125:                                              ; preds = %220, %124
  %126 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %127 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %128 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call %struct.btrfs_root* @btrfs_lookup_fs_root(%struct.btrfs_fs_info* %126, i64 %129)
  store %struct.btrfs_root* %130, %struct.btrfs_root** %8, align 8
  %131 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %132 = icmp ne %struct.btrfs_root* %131, null
  br i1 %132, label %133, label %147

133:                                              ; preds = %125
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %138 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %137, i32 0, i32 1
  %139 = call i64 @btrfs_root_refs(i32* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @ENOENT, align 4
  %143 = sub nsw i32 0, %142
  %144 = call %struct.btrfs_root* @ERR_PTR(i32 %143)
  store %struct.btrfs_root* %144, %struct.btrfs_root** %4, align 8
  br label %231

145:                                              ; preds = %136, %133
  %146 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_root* %146, %struct.btrfs_root** %4, align 8
  br label %231

147:                                              ; preds = %125
  %148 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %149 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %148, i32 0, i32 0
  %150 = load %struct.btrfs_root*, %struct.btrfs_root** %149, align 8
  %151 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %152 = call %struct.btrfs_root* @btrfs_read_fs_root(%struct.btrfs_root* %150, %struct.btrfs_key* %151)
  store %struct.btrfs_root* %152, %struct.btrfs_root** %8, align 8
  %153 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %154 = call i64 @IS_ERR(%struct.btrfs_root* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_root* %157, %struct.btrfs_root** %4, align 8
  br label %231

158:                                              ; preds = %147
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %163 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %162, i32 0, i32 1
  %164 = call i64 @btrfs_root_refs(i32* %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @ENOENT, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %11, align 4
  br label %226

169:                                              ; preds = %161, %158
  %170 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %171 = call i32 @btrfs_init_fs_root(%struct.btrfs_root* %170)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %226

175:                                              ; preds = %169
  %176 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %176, %struct.btrfs_path** %9, align 8
  %177 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %178 = icmp ne %struct.btrfs_path* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %11, align 4
  br label %226

182:                                              ; preds = %175
  %183 = load i64, i64* @BTRFS_ORPHAN_OBJECTID, align 8
  %184 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  store i64 %183, i64* %184, align 8
  %185 = load i32, i32* @BTRFS_ORPHAN_ITEM_KEY, align 4
  %186 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 2
  store i32 %185, i32* %186, align 8
  %187 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %188 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  store i64 %189, i64* %190, align 8
  %191 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %192 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %191, i32 0, i32 0
  %193 = load %struct.btrfs_root*, %struct.btrfs_root** %192, align 8
  %194 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %195 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %193, %struct.btrfs_key* %10, %struct.btrfs_path* %194, i32 0, i32 0)
  store i32 %195, i32* %11, align 4
  %196 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %197 = call i32 @btrfs_free_path(%struct.btrfs_path* %196)
  %198 = load i32, i32* %11, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %182
  br label %226

201:                                              ; preds = %182
  %202 = load i32, i32* %11, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load i32, i32* @BTRFS_ROOT_ORPHAN_ITEM_INSERTED, align 4
  %206 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %207 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %206, i32 0, i32 0
  %208 = call i32 @set_bit(i32 %205, i32* %207)
  br label %209

209:                                              ; preds = %204, %201
  %210 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %211 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %212 = call i32 @btrfs_insert_fs_root(%struct.btrfs_fs_info* %210, %struct.btrfs_root* %211)
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %209
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @EEXIST, align 4
  %218 = sub nsw i32 0, %217
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %222 = call i32 @btrfs_free_fs_root(%struct.btrfs_root* %221)
  br label %125

223:                                              ; preds = %215
  br label %226

224:                                              ; preds = %209
  %225 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_root* %225, %struct.btrfs_root** %4, align 8
  br label %231

226:                                              ; preds = %223, %200, %179, %174, %166
  %227 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %228 = call i32 @btrfs_free_fs_root(%struct.btrfs_root* %227)
  %229 = load i32, i32* %11, align 4
  %230 = call %struct.btrfs_root* @ERR_PTR(i32 %229)
  store %struct.btrfs_root* %230, %struct.btrfs_root** %4, align 8
  br label %231

231:                                              ; preds = %226, %224, %156, %145, %141, %122, %101, %80, %57, %47, %37, %27, %17
  %232 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  ret %struct.btrfs_root* %232
}

declare dso_local %struct.btrfs_root* @ERR_PTR(i32) #1

declare dso_local %struct.btrfs_root* @btrfs_lookup_fs_root(%struct.btrfs_fs_info*, i64) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local %struct.btrfs_root* @btrfs_read_fs_root(%struct.btrfs_root*, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_init_fs_root(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_insert_fs_root(%struct.btrfs_fs_info*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_free_fs_root(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
