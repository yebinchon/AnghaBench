; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_writepage_nounlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_writepage_nounlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.page = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.inode* }
%struct.TYPE_6__ = type { i32 (%struct.page*, i32, i32)* }
%struct.inode = type { i32, i32 }
%struct.writeback_control = type { i32 }
%struct.ceph_inode_info = type { i32 }
%struct.ceph_fs_client = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ceph_snap_context = type { i64 }
%struct.ceph_writeback_ctl = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"writepage %p idx %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"writepage %p page %p not dirty?\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"writepage %p page %p snapc %p not writeable - noop\0A\00", align 1
@current = common dso_local global %struct.TYPE_10__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%p page eof %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"writepage %p page %p index %lu on %llu~%u snapc %p seq %lld\0A\00", align 1
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"writepage interrupted page %p\0A\00", align 1
@EBLACKLISTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"writepage setting page/mapping error %d %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"writepage cleaned page %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @writepage_nounlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writepage_nounlock(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ceph_inode_info*, align 8
  %8 = alloca %struct.ceph_fs_client*, align 8
  %9 = alloca %struct.ceph_snap_context*, align 8
  %10 = alloca %struct.ceph_snap_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ceph_writeback_ctl, align 4
  %15 = alloca %struct.writeback_control, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @page_offset(%struct.page* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.page* %19, i32 %22)
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %6, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %29)
  store %struct.ceph_inode_info* %30, %struct.ceph_inode_info** %7, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %31)
  store %struct.ceph_fs_client* %32, %struct.ceph_fs_client** %8, align 8
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call %struct.ceph_snap_context* @page_snap_context(%struct.page* %33)
  store %struct.ceph_snap_context* %34, %struct.ceph_snap_context** %9, align 8
  %35 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %36 = icmp ne %struct.ceph_snap_context* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %2
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %38, %struct.page* %39)
  store i32 0, i32* %3, align 4
  br label %226

41:                                               ; preds = %2
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %44 = call %struct.ceph_snap_context* @get_oldest_context(%struct.inode* %42, %struct.ceph_writeback_ctl* %14, %struct.ceph_snap_context* %43)
  store %struct.ceph_snap_context* %44, %struct.ceph_snap_context** %10, align 8
  %45 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %46 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %10, align 8
  %49 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %41
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load %struct.page*, %struct.page** %4, align 8
  %55 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %56 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %53, %struct.page* %54, %struct.ceph_snap_context* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PF_MEMALLOC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %10, align 8
  %67 = call i32 @ceph_put_snap_context(%struct.ceph_snap_context* %66)
  %68 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %69 = load %struct.page*, %struct.page** %4, align 8
  %70 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %68, %struct.page* %69)
  store i32 0, i32* %3, align 4
  br label %226

71:                                               ; preds = %41
  %72 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %10, align 8
  %73 = call i32 @ceph_put_snap_context(%struct.ceph_snap_context* %72)
  %74 = load i32, i32* %11, align 4
  %75 = getelementptr inbounds %struct.ceph_writeback_ctl, %struct.ceph_writeback_ctl* %14, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %74, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %71
  %79 = load %struct.page*, %struct.page** %4, align 8
  %80 = getelementptr inbounds %struct.ceph_writeback_ctl, %struct.ceph_writeback_ctl* %14, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.page* %79, i32 %81)
  %83 = load %struct.page*, %struct.page** %4, align 8
  %84 = getelementptr inbounds %struct.page, %struct.page* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32 (%struct.page*, i32, i32)*, i32 (%struct.page*, i32, i32)** %88, align 8
  %90 = load %struct.page*, %struct.page** %4, align 8
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = call i32 %89(%struct.page* %90, i32 0, i32 %91)
  store i32 0, i32* %3, align 4
  br label %226

93:                                               ; preds = %71
  %94 = getelementptr inbounds %struct.ceph_writeback_ctl, %struct.ceph_writeback_ctl* %14, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %96, %97
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.ceph_writeback_ctl, %struct.ceph_writeback_ctl* %14, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = load %struct.page*, %struct.page** %4, align 8
  %108 = load %struct.page*, %struct.page** %4, align 8
  %109 = getelementptr inbounds %struct.page, %struct.page* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %114 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %115 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), %struct.inode* %106, %struct.page* %107, i32 %110, i32 %111, i32 %112, %struct.ceph_snap_context* %113, i64 %116)
  %118 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %119 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %118, i32 0, i32 2
  %120 = call i64 @atomic_long_inc_return(i32* %119)
  %121 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %122 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @CONGESTION_ON_THRESH(i32 %125)
  %127 = icmp sgt i64 %120, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %105
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = call i32 @inode_to_bdi(%struct.inode* %129)
  %131 = load i32, i32* @BLK_RW_ASYNC, align 4
  %132 = call i32 @set_bdi_congested(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %105
  %134 = load %struct.page*, %struct.page** %4, align 8
  %135 = call i32 @set_page_writeback(%struct.page* %134)
  %136 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %137 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %136, i32 0, i32 3
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = call i32 @ceph_vino(%struct.inode* %140)
  %142 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %143 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %142, i32 0, i32 0
  %144 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %13, align 4
  %147 = getelementptr inbounds %struct.ceph_writeback_ctl, %struct.ceph_writeback_ctl* %14, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.ceph_writeback_ctl, %struct.ceph_writeback_ctl* %14, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.inode*, %struct.inode** %6, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 1
  %153 = call i32 @ceph_osdc_writepages(i32* %139, i32 %141, i32* %143, %struct.ceph_snap_context* %144, i32 %145, i32 %146, i32 %148, i32 %150, i32* %152, %struct.page** %4, i32 1)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %194

156:                                              ; preds = %133
  %157 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %158 = icmp ne %struct.writeback_control* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  store %struct.writeback_control* %15, %struct.writeback_control** %5, align 8
  br label %160

160:                                              ; preds = %159, %156
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @ERESTARTSYS, align 4
  %163 = sub nsw i32 0, %162
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.page*, %struct.page** %4, align 8
  %167 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), %struct.page* %166)
  %168 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %169 = load %struct.page*, %struct.page** %4, align 8
  %170 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %168, %struct.page* %169)
  %171 = load %struct.page*, %struct.page** %4, align 8
  %172 = call i32 @end_page_writeback(%struct.page* %171)
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %3, align 4
  br label %226

174:                                              ; preds = %160
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @EBLACKLISTED, align 4
  %177 = sub nsw i32 0, %176
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %181 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.page*, %struct.page** %4, align 8
  %185 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %183, %struct.page* %184)
  %186 = load %struct.inode*, %struct.inode** %6, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 0
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @mapping_set_error(i32* %187, i32 %188)
  %190 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %191 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  br label %197

194:                                              ; preds = %133
  %195 = load %struct.page*, %struct.page** %4, align 8
  %196 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), %struct.page* %195)
  store i32 0, i32* %12, align 4
  br label %197

197:                                              ; preds = %194, %182
  %198 = load %struct.page*, %struct.page** %4, align 8
  %199 = getelementptr inbounds %struct.page, %struct.page* %198, i32 0, i32 0
  store i64 0, i64* %199, align 8
  %200 = load %struct.page*, %struct.page** %4, align 8
  %201 = call i32 @ClearPagePrivate(%struct.page* %200)
  %202 = load %struct.page*, %struct.page** %4, align 8
  %203 = call i32 @end_page_writeback(%struct.page* %202)
  %204 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %205 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %206 = call i32 @ceph_put_wrbuffer_cap_refs(%struct.ceph_inode_info* %204, i32 1, %struct.ceph_snap_context* %205)
  %207 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %208 = call i32 @ceph_put_snap_context(%struct.ceph_snap_context* %207)
  %209 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %210 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %209, i32 0, i32 2
  %211 = call i64 @atomic_long_dec_return(i32* %210)
  %212 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %213 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %212, i32 0, i32 1
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @CONGESTION_OFF_THRESH(i32 %216)
  %218 = icmp slt i64 %211, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %197
  %220 = load %struct.inode*, %struct.inode** %6, align 8
  %221 = call i32 @inode_to_bdi(%struct.inode* %220)
  %222 = load i32, i32* @BLK_RW_ASYNC, align 4
  %223 = call i32 @clear_bdi_congested(i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %219, %197
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %165, %78, %52, %37
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local %struct.ceph_snap_context* @page_snap_context(%struct.page*) #1

declare dso_local %struct.ceph_snap_context* @get_oldest_context(%struct.inode*, %struct.ceph_writeback_ctl*, %struct.ceph_snap_context*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ceph_put_snap_context(%struct.ceph_snap_context*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i64 @atomic_long_inc_return(i32*) #1

declare dso_local i64 @CONGESTION_ON_THRESH(i32) #1

declare dso_local i32 @set_bdi_congested(i32, i32) #1

declare dso_local i32 @inode_to_bdi(%struct.inode*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @ceph_osdc_writepages(i32*, i32, i32*, %struct.ceph_snap_context*, i32, i32, i32, i32, i32*, %struct.page**, i32) #1

declare dso_local i32 @ceph_vino(%struct.inode*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @mapping_set_error(i32*, i32) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @ceph_put_wrbuffer_cap_refs(%struct.ceph_inode_info*, i32, %struct.ceph_snap_context*) #1

declare dso_local i64 @atomic_long_dec_return(i32*) #1

declare dso_local i64 @CONGESTION_OFF_THRESH(i32) #1

declare dso_local i32 @clear_bdi_congested(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
