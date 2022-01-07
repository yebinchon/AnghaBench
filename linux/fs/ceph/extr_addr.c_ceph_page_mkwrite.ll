; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.page*, %struct.vm_area_struct* }
%struct.page = type { i64 }
%struct.vm_area_struct = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ceph_file_info* }
%struct.ceph_file_info = type { i32 }
%struct.inode = type { i64, i32 }
%struct.ceph_inode_info = type { i64, i32 }
%struct.ceph_cap_flush = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i64 0, align 8
@VM_FAULT_OOM = common dso_local global i64 0, align 8
@CEPH_INLINE_NONE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"page_mkwrite %p %llx.%llx %llu~%zd getting caps i_size %llu\0A\00", align 1
@CEPH_FILE_MODE_LAZY = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_BUFFER = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"page_mkwrite %p %llu~%zd got cap refs on %s\0A\00", align 1
@VM_FAULT_NOPAGE = common dso_local global i64 0, align 8
@VM_FAULT_LOCKED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"page_mkwrite %p %llu~%zd dropping cap refs on %s ret %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_fault*)* @ceph_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ceph_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ceph_inode_info*, align 8
  %7 = alloca %struct.ceph_file_info*, align 8
  %8 = alloca %struct.ceph_cap_flush*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %20 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %20, i32 0, i32 1
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  store %struct.vm_area_struct* %22, %struct.vm_area_struct** %4, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call %struct.inode* @file_inode(%struct.TYPE_6__* %25)
  store %struct.inode* %26, %struct.inode** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %27)
  store %struct.ceph_inode_info* %28, %struct.ceph_inode_info** %6, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.ceph_file_info*, %struct.ceph_file_info** %32, align 8
  store %struct.ceph_file_info* %33, %struct.ceph_file_info** %7, align 8
  %34 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %35 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %34, i32 0, i32 0
  %36 = load %struct.page*, %struct.page** %35, align 8
  store %struct.page* %36, %struct.page** %9, align 8
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = call i64 @page_offset(%struct.page* %37)
  store i64 %38, i64* %10, align 8
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i64 @i_size_read(%struct.inode* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* @VM_FAULT_SIGBUS, align 8
  store i64 %41, i64* %17, align 8
  %42 = call %struct.ceph_cap_flush* (...) @ceph_alloc_cap_flush()
  store %struct.ceph_cap_flush* %42, %struct.ceph_cap_flush** %8, align 8
  %43 = load %struct.ceph_cap_flush*, %struct.ceph_cap_flush** %8, align 8
  %44 = icmp ne %struct.ceph_cap_flush* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %1
  %46 = load i64, i64* @VM_FAULT_OOM, align 8
  store i64 %46, i64* %2, align 8
  br label %234

47:                                               ; preds = %1
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sb_start_pagefault(i32 %50)
  %52 = call i32 @ceph_block_sigs(i32* %16)
  %53 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %54 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %47
  store %struct.page* null, %struct.page** %18, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.page*, %struct.page** %9, align 8
  %63 = call i32 @lock_page(%struct.page* %62)
  %64 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %64, %struct.page** %18, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.page*, %struct.page** %18, align 8
  %70 = call i32 @ceph_uninline_data(%struct.TYPE_6__* %68, %struct.page* %69)
  store i32 %70, i32* %15, align 4
  %71 = load %struct.page*, %struct.page** %18, align 8
  %72 = icmp ne %struct.page* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.page*, %struct.page** %18, align 8
  %75 = call i32 @unlock_page(%struct.page* %74)
  br label %76

76:                                               ; preds = %73, %65
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %219

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %47
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %11, align 8
  %86 = icmp ule i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %88, i64* %12, align 8
  br label %94

89:                                               ; preds = %81
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @PAGE_MASK, align 8
  %92 = xor i64 %91, -1
  %93 = and i64 %90, %92
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %89, %87
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = call i64 @ceph_vinop(%struct.inode* %96)
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 (i8*, %struct.inode*, i64, i64, i64, ...) @dout(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.inode* %95, i64 %97, i64 %98, i64 %99, i64 %100)
  %102 = load %struct.ceph_file_info*, %struct.ceph_file_info** %7, align 8
  %103 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CEPH_FILE_MODE_LAZY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %94
  %109 = load i32, i32* @CEPH_CAP_FILE_BUFFER, align 4
  %110 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %13, align 4
  br label %114

112:                                              ; preds = %94
  %113 = load i32, i32* @CEPH_CAP_FILE_BUFFER, align 4
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %112, %108
  store i32 0, i32* %14, align 4
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %116 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %120, %121
  %123 = call i32 @ceph_get_caps(%struct.TYPE_6__* %117, i32 %118, i32 %119, i64 %122, i32* %14, i32* null)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %219

127:                                              ; preds = %114
  %128 = load %struct.inode*, %struct.inode** %5, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i64 @ceph_cap_string(i32 %131)
  %133 = call i32 (i8*, %struct.inode*, i64, i64, i64, ...) @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %128, i64 %129, i64 %130, i64 %132)
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %135 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = call i32 @file_update_time(%struct.TYPE_6__* %136)
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = call i32 @inode_inc_iversion_raw(%struct.inode* %138)
  br label %140

140:                                              ; preds = %173, %127
  %141 = load %struct.page*, %struct.page** %9, align 8
  %142 = call i32 @lock_page(%struct.page* %141)
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %11, align 8
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %140
  %147 = load %struct.page*, %struct.page** %9, align 8
  %148 = getelementptr inbounds %struct.page, %struct.page* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.inode*, %struct.inode** %5, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %146, %140
  %155 = load %struct.page*, %struct.page** %9, align 8
  %156 = call i32 @unlock_page(%struct.page* %155)
  %157 = load i64, i64* @VM_FAULT_NOPAGE, align 8
  store i64 %157, i64* %17, align 8
  br label %178

158:                                              ; preds = %146
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %160 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* %12, align 8
  %164 = load %struct.page*, %struct.page** %9, align 8
  %165 = call i32 @ceph_update_writeable_page(%struct.TYPE_6__* %161, i64 %162, i64 %163, %struct.page* %164)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %158
  %169 = load %struct.page*, %struct.page** %9, align 8
  %170 = call i32 @set_page_dirty(%struct.page* %169)
  %171 = load i64, i64* @VM_FAULT_LOCKED, align 8
  store i64 %171, i64* %17, align 8
  br label %172

172:                                              ; preds = %168, %158
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* @EAGAIN, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %140, label %178

178:                                              ; preds = %173, %154
  %179 = load i64, i64* %17, align 8
  %180 = load i64, i64* @VM_FAULT_LOCKED, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %178
  %183 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %184 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %182, %178
  %189 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %190 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %189, i32 0, i32 1
  %191 = call i32 @spin_lock(i32* %190)
  %192 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %193 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %194 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %196 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %197 = call i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info* %195, i32 %196, %struct.ceph_cap_flush** %8)
  store i32 %197, i32* %19, align 4
  %198 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %199 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %198, i32 0, i32 1
  %200 = call i32 @spin_unlock(i32* %199)
  %201 = load i32, i32* %19, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %188
  %204 = load %struct.inode*, %struct.inode** %5, align 8
  %205 = load i32, i32* %19, align 4
  %206 = call i32 @__mark_inode_dirty(%struct.inode* %204, i32 %205)
  br label %207

207:                                              ; preds = %203, %188
  br label %208

208:                                              ; preds = %207, %182
  %209 = load %struct.inode*, %struct.inode** %5, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* %12, align 8
  %212 = load i32, i32* %14, align 4
  %213 = call i64 @ceph_cap_string(i32 %212)
  %214 = load i64, i64* %17, align 8
  %215 = call i32 (i8*, %struct.inode*, i64, i64, i64, ...) @dout(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %209, i64 %210, i64 %211, i64 %213, i64 %214)
  %216 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @ceph_put_cap_refs(%struct.ceph_inode_info* %216, i32 %217)
  br label %219

219:                                              ; preds = %208, %126, %79
  %220 = call i32 @ceph_restore_sigs(i32* %16)
  %221 = load %struct.inode*, %struct.inode** %5, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @sb_end_pagefault(i32 %223)
  %225 = load %struct.ceph_cap_flush*, %struct.ceph_cap_flush** %8, align 8
  %226 = call i32 @ceph_free_cap_flush(%struct.ceph_cap_flush* %225)
  %227 = load i32, i32* %15, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %219
  %230 = load i32, i32* %15, align 4
  %231 = call i64 @vmf_error(i32 %230)
  store i64 %231, i64* %17, align 8
  br label %232

232:                                              ; preds = %229, %219
  %233 = load i64, i64* %17, align 8
  store i64 %233, i64* %2, align 8
  br label %234

234:                                              ; preds = %232, %45
  %235 = load i64, i64* %2, align 8
  ret i64 %235
}

declare dso_local %struct.inode* @file_inode(%struct.TYPE_6__*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.ceph_cap_flush* @ceph_alloc_cap_flush(...) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i32 @ceph_block_sigs(i32*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @ceph_uninline_data(%struct.TYPE_6__*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i64, i64, i64, ...) #1

declare dso_local i64 @ceph_vinop(%struct.inode*) #1

declare dso_local i32 @ceph_get_caps(%struct.TYPE_6__*, i32, i32, i64, i32*, i32*) #1

declare dso_local i64 @ceph_cap_string(i32) #1

declare dso_local i32 @file_update_time(%struct.TYPE_6__*) #1

declare dso_local i32 @inode_inc_iversion_raw(%struct.inode*) #1

declare dso_local i32 @ceph_update_writeable_page(%struct.TYPE_6__*, i64, i64, %struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info*, i32, %struct.ceph_cap_flush**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @ceph_put_cap_refs(%struct.ceph_inode_info*, i32) #1

declare dso_local i32 @ceph_restore_sigs(i32*) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

declare dso_local i32 @ceph_free_cap_flush(%struct.ceph_cap_flush*) #1

declare dso_local i64 @vmf_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
