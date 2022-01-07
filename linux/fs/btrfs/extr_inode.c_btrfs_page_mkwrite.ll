; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_6__*, %struct.page* }
%struct.TYPE_6__ = type { i32 }
%struct.page = type { i64, i32 }
%struct.inode = type { i64, i32 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.extent_io_tree = type { i32 }
%struct.btrfs_ordered_extent = type { i32 }
%struct.extent_state = type { i32 }
%struct.extent_changeset = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32, i32, %struct.extent_io_tree }
%struct.TYPE_7__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_DO_ACCOUNTING = common dso_local global i32 0, align 4
@EXTENT_DEFRAG = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i64 0, align 8
@VM_FAULT_LOCKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btrfs_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.extent_io_tree*, align 8
  %8 = alloca %struct.btrfs_ordered_extent*, align 8
  %9 = alloca %struct.extent_state*, align 8
  %10 = alloca %struct.extent_changeset*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %21 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %22 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %21, i32 0, i32 1
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %4, align 8
  %24 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.inode* @file_inode(i32 %28)
  store %struct.inode* %29, %struct.inode** %5, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %32)
  store %struct.btrfs_fs_info* %33, %struct.btrfs_fs_info** %6, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  store %struct.extent_io_tree* %36, %struct.extent_io_tree** %7, align 8
  store %struct.extent_state* null, %struct.extent_state** %9, align 8
  store %struct.extent_changeset* null, %struct.extent_changeset** %10, align 8
  store i32 0, i32* %16, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %37, i32* %17, align 4
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sb_start_pagefault(i32 %40)
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @page_offset(%struct.page* %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = add nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  store i32 %48, i32* %20, align 4
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @btrfs_delalloc_reserve_space(%struct.inode* %49, %struct.extent_changeset** %10, i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %1
  %56 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %57 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @file_update_time(i32 %60)
  store i32 %61, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %62

62:                                               ; preds = %55, %1
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = call i64 @vmf_error(i32 %66)
  store i64 %67, i64* %14, align 8
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %262

71:                                               ; preds = %65
  br label %275

72:                                               ; preds = %62
  %73 = load i64, i64* @VM_FAULT_NOPAGE, align 8
  store i64 %73, i64* %14, align 8
  br label %74

74:                                               ; preds = %107, %72
  %75 = load %struct.page*, %struct.page** %4, align 8
  %76 = call i32 @lock_page(%struct.page* %75)
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call i32 @i_size_read(%struct.inode* %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.page*, %struct.page** %4, align 8
  %80 = getelementptr inbounds %struct.page, %struct.page* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %74
  br label %259

91:                                               ; preds = %86
  %92 = load %struct.page*, %struct.page** %4, align 8
  %93 = call i32 @wait_on_page_writeback(%struct.page* %92)
  %94 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @lock_extent_bits(%struct.extent_io_tree* %94, i32 %95, i32 %96, %struct.extent_state** %9)
  %98 = load %struct.page*, %struct.page** %4, align 8
  %99 = call i32 @set_page_extent_mapped(%struct.page* %98)
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %100)
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.TYPE_8__* %101, i32 %102, i32 %103)
  store %struct.btrfs_ordered_extent* %104, %struct.btrfs_ordered_extent** %8, align 8
  %105 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %8, align 8
  %106 = icmp ne %struct.btrfs_ordered_extent* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %91
  %108 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %108, i32 %109, i32 %110, %struct.extent_state** %9)
  %112 = load %struct.page*, %struct.page** %4, align 8
  %113 = call i32 @unlock_page(%struct.page* %112)
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %8, align 8
  %116 = call i32 @btrfs_start_ordered_extent(%struct.inode* %114, %struct.btrfs_ordered_extent* %115, i32 1)
  %117 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %8, align 8
  %118 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %117)
  br label %74

119:                                              ; preds = %91
  %120 = load %struct.page*, %struct.page** %4, align 8
  %121 = getelementptr inbounds %struct.page, %struct.page* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* @PAGE_SHIFT, align 4
  %126 = ashr i32 %124, %125
  %127 = icmp eq i32 %122, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %119
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %18, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %133 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @round_up(i32 %131, i32 %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %128
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %140, %141
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %20, align 4
  %144 = load %struct.inode*, %struct.inode** %5, align 8
  %145 = load %struct.extent_changeset*, %struct.extent_changeset** %10, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = load i32, i32* %17, align 4
  %149 = sub nsw i32 %147, %148
  %150 = call i32 @btrfs_delalloc_release_space(%struct.inode* %144, %struct.extent_changeset* %145, i32 %146, i32 %149, i32 1)
  br label %151

151:                                              ; preds = %139, %128
  br label %152

152:                                              ; preds = %151, %119
  %153 = load %struct.inode*, %struct.inode** %5, align 8
  %154 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %153)
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* @EXTENT_DELALLOC, align 4
  %159 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @EXTENT_DEFRAG, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @clear_extent_bit(%struct.extent_io_tree* %155, i32 %156, i32 %157, i32 %162, i32 0, i32 0, %struct.extent_state** %9)
  %164 = load %struct.inode*, %struct.inode** %5, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %20, align 4
  %167 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %164, i32 %165, i32 %166, i32 0, %struct.extent_state** %9)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %152
  %171 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* %19, align 4
  %174 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %171, i32 %172, i32 %173, %struct.extent_state** %9)
  %175 = load i64, i64* @VM_FAULT_SIGBUS, align 8
  store i64 %175, i64* %14, align 8
  br label %259

176:                                              ; preds = %152
  store i32 0, i32* %15, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* @PAGE_SIZE, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %13, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* %13, align 4
  %184 = call i64 @offset_in_page(i32 %183)
  store i64 %184, i64* %12, align 8
  br label %188

185:                                              ; preds = %176
  %186 = load i32, i32* @PAGE_SIZE, align 4
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %12, align 8
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i64, i64* %12, align 8
  %190 = load i32, i32* @PAGE_SIZE, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp ne i64 %189, %191
  br i1 %192, label %193, label %209

193:                                              ; preds = %188
  %194 = load %struct.page*, %struct.page** %4, align 8
  %195 = call i8* @kmap(%struct.page* %194)
  store i8* %195, i8** %11, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  %199 = load i32, i32* @PAGE_SIZE, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %12, align 8
  %202 = sub i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = call i32 @memset(i8* %198, i32 0, i32 %203)
  %205 = load %struct.page*, %struct.page** %4, align 8
  %206 = call i32 @flush_dcache_page(%struct.page* %205)
  %207 = load %struct.page*, %struct.page** %4, align 8
  %208 = call i32 @kunmap(%struct.page* %207)
  br label %209

209:                                              ; preds = %193, %188
  %210 = load %struct.page*, %struct.page** %4, align 8
  %211 = call i32 @ClearPageChecked(%struct.page* %210)
  %212 = load %struct.page*, %struct.page** %4, align 8
  %213 = call i32 @set_page_dirty(%struct.page* %212)
  %214 = load %struct.page*, %struct.page** %4, align 8
  %215 = call i32 @SetPageUptodate(%struct.page* %214)
  %216 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %217 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.inode*, %struct.inode** %5, align 8
  %220 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %219)
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 3
  store i32 %218, i32* %221, align 8
  %222 = load %struct.inode*, %struct.inode** %5, align 8
  %223 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %222)
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.inode*, %struct.inode** %5, align 8
  %229 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %228)
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  store i32 %227, i32* %230, align 4
  %231 = load %struct.inode*, %struct.inode** %5, align 8
  %232 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %231)
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.inode*, %struct.inode** %5, align 8
  %238 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %237)
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  store i32 %236, i32* %239, align 8
  %240 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %19, align 4
  %243 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %240, i32 %241, i32 %242, %struct.extent_state** %9)
  %244 = load i32, i32* %15, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %209
  %247 = load %struct.inode*, %struct.inode** %5, align 8
  %248 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %247)
  %249 = load i32, i32* @PAGE_SIZE, align 4
  %250 = call i32 @btrfs_delalloc_release_extents(%struct.TYPE_8__* %248, i32 %249)
  %251 = load %struct.inode*, %struct.inode** %5, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @sb_end_pagefault(i32 %253)
  %255 = load %struct.extent_changeset*, %struct.extent_changeset** %10, align 8
  %256 = call i32 @extent_changeset_free(%struct.extent_changeset* %255)
  %257 = load i64, i64* @VM_FAULT_LOCKED, align 8
  store i64 %257, i64* %2, align 8
  br label %283

258:                                              ; preds = %209
  br label %259

259:                                              ; preds = %258, %170, %90
  %260 = load %struct.page*, %struct.page** %4, align 8
  %261 = call i32 @unlock_page(%struct.page* %260)
  br label %262

262:                                              ; preds = %259, %70
  %263 = load %struct.inode*, %struct.inode** %5, align 8
  %264 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %263)
  %265 = load i32, i32* @PAGE_SIZE, align 4
  %266 = call i32 @btrfs_delalloc_release_extents(%struct.TYPE_8__* %264, i32 %265)
  %267 = load %struct.inode*, %struct.inode** %5, align 8
  %268 = load %struct.extent_changeset*, %struct.extent_changeset** %10, align 8
  %269 = load i32, i32* %18, align 4
  %270 = load i32, i32* %17, align 4
  %271 = load i64, i64* %14, align 8
  %272 = icmp ne i64 %271, 0
  %273 = zext i1 %272 to i32
  %274 = call i32 @btrfs_delalloc_release_space(%struct.inode* %267, %struct.extent_changeset* %268, i32 %269, i32 %270, i32 %273)
  br label %275

275:                                              ; preds = %262, %71
  %276 = load %struct.inode*, %struct.inode** %5, align 8
  %277 = getelementptr inbounds %struct.inode, %struct.inode* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @sb_end_pagefault(i32 %278)
  %280 = load %struct.extent_changeset*, %struct.extent_changeset** %10, align 8
  %281 = call i32 @extent_changeset_free(%struct.extent_changeset* %280)
  %282 = load i64, i64* %14, align 8
  store i64 %282, i64* %2, align 8
  br label %283

283:                                              ; preds = %275, %246
  %284 = load i64, i64* %2, align 8
  ret i64 %284
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @btrfs_delalloc_reserve_space(%struct.inode*, %struct.extent_changeset**, i32, i32) #1

declare dso_local i32 @file_update_time(i32) #1

declare dso_local i64 @vmf_error(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i32, i32, %struct.extent_state**) #1

declare dso_local i32 @set_page_extent_mapped(%struct.page*) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i32, i32, %struct.extent_state**) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @btrfs_start_ordered_extent(%struct.inode*, %struct.btrfs_ordered_extent*, i32) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @btrfs_delalloc_release_space(%struct.inode*, %struct.extent_changeset*, i32, i32, i32) #1

declare dso_local i32 @clear_extent_bit(%struct.extent_io_tree*, i32, i32, i32, i32, i32, %struct.extent_state**) #1

declare dso_local i32 @btrfs_set_extent_delalloc(%struct.inode*, i32, i32, i32, %struct.extent_state**) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @btrfs_delalloc_release_extents(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

declare dso_local i32 @extent_changeset_free(%struct.extent_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
