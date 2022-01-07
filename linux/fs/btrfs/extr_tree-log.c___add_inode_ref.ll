; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c___add_inode_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c___add_inode_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_inode = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_key = type { i64, i64, i32 }
%struct.btrfs_inode_extref = type { i32 }
%struct.btrfs_inode_ref = type { i32 }
%struct.inode = type { i32 }

@BTRFS_INODE_REF_KEY = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_EXTREF_KEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_root*, %struct.btrfs_inode*, %struct.btrfs_inode*, i8*, i8*, i8*, i8*, i32, i32*)* @__add_inode_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_inode_ref(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_root* %3, %struct.btrfs_inode* %4, %struct.btrfs_inode* %5, i8* %6, i8* %7, i8* %8, i8* %9, i32 %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_trans_handle*, align 8
  %15 = alloca %struct.btrfs_root*, align 8
  %16 = alloca %struct.btrfs_path*, align 8
  %17 = alloca %struct.btrfs_root*, align 8
  %18 = alloca %struct.btrfs_inode*, align 8
  %19 = alloca %struct.btrfs_inode*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.extent_buffer*, align 8
  %30 = alloca %struct.btrfs_dir_item*, align 8
  %31 = alloca %struct.btrfs_key, align 8
  %32 = alloca %struct.btrfs_inode_extref*, align 8
  %33 = alloca %struct.btrfs_inode_ref*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca %struct.inode*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %14, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %15, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %16, align 8
  store %struct.btrfs_root* %3, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_inode* %4, %struct.btrfs_inode** %18, align 8
  store %struct.btrfs_inode* %5, %struct.btrfs_inode** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32* %11, i32** %25, align 8
  br label %40

40:                                               ; preds = %275, %141, %12
  %41 = load i8*, i8** %20, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %31, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @BTRFS_INODE_REF_KEY, align 4
  %45 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %31, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load i8*, i8** %21, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %31, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %51 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %49, %struct.btrfs_key* %31, %struct.btrfs_path* %50, i32 0, i32 0)
  store i32 %51, i32* %26, align 4
  %52 = load i32, i32* %26, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %154

54:                                               ; preds = %40
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %56 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %55, i32 0, i32 1
  %57 = load %struct.extent_buffer**, %struct.extent_buffer*** %56, align 8
  %58 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %57, i64 0
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %58, align 8
  store %struct.extent_buffer* %59, %struct.extent_buffer** %29, align 8
  %60 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %31, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %31, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 1, i32* %13, align 4
  br label %350

66:                                               ; preds = %54
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %68 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %69 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %67, i32 %72)
  store i64 %73, i64* %34, align 8
  %74 = load i64, i64* %34, align 8
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %77 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %75, i32 %80)
  %82 = add i64 %74, %81
  store i64 %82, i64* %35, align 8
  br label %83

83:                                               ; preds = %143, %66
  %84 = load i64, i64* %34, align 8
  %85 = load i64, i64* %35, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %152

87:                                               ; preds = %83
  %88 = load i64, i64* %34, align 8
  %89 = inttoptr i64 %88 to %struct.btrfs_inode_ref*
  store %struct.btrfs_inode_ref* %89, %struct.btrfs_inode_ref** %33, align 8
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %91 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %33, align 8
  %92 = call i32 @btrfs_inode_ref_name_len(%struct.extent_buffer* %90, %struct.btrfs_inode_ref* %91)
  store i32 %92, i32* %28, align 4
  %93 = load i32, i32* %28, align 4
  %94 = load i32, i32* @GFP_NOFS, align 4
  %95 = call i8* @kmalloc(i32 %93, i32 %94)
  store i8* %95, i8** %27, align 8
  %96 = load i8*, i8** %27, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %87
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %13, align 4
  br label %350

101:                                              ; preds = %87
  %102 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %103 = load i8*, i8** %27, align 8
  %104 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %33, align 8
  %105 = getelementptr inbounds %struct.btrfs_inode_ref, %struct.btrfs_inode_ref* %104, i64 1
  %106 = ptrtoint %struct.btrfs_inode_ref* %105 to i64
  %107 = load i32, i32* %28, align 4
  %108 = call i32 @read_extent_buffer(%struct.extent_buffer* %102, i8* %103, i64 %106, i32 %107)
  %109 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %110 = load i8*, i8** %21, align 8
  %111 = load i8*, i8** %27, align 8
  %112 = load i32, i32* %28, align 4
  %113 = call i32 @backref_in_log(%struct.btrfs_root* %109, %struct.btrfs_key* %31, i8* %110, i8* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %143, label %115

115:                                              ; preds = %101
  %116 = load %struct.btrfs_inode*, %struct.btrfs_inode** %19, align 8
  %117 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %116, i32 0, i32 0
  %118 = call i32 @inc_nlink(i32* %117)
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %120 = call i32 @btrfs_release_path(%struct.btrfs_path* %119)
  %121 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %122 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %123 = load %struct.btrfs_inode*, %struct.btrfs_inode** %18, align 8
  %124 = load %struct.btrfs_inode*, %struct.btrfs_inode** %19, align 8
  %125 = load i8*, i8** %27, align 8
  %126 = load i32, i32* %28, align 4
  %127 = call i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle* %121, %struct.btrfs_root* %122, %struct.btrfs_inode* %123, %struct.btrfs_inode* %124, i8* %125, i32 %126)
  store i32 %127, i32* %26, align 4
  %128 = load i8*, i8** %27, align 8
  %129 = call i32 @kfree(i8* %128)
  %130 = load i32, i32* %26, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %115
  %133 = load i32, i32* %26, align 4
  store i32 %133, i32* %13, align 4
  br label %350

134:                                              ; preds = %115
  %135 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %136 = call i32 @btrfs_run_delayed_items(%struct.btrfs_trans_handle* %135)
  store i32 %136, i32* %26, align 4
  %137 = load i32, i32* %26, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* %26, align 4
  store i32 %140, i32* %13, align 4
  br label %350

141:                                              ; preds = %134
  %142 = load i32*, i32** %25, align 8
  store i32 1, i32* %142, align 4
  br label %40

143:                                              ; preds = %101
  %144 = load i8*, i8** %27, align 8
  %145 = call i32 @kfree(i8* %144)
  %146 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %33, align 8
  %147 = getelementptr inbounds %struct.btrfs_inode_ref, %struct.btrfs_inode_ref* %146, i64 1
  %148 = ptrtoint %struct.btrfs_inode_ref* %147 to i64
  %149 = load i32, i32* %28, align 4
  %150 = sext i32 %149 to i64
  %151 = add i64 %148, %150
  store i64 %151, i64* %34, align 8
  br label %83

152:                                              ; preds = %83
  %153 = load i32*, i32** %25, align 8
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %152, %40
  %155 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %156 = call i32 @btrfs_release_path(%struct.btrfs_path* %155)
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %158 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %159 = load i8*, i8** %23, align 8
  %160 = load i32, i32* %24, align 4
  %161 = load i8*, i8** %20, align 8
  %162 = load i8*, i8** %21, align 8
  %163 = call %struct.btrfs_inode_extref* @btrfs_lookup_inode_extref(i32* null, %struct.btrfs_root* %157, %struct.btrfs_path* %158, i8* %159, i32 %160, i8* %161, i8* %162, i32 0, i32 0)
  store %struct.btrfs_inode_extref* %163, %struct.btrfs_inode_extref** %32, align 8
  %164 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %32, align 8
  %165 = call i32 @IS_ERR_OR_NULL(%struct.btrfs_inode_extref* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %288, label %167

167:                                              ; preds = %154
  store i64 0, i64* %37, align 8
  %168 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %169 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %168, i32 0, i32 1
  %170 = load %struct.extent_buffer**, %struct.extent_buffer*** %169, align 8
  %171 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %170, i64 0
  %172 = load %struct.extent_buffer*, %struct.extent_buffer** %171, align 8
  store %struct.extent_buffer* %172, %struct.extent_buffer** %29, align 8
  %173 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %174 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %175 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %173, i32 %178)
  store i64 %179, i64* %36, align 8
  %180 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %181 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %182 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %180, i32 %185)
  store i64 %186, i64* %38, align 8
  br label %187

187:                                              ; preds = %280, %167
  %188 = load i64, i64* %37, align 8
  %189 = load i64, i64* %36, align 8
  %190 = icmp ult i64 %188, %189
  br i1 %190, label %191, label %286

191:                                              ; preds = %187
  %192 = load i64, i64* %38, align 8
  %193 = load i64, i64* %37, align 8
  %194 = add i64 %192, %193
  %195 = inttoptr i64 %194 to %struct.btrfs_inode_extref*
  store %struct.btrfs_inode_extref* %195, %struct.btrfs_inode_extref** %32, align 8
  %196 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %197 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %32, align 8
  %198 = call i32 @btrfs_inode_extref_name_len(%struct.extent_buffer* %196, %struct.btrfs_inode_extref* %197)
  store i32 %198, i32* %28, align 4
  %199 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %200 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %32, align 8
  %201 = call i8* @btrfs_inode_extref_parent(%struct.extent_buffer* %199, %struct.btrfs_inode_extref* %200)
  %202 = load i8*, i8** %21, align 8
  %203 = icmp ne i8* %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %191
  br label %280

205:                                              ; preds = %191
  %206 = load i32, i32* %28, align 4
  %207 = load i32, i32* @GFP_NOFS, align 4
  %208 = call i8* @kmalloc(i32 %206, i32 %207)
  store i8* %208, i8** %27, align 8
  %209 = load i8*, i8** %27, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %205
  %212 = load i32, i32* @ENOMEM, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %13, align 4
  br label %350

214:                                              ; preds = %205
  %215 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %216 = load i8*, i8** %27, align 8
  %217 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %32, align 8
  %218 = getelementptr inbounds %struct.btrfs_inode_extref, %struct.btrfs_inode_extref* %217, i32 0, i32 0
  %219 = ptrtoint i32* %218 to i64
  %220 = load i32, i32* %28, align 4
  %221 = call i32 @read_extent_buffer(%struct.extent_buffer* %215, i8* %216, i64 %219, i32 %220)
  %222 = load i8*, i8** %20, align 8
  %223 = ptrtoint i8* %222 to i64
  %224 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %31, i32 0, i32 0
  store i64 %223, i64* %224, align 8
  %225 = load i32, i32* @BTRFS_INODE_EXTREF_KEY, align 4
  %226 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %31, i32 0, i32 2
  store i32 %225, i32* %226, align 8
  %227 = load i8*, i8** %21, align 8
  %228 = load i8*, i8** %27, align 8
  %229 = load i32, i32* %28, align 4
  %230 = call i64 @btrfs_extref_hash(i8* %227, i8* %228, i32 %229)
  %231 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %31, i32 0, i32 1
  store i64 %230, i64* %231, align 8
  store i32 0, i32* %26, align 4
  %232 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %233 = load i8*, i8** %21, align 8
  %234 = load i8*, i8** %27, align 8
  %235 = load i32, i32* %28, align 4
  %236 = call i32 @backref_in_log(%struct.btrfs_root* %232, %struct.btrfs_key* %31, i8* %233, i8* %234, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %277, label %238

238:                                              ; preds = %214
  %239 = load i32, i32* @ENOENT, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %26, align 4
  %241 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %242 = load i8*, i8** %21, align 8
  %243 = call %struct.inode* @read_one_inode(%struct.btrfs_root* %241, i8* %242)
  store %struct.inode* %243, %struct.inode** %39, align 8
  %244 = load %struct.inode*, %struct.inode** %39, align 8
  %245 = icmp ne %struct.inode* %244, null
  br i1 %245, label %246, label %266

246:                                              ; preds = %238
  %247 = load %struct.btrfs_inode*, %struct.btrfs_inode** %19, align 8
  %248 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %247, i32 0, i32 0
  %249 = call i32 @inc_nlink(i32* %248)
  %250 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %251 = call i32 @btrfs_release_path(%struct.btrfs_path* %250)
  %252 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %253 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %254 = load %struct.inode*, %struct.inode** %39, align 8
  %255 = call %struct.btrfs_inode* @BTRFS_I(%struct.inode* %254)
  %256 = load %struct.btrfs_inode*, %struct.btrfs_inode** %19, align 8
  %257 = load i8*, i8** %27, align 8
  %258 = load i32, i32* %28, align 4
  %259 = call i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle* %252, %struct.btrfs_root* %253, %struct.btrfs_inode* %255, %struct.btrfs_inode* %256, i8* %257, i32 %258)
  store i32 %259, i32* %26, align 4
  %260 = load i32, i32* %26, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %246
  %263 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %264 = call i32 @btrfs_run_delayed_items(%struct.btrfs_trans_handle* %263)
  store i32 %264, i32* %26, align 4
  br label %265

265:                                              ; preds = %262, %246
  br label %266

266:                                              ; preds = %265, %238
  %267 = load %struct.inode*, %struct.inode** %39, align 8
  %268 = call i32 @iput(%struct.inode* %267)
  %269 = load i8*, i8** %27, align 8
  %270 = call i32 @kfree(i8* %269)
  %271 = load i32, i32* %26, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %266
  %274 = load i32, i32* %26, align 4
  store i32 %274, i32* %13, align 4
  br label %350

275:                                              ; preds = %266
  %276 = load i32*, i32** %25, align 8
  store i32 1, i32* %276, align 4
  br label %40

277:                                              ; preds = %214
  %278 = load i8*, i8** %27, align 8
  %279 = call i32 @kfree(i8* %278)
  br label %280

280:                                              ; preds = %277, %204
  %281 = load i32, i32* %28, align 4
  %282 = sext i32 %281 to i64
  %283 = add i64 %282, 4
  %284 = load i64, i64* %37, align 8
  %285 = add i64 %284, %283
  store i64 %285, i64* %37, align 8
  br label %187

286:                                              ; preds = %187
  %287 = load i32*, i32** %25, align 8
  store i32 1, i32* %287, align 4
  br label %288

288:                                              ; preds = %286, %154
  %289 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %290 = call i32 @btrfs_release_path(%struct.btrfs_path* %289)
  %291 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %292 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %293 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %294 = load %struct.btrfs_inode*, %struct.btrfs_inode** %18, align 8
  %295 = call i32 @btrfs_ino(%struct.btrfs_inode* %294)
  %296 = load i8*, i8** %22, align 8
  %297 = load i8*, i8** %23, align 8
  %298 = load i32, i32* %24, align 4
  %299 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_index_item(%struct.btrfs_trans_handle* %291, %struct.btrfs_root* %292, %struct.btrfs_path* %293, i32 %295, i8* %296, i8* %297, i32 %298, i32 0)
  store %struct.btrfs_dir_item* %299, %struct.btrfs_dir_item** %30, align 8
  %300 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %30, align 8
  %301 = icmp ne %struct.btrfs_dir_item* %300, null
  br i1 %301, label %302, label %318

302:                                              ; preds = %288
  %303 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %30, align 8
  %304 = call i32 @IS_ERR(%struct.btrfs_dir_item* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %318, label %306

306:                                              ; preds = %302
  %307 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %308 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %309 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %310 = load %struct.btrfs_inode*, %struct.btrfs_inode** %18, align 8
  %311 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %30, align 8
  %312 = call i32 @drop_one_dir_item(%struct.btrfs_trans_handle* %307, %struct.btrfs_root* %308, %struct.btrfs_path* %309, %struct.btrfs_inode* %310, %struct.btrfs_dir_item* %311)
  store i32 %312, i32* %26, align 4
  %313 = load i32, i32* %26, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %306
  %316 = load i32, i32* %26, align 4
  store i32 %316, i32* %13, align 4
  br label %350

317:                                              ; preds = %306
  br label %318

318:                                              ; preds = %317, %302, %288
  %319 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %320 = call i32 @btrfs_release_path(%struct.btrfs_path* %319)
  %321 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %322 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %323 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %324 = load %struct.btrfs_inode*, %struct.btrfs_inode** %18, align 8
  %325 = call i32 @btrfs_ino(%struct.btrfs_inode* %324)
  %326 = load i8*, i8** %23, align 8
  %327 = load i32, i32* %24, align 4
  %328 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_item(%struct.btrfs_trans_handle* %321, %struct.btrfs_root* %322, %struct.btrfs_path* %323, i32 %325, i8* %326, i32 %327, i32 0)
  store %struct.btrfs_dir_item* %328, %struct.btrfs_dir_item** %30, align 8
  %329 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %30, align 8
  %330 = icmp ne %struct.btrfs_dir_item* %329, null
  br i1 %330, label %331, label %347

331:                                              ; preds = %318
  %332 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %30, align 8
  %333 = call i32 @IS_ERR(%struct.btrfs_dir_item* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %347, label %335

335:                                              ; preds = %331
  %336 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %337 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %338 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %339 = load %struct.btrfs_inode*, %struct.btrfs_inode** %18, align 8
  %340 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %30, align 8
  %341 = call i32 @drop_one_dir_item(%struct.btrfs_trans_handle* %336, %struct.btrfs_root* %337, %struct.btrfs_path* %338, %struct.btrfs_inode* %339, %struct.btrfs_dir_item* %340)
  store i32 %341, i32* %26, align 4
  %342 = load i32, i32* %26, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %335
  %345 = load i32, i32* %26, align 4
  store i32 %345, i32* %13, align 4
  br label %350

346:                                              ; preds = %335
  br label %347

347:                                              ; preds = %346, %331, %318
  %348 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %349 = call i32 @btrfs_release_path(%struct.btrfs_path* %348)
  store i32 0, i32* %13, align 4
  br label %350

350:                                              ; preds = %347, %344, %315, %273, %211, %139, %132, %98, %65
  %351 = load i32, i32* %13, align 4
  ret i32 %351
}

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_inode_ref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_ref*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i8*, i64, i32) #1

declare dso_local i32 @backref_in_log(%struct.btrfs_root*, %struct.btrfs_key*, i8*, i8*, i32) #1

declare dso_local i32 @inc_nlink(i32*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_inode*, %struct.btrfs_inode*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @btrfs_run_delayed_items(%struct.btrfs_trans_handle*) #1

declare dso_local %struct.btrfs_inode_extref* @btrfs_lookup_inode_extref(i32*, %struct.btrfs_root*, %struct.btrfs_path*, i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.btrfs_inode_extref*) #1

declare dso_local i32 @btrfs_inode_extref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i8* @btrfs_inode_extref_parent(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i64 @btrfs_extref_hash(i8*, i8*, i32) #1

declare dso_local %struct.inode* @read_one_inode(%struct.btrfs_root*, i8*) #1

declare dso_local %struct.btrfs_inode* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_index_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @drop_one_dir_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_inode*, %struct.btrfs_dir_item*) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
