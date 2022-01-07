; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_update_writeable_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_update_writeable_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_fs_client = type { i32 }
%struct.ceph_inode_info = type { i32, %struct.ceph_snap_context* }
%struct.ceph_snap_context = type { i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@CEPH_MOUNT_SHUTDOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c" page %p forced umount\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c" page %p snapc %p not current or oldest\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c" page %p snapc %p not current, but oldest\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" page %p already uptodate\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c" zeroing %p 0 - %d and %d - %d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i32, %struct.page*)* @ceph_update_writeable_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_update_writeable_page(%struct.file* %0, i64 %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ceph_fs_client*, align 8
  %12 = alloca %struct.ceph_inode_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ceph_snap_context*, align 8
  %19 = alloca %struct.ceph_snap_context*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.page* %3, %struct.page** %9, align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = call %struct.inode* @file_inode(%struct.file* %20)
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %22)
  store %struct.ceph_fs_client* %23, %struct.ceph_fs_client** %11, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %24)
  store %struct.ceph_inode_info* %25, %struct.ceph_inode_info** %12, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @PAGE_MASK, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @PAGE_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = and i64 %29, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %38 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @READ_ONCE(i32 %39)
  %41 = load i64, i64* @CEPH_MOUNT_SHUTDOWN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %4
  %44 = load %struct.page*, %struct.page** %9, align 8
  %45 = call i32 (i8*, %struct.page*, ...) @dout(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.page* %44)
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = call i32 @unlock_page(%struct.page* %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %189

50:                                               ; preds = %4
  br label %51

51:                                               ; preds = %184, %120, %113, %50
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = call i32 @wait_on_page_writeback(%struct.page* %52)
  %54 = load %struct.page*, %struct.page** %9, align 8
  %55 = call %struct.ceph_snap_context* @page_snap_context(%struct.page* %54)
  store %struct.ceph_snap_context* %55, %struct.ceph_snap_context** %18, align 8
  %56 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %18, align 8
  %57 = icmp ne %struct.ceph_snap_context* %56, null
  br i1 %57, label %58, label %121

58:                                               ; preds = %51
  %59 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %18, align 8
  %60 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %12, align 8
  %61 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %60, i32 0, i32 1
  %62 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %61, align 8
  %63 = icmp ne %struct.ceph_snap_context* %59, %62
  br i1 %63, label %64, label %121

64:                                               ; preds = %58
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = call %struct.ceph_snap_context* @get_oldest_context(%struct.inode* %65, i32* null, i32* null)
  store %struct.ceph_snap_context* %66, %struct.ceph_snap_context** %19, align 8
  %67 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %18, align 8
  %68 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %19, align 8
  %71 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %64
  %75 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %19, align 8
  %76 = call i32 @ceph_put_snap_context(%struct.ceph_snap_context* %75)
  %77 = load %struct.page*, %struct.page** %9, align 8
  %78 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %18, align 8
  %79 = call i32 (i8*, %struct.page*, ...) @dout(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.page* %77, %struct.ceph_snap_context* %78)
  %80 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %18, align 8
  %81 = call %struct.ceph_snap_context* @ceph_get_snap_context(%struct.ceph_snap_context* %80)
  store %struct.ceph_snap_context* %81, %struct.ceph_snap_context** %18, align 8
  %82 = load %struct.page*, %struct.page** %9, align 8
  %83 = call i32 @unlock_page(%struct.page* %82)
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = call i32 @ceph_queue_writeback(%struct.inode* %84)
  %86 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %12, align 8
  %87 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %18, align 8
  %91 = call i32 @context_is_writeable_or_written(%struct.inode* %89, %struct.ceph_snap_context* %90)
  %92 = call i32 @wait_event_killable(i32 %88, i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %18, align 8
  %94 = call i32 @ceph_put_snap_context(%struct.ceph_snap_context* %93)
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @ERESTARTSYS, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %74
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %5, align 4
  br label %189

101:                                              ; preds = %74
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %189

104:                                              ; preds = %64
  %105 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %19, align 8
  %106 = call i32 @ceph_put_snap_context(%struct.ceph_snap_context* %105)
  %107 = load %struct.page*, %struct.page** %9, align 8
  %108 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %18, align 8
  %109 = call i32 (i8*, %struct.page*, ...) @dout(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), %struct.page* %107, %struct.ceph_snap_context* %108)
  %110 = load %struct.page*, %struct.page** %9, align 8
  %111 = call i32 @clear_page_dirty_for_io(%struct.page* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  br label %51

114:                                              ; preds = %104
  %115 = load %struct.page*, %struct.page** %9, align 8
  %116 = call i32 @writepage_nounlock(%struct.page* %115, i32* null)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %185

120:                                              ; preds = %114
  br label %51

121:                                              ; preds = %58, %51
  %122 = load %struct.page*, %struct.page** %9, align 8
  %123 = call i64 @PageUptodate(%struct.page* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.page*, %struct.page** %9, align 8
  %127 = call i32 (i8*, %struct.page*, ...) @dout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %struct.page* %126)
  store i32 0, i32* %5, align 4
  br label %189

128:                                              ; preds = %121
  %129 = load i32, i32* %14, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @PAGE_SIZE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %189

136:                                              ; preds = %131, %128
  %137 = load %struct.inode*, %struct.inode** %10, align 8
  %138 = call i64 @i_size_read(%struct.inode* %137)
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %16, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %158, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %14, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %169

145:                                              ; preds = %142
  %146 = load i64, i64* %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = zext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i64, i64* %16, align 8
  %151 = icmp sge i64 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %145
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %14, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32, i32* @PAGE_SIZE, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %152, %136
  %159 = load %struct.page*, %struct.page** %9, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @PAGE_SIZE, align 4
  %163 = call i32 (i8*, %struct.page*, ...) @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.page* %159, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.page*, %struct.page** %9, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @PAGE_SIZE, align 4
  %168 = call i32 @zero_user_segments(%struct.page* %164, i32 0, i32 %165, i32 %166, i32 %167)
  store i32 0, i32* %5, align 4
  br label %189

169:                                              ; preds = %152, %145, %142
  %170 = load %struct.file*, %struct.file** %6, align 8
  %171 = load %struct.page*, %struct.page** %9, align 8
  %172 = call i32 @ceph_do_readpage(%struct.file* %170, %struct.page* %171)
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %169
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* @EINPROGRESS, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* @EAGAIN, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %5, align 4
  br label %189

183:                                              ; preds = %175
  br label %185

184:                                              ; preds = %169
  br label %51

185:                                              ; preds = %183, %119
  %186 = load %struct.page*, %struct.page** %9, align 8
  %187 = call i32 @unlock_page(%struct.page* %186)
  %188 = load i32, i32* %17, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %185, %180, %158, %135, %125, %101, %99, %43
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @dout(i8*, %struct.page*, ...) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local %struct.ceph_snap_context* @page_snap_context(%struct.page*) #1

declare dso_local %struct.ceph_snap_context* @get_oldest_context(%struct.inode*, i32*, i32*) #1

declare dso_local i32 @ceph_put_snap_context(%struct.ceph_snap_context*) #1

declare dso_local %struct.ceph_snap_context* @ceph_get_snap_context(%struct.ceph_snap_context*) #1

declare dso_local i32 @ceph_queue_writeback(%struct.inode*) #1

declare dso_local i32 @wait_event_killable(i32, i32) #1

declare dso_local i32 @context_is_writeable_or_written(%struct.inode*, %struct.ceph_snap_context*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @writepage_nounlock(%struct.page*, i32*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @zero_user_segments(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @ceph_do_readpage(%struct.file*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
