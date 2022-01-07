; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_writepages_finish.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_writepages_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, i32, %struct.TYPE_4__*, %struct.ceph_snap_context*, %struct.inode* }
%struct.TYPE_4__ = type { i64 }
%struct.ceph_snap_context = type { i32 }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.ceph_inode_info = type { i32 }
%struct.ceph_osd_data = type { i64, %struct.page**, i64, i64, i64 }
%struct.page = type { i64 }
%struct.ceph_fs_client = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"writepages_finish %p rc %d\0A\00", align 1
@EBLACKLISTED = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_CACHE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4
@CEPH_OSD_OP_WRITE = common dso_local global i64 0, align 8
@CEPH_OSD_DATA_TYPE_PAGES = common dso_local global i64 0, align 8
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"unlocking %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"writepages_finish %p wrote %llu bytes cleaned %d pages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*)* @writepages_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writepages_finish(%struct.ceph_osd_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_request*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ceph_inode_info*, align 8
  %5 = alloca %struct.ceph_osd_data*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ceph_snap_context*, align 8
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca %struct.ceph_fs_client*, align 8
  %15 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %2, align 8
  %16 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %17 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %16, i32 0, i32 4
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %3, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %19)
  store %struct.ceph_inode_info* %20, %struct.ceph_inode_info** %4, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %22 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %25 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %24, i32 0, i32 3
  %26 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %25, align 8
  store %struct.ceph_snap_context* %26, %struct.ceph_snap_context** %12, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load %struct.address_space*, %struct.address_space** %28, align 8
  store %struct.address_space* %29, %struct.address_space** %13, align 8
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %30)
  store %struct.ceph_fs_client* %31, %struct.ceph_fs_client** %14, align 8
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.inode* %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %1
  %38 = load %struct.address_space*, %struct.address_space** %13, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @mapping_set_error(%struct.address_space* %38, i32 %39)
  %41 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %42 = call i32 @ceph_set_error_write(%struct.ceph_inode_info* %41)
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @EBLACKLISTED, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %14, align 8
  %49 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %37
  br label %54

51:                                               ; preds = %1
  %52 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %53 = call i32 @ceph_clear_error_write(%struct.ceph_inode_info* %52)
  br label %54

54:                                               ; preds = %51, %50
  %55 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %56 = call i32 @ceph_caps_issued(%struct.ceph_inode_info* %55)
  %57 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %58 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %187, %54
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %67 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %190

70:                                               ; preds = %64
  %71 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %72 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CEPH_OSD_OP_WRITE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %190

82:                                               ; preds = %70
  %83 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call %struct.ceph_osd_data* @osd_req_op_extent_osd_data(%struct.ceph_osd_request* %83, i32 %84)
  store %struct.ceph_osd_data* %85, %struct.ceph_osd_data** %5, align 8
  %86 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %5, align 8
  %87 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CEPH_OSD_DATA_TYPE_PAGES, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %5, align 8
  %94 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %5, align 8
  %98 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @calc_pages_for(i32 %96, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %166, %82
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %169

109:                                              ; preds = %105
  %110 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %5, align 8
  %111 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %110, i32 0, i32 1
  %112 = load %struct.page**, %struct.page*** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.page*, %struct.page** %112, i64 %114
  %116 = load %struct.page*, %struct.page** %115, align 8
  store %struct.page* %116, %struct.page** %6, align 8
  %117 = load %struct.page*, %struct.page** %6, align 8
  %118 = icmp ne %struct.page* %117, null
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @BUG_ON(i32 %120)
  %122 = load %struct.page*, %struct.page** %6, align 8
  %123 = call i32 @PageUptodate(%struct.page* %122)
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @WARN_ON(i32 %126)
  %128 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %14, align 8
  %129 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %128, i32 0, i32 2
  %130 = call i64 @atomic_long_dec_return(i32* %129)
  %131 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %14, align 8
  %132 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @CONGESTION_OFF_THRESH(i32 %135)
  %137 = icmp slt i64 %130, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %109
  %139 = load %struct.inode*, %struct.inode** %3, align 8
  %140 = call i32 @inode_to_bdi(%struct.inode* %139)
  %141 = load i32, i32* @BLK_RW_ASYNC, align 4
  %142 = call i32 @clear_bdi_congested(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %109
  %144 = load %struct.page*, %struct.page** %6, align 8
  %145 = call i32 @page_snap_context(%struct.page* %144)
  %146 = call i32 @ceph_put_snap_context(i32 %145)
  %147 = load %struct.page*, %struct.page** %6, align 8
  %148 = getelementptr inbounds %struct.page, %struct.page* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load %struct.page*, %struct.page** %6, align 8
  %150 = call i32 @ClearPagePrivate(%struct.page* %149)
  %151 = load %struct.page*, %struct.page** %6, align 8
  %152 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.page* %151)
  %153 = load %struct.page*, %struct.page** %6, align 8
  %154 = call i32 @end_page_writeback(%struct.page* %153)
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %143
  %158 = load %struct.inode*, %struct.inode** %3, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 1
  %160 = load %struct.address_space*, %struct.address_space** %159, align 8
  %161 = load %struct.page*, %struct.page** %6, align 8
  %162 = call i32 @generic_error_remove_page(%struct.address_space* %160, %struct.page* %161)
  br label %163

163:                                              ; preds = %157, %143
  %164 = load %struct.page*, %struct.page** %6, align 8
  %165 = call i32 @unlock_page(%struct.page* %164)
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %105

169:                                              ; preds = %105
  %170 = load %struct.inode*, %struct.inode** %3, align 8
  %171 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %5, align 8
  %172 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* %7, align 4
  br label %179

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i32 [ %177, %176 ], [ 0, %178 ]
  %181 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %170, i64 %173, i32 %180)
  %182 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %5, align 8
  %183 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %182, i32 0, i32 1
  %184 = load %struct.page**, %struct.page*** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @release_pages(%struct.page** %184, i32 %185)
  br label %187

187:                                              ; preds = %179
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %64

190:                                              ; preds = %81, %64
  %191 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %12, align 8
  %194 = call i32 @ceph_put_wrbuffer_cap_refs(%struct.ceph_inode_info* %191, i32 %192, %struct.ceph_snap_context* %193)
  %195 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %196 = call %struct.ceph_osd_data* @osd_req_op_extent_osd_data(%struct.ceph_osd_request* %195, i32 0)
  store %struct.ceph_osd_data* %196, %struct.ceph_osd_data** %5, align 8
  %197 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %5, align 8
  %198 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %190
  %202 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %5, align 8
  %203 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %202, i32 0, i32 1
  %204 = load %struct.page**, %struct.page*** %203, align 8
  %205 = load %struct.inode*, %struct.inode** %3, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call %struct.TYPE_6__* @ceph_sb_to_client(i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @mempool_free(%struct.page** %204, i32 %210)
  br label %217

212:                                              ; preds = %190
  %213 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %5, align 8
  %214 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %213, i32 0, i32 1
  %215 = load %struct.page**, %struct.page*** %214, align 8
  %216 = call i32 @kfree(%struct.page** %215)
  br label %217

217:                                              ; preds = %212, %201
  %218 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %219 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %218)
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #1

declare dso_local i32 @ceph_set_error_write(%struct.ceph_inode_info*) #1

declare dso_local i32 @ceph_clear_error_write(%struct.ceph_inode_info*) #1

declare dso_local i32 @ceph_caps_issued(%struct.ceph_inode_info*) #1

declare dso_local %struct.ceph_osd_data* @osd_req_op_extent_osd_data(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @calc_pages_for(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @atomic_long_dec_return(i32*) #1

declare dso_local i64 @CONGESTION_OFF_THRESH(i32) #1

declare dso_local i32 @clear_bdi_congested(i32, i32) #1

declare dso_local i32 @inode_to_bdi(%struct.inode*) #1

declare dso_local i32 @ceph_put_snap_context(i32) #1

declare dso_local i32 @page_snap_context(%struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @generic_error_remove_page(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @release_pages(%struct.page**, i32) #1

declare dso_local i32 @ceph_put_wrbuffer_cap_refs(%struct.ceph_inode_info*, i32, %struct.ceph_snap_context*) #1

declare dso_local i32 @mempool_free(%struct.page**, i32) #1

declare dso_local %struct.TYPE_6__* @ceph_sb_to_client(i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
