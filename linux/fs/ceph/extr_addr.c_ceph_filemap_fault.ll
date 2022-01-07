; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_filemap_fault.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_filemap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.page*, %struct.vm_area_struct* }
%struct.page = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_file_info* }
%struct.ceph_file_info = type { i32 }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.ceph_inode_info = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"filemap_fault %p %llx.%llx %llu~%zd trying to get caps\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@CEPH_FILE_MODE_LAZY = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_CACHE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"filemap_fault %p %llu~%zd got cap refs on %s\0A\00", align 1
@CEPH_INLINE_NONE = common dso_local global i64 0, align 8
@rw_ctx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"filemap_fault %p %llu~%zd drop cap refs %s ret %x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i64 0, align 8
@CEPH_STAT_CAP_INLINE_DATA = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i64 0, align 8
@VM_FAULT_LOCKED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"filemap_fault %p %llu~%zd read inline data ret %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_fault*)* @ceph_filemap_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ceph_filemap_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  %6 = alloca %struct.ceph_file_info*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.address_space*, align 8
  %15 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %16 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 2
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %3, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call %struct.inode* @file_inode(%struct.TYPE_3__* %21)
  store %struct.inode* %22, %struct.inode** %4, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %23)
  store %struct.ceph_inode_info* %24, %struct.ceph_inode_info** %5, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.ceph_file_info*, %struct.ceph_file_info** %28, align 8
  store %struct.ceph_file_info* %29, %struct.ceph_file_info** %6, align 8
  store %struct.page* null, %struct.page** %7, align 8
  %30 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %31 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* @VM_FAULT_SIGBUS, align 8
  store i64 %35, i64* %13, align 8
  %36 = call i32 @ceph_block_sigs(i32* %12)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call i64 @ceph_vinop(%struct.inode* %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = call i32 (i8*, %struct.inode*, i64, i64, i64, ...) @dout(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.inode* %37, i64 %39, i64 %40, i64 %41)
  %43 = load %struct.ceph_file_info*, %struct.ceph_file_info** %6, align 8
  %44 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CEPH_FILE_MODE_LAZY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %1
  %50 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %51 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %9, align 4
  br label %55

53:                                               ; preds = %1
  %54 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %49
  store i32 0, i32* %10, align 4
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ceph_get_caps(%struct.TYPE_3__* %58, i32 %59, i32 %60, i32 -1, i32* %10, %struct.page** %7)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %187

65:                                               ; preds = %55
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @ceph_cap_string(i32 %69)
  %71 = call i32 (i8*, %struct.inode*, i64, i64, i64, ...) @dout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %66, i64 %67, i64 %68, i64 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %74 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %65
  %79 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %80 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78, %65
  %85 = load i32, i32* @rw_ctx, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @CEPH_DEFINE_RW_CONTEXT(i32 %85, i32 %86)
  %88 = load %struct.ceph_file_info*, %struct.ceph_file_info** %6, align 8
  %89 = call i32 @ceph_add_rw_context(%struct.ceph_file_info* %88, i32* @rw_ctx)
  %90 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %91 = call i64 @filemap_fault(%struct.vm_fault* %90)
  store i64 %91, i64* %13, align 8
  %92 = load %struct.ceph_file_info*, %struct.ceph_file_info** %6, align 8
  %93 = call i32 @ceph_del_rw_context(%struct.ceph_file_info* %92, i32* @rw_ctx)
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @ceph_cap_string(i32 %97)
  %99 = load i64, i64* %13, align 8
  %100 = call i32 (i8*, %struct.inode*, i64, i64, i64, ...) @dout(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %94, i64 %95, i64 %96, i64 %98, i64 %99)
  br label %104

101:                                              ; preds = %78
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %101, %84
  %105 = load %struct.page*, %struct.page** %7, align 8
  %106 = icmp ne %struct.page* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.page*, %struct.page** %7, align 8
  %109 = call i32 @put_page(%struct.page* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @ceph_put_cap_refs(%struct.ceph_inode_info* %111, i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @EAGAIN, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %187

119:                                              ; preds = %110
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @PAGE_SIZE, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i64, i64* @VM_FAULT_SIGBUS, align 8
  store i64 %124, i64* %13, align 8
  br label %186

125:                                              ; preds = %119
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 0
  %128 = load %struct.address_space*, %struct.address_space** %127, align 8
  store %struct.address_space* %128, %struct.address_space** %14, align 8
  %129 = load %struct.address_space*, %struct.address_space** %14, align 8
  %130 = load %struct.address_space*, %struct.address_space** %14, align 8
  %131 = load i32, i32* @__GFP_FS, align 4
  %132 = xor i32 %131, -1
  %133 = call i32 @mapping_gfp_constraint(%struct.address_space* %130, i32 %132)
  %134 = call %struct.page* @find_or_create_page(%struct.address_space* %129, i32 0, i32 %133)
  store %struct.page* %134, %struct.page** %15, align 8
  %135 = load %struct.page*, %struct.page** %15, align 8
  %136 = icmp ne %struct.page* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %125
  %138 = load i64, i64* @VM_FAULT_OOM, align 8
  store i64 %138, i64* %13, align 8
  br label %180

139:                                              ; preds = %125
  %140 = load %struct.inode*, %struct.inode** %4, align 8
  %141 = load %struct.page*, %struct.page** %15, align 8
  %142 = load i32, i32* @CEPH_STAT_CAP_INLINE_DATA, align 4
  %143 = call i32 @__ceph_do_getattr(%struct.inode* %140, %struct.page* %141, i32 %142, i32 1)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %139
  %147 = load i64, i64* %8, align 8
  %148 = load %struct.inode*, %struct.inode** %4, align 8
  %149 = call i64 @i_size_read(%struct.inode* %148)
  %150 = icmp sge i64 %147, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %146, %139
  %152 = load %struct.page*, %struct.page** %15, align 8
  %153 = call i32 @unlock_page(%struct.page* %152)
  %154 = load %struct.page*, %struct.page** %15, align 8
  %155 = call i32 @put_page(%struct.page* %154)
  %156 = load i32, i32* %11, align 4
  %157 = call i64 @vmf_error(i32 %156)
  store i64 %157, i64* %13, align 8
  br label %180

158:                                              ; preds = %146
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* @PAGE_SIZE, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.page*, %struct.page** %15, align 8
  %165 = load i32, i32* %11, align 4
  %166 = load i64, i64* @PAGE_SIZE, align 8
  %167 = call i32 @zero_user_segment(%struct.page* %164, i32 %165, i64 %166)
  br label %171

168:                                              ; preds = %158
  %169 = load %struct.page*, %struct.page** %15, align 8
  %170 = call i32 @flush_dcache_page(%struct.page* %169)
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.page*, %struct.page** %15, align 8
  %173 = call i32 @SetPageUptodate(%struct.page* %172)
  %174 = load %struct.page*, %struct.page** %15, align 8
  %175 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %176 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %175, i32 0, i32 1
  store %struct.page* %174, %struct.page** %176, align 8
  %177 = load i64, i64* @VM_FAULT_MAJOR, align 8
  %178 = load i64, i64* @VM_FAULT_LOCKED, align 8
  %179 = or i64 %177, %178
  store i64 %179, i64* %13, align 8
  br label %180

180:                                              ; preds = %171, %151, %137
  %181 = load %struct.inode*, %struct.inode** %4, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* @PAGE_SIZE, align 8
  %184 = load i64, i64* %13, align 8
  %185 = call i32 (i8*, %struct.inode*, i64, i64, i64, ...) @dout(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %181, i64 %182, i64 %183, i64 %184)
  br label %186

186:                                              ; preds = %180, %123
  br label %187

187:                                              ; preds = %186, %118, %64
  %188 = call i32 @ceph_restore_sigs(i32* %12)
  %189 = load i32, i32* %11, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load i32, i32* %11, align 4
  %193 = call i64 @vmf_error(i32 %192)
  store i64 %193, i64* %13, align 8
  br label %194

194:                                              ; preds = %191, %187
  %195 = load i64, i64* %13, align 8
  ret i64 %195
}

declare dso_local %struct.inode* @file_inode(%struct.TYPE_3__*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @ceph_block_sigs(i32*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i64, i64, i64, ...) #1

declare dso_local i64 @ceph_vinop(%struct.inode*) #1

declare dso_local i32 @ceph_get_caps(%struct.TYPE_3__*, i32, i32, i32, i32*, %struct.page**) #1

declare dso_local i64 @ceph_cap_string(i32) #1

declare dso_local i32 @CEPH_DEFINE_RW_CONTEXT(i32, i32) #1

declare dso_local i32 @ceph_add_rw_context(%struct.ceph_file_info*, i32*) #1

declare dso_local i64 @filemap_fault(%struct.vm_fault*) #1

declare dso_local i32 @ceph_del_rw_context(%struct.ceph_file_info*, i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ceph_put_cap_refs(%struct.ceph_inode_info*, i32) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mapping_gfp_constraint(%struct.address_space*, i32) #1

declare dso_local i32 @__ceph_do_getattr(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @vmf_error(i32) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ceph_restore_sigs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
