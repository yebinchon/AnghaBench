; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_do_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_do_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i64, i32, i32, i32 }
%struct.ceph_fs_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@CEPH_INLINE_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"readpage inode %p file %p page %p index %lu\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EBLACKLISTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @ceph_do_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_do_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ceph_inode_info*, align 8
  %8 = alloca %struct.ceph_fs_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %14)
  store %struct.ceph_inode_info* %15, %struct.ceph_inode_info** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %16)
  store %struct.ceph_fs_client* %17, %struct.ceph_fs_client** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i64 @page_offset(%struct.page* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i64 @i_size_read(%struct.inode* %23)
  %25 = icmp sge i64 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i32 @zero_user_segment(%struct.page* %27, i32 0, i32 %28)
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i32 @SetPageUptodate(%struct.page* %30)
  store i32 0, i32* %3, align 4
  br label %131

32:                                               ; preds = %2
  %33 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %34 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %131

44:                                               ; preds = %38
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = call i32 @zero_user_segment(%struct.page* %45, i32 0, i32 %46)
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = call i32 @SetPageUptodate(%struct.page* %48)
  store i32 0, i32* %3, align 4
  br label %131

50:                                               ; preds = %32
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load %struct.page*, %struct.page** %5, align 8
  %53 = call i32 @ceph_readpage_from_fscache(%struct.inode* %51, %struct.page* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINPROGRESS, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %131

59:                                               ; preds = %50
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = load %struct.file*, %struct.file** %4, align 8
  %62 = load %struct.page*, %struct.page** %5, align 8
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = getelementptr inbounds %struct.page, %struct.page* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.inode* %60, %struct.file* %61, %struct.page* %62, i32 %65)
  %67 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %68 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = call i32 @ceph_vino(%struct.inode* %71)
  %73 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %74 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %73, i32 0, i32 3
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %77 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %80 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ceph_osdc_readpages(i32* %70, i32 %72, i32* %74, i64 %75, i64* %11, i32 %78, i32 %81, %struct.page** %5, i32 1, i32 0)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %59
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load %struct.page*, %struct.page** %5, align 8
  %93 = call i32 @SetPageError(%struct.page* %92)
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = load %struct.page*, %struct.page** %5, align 8
  %96 = call i32 @ceph_fscache_readpage_cancel(%struct.inode* %94, %struct.page* %95)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @EBLACKLISTED, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %103 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %91
  br label %123

105:                                              ; preds = %88
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.page*, %struct.page** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = call i32 @zero_user_segment(%struct.page* %110, i32 %111, i32 %112)
  br label %117

114:                                              ; preds = %105
  %115 = load %struct.page*, %struct.page** %5, align 8
  %116 = call i32 @flush_dcache_page(%struct.page* %115)
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.page*, %struct.page** %5, align 8
  %119 = call i32 @SetPageUptodate(%struct.page* %118)
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = load %struct.page*, %struct.page** %5, align 8
  %122 = call i32 @ceph_readpage_to_fscache(%struct.inode* %120, %struct.page* %121)
  br label %123

123:                                              ; preds = %117, %104
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* %9, align 4
  br label %129

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %56, %44, %41, %26
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ceph_readpage_from_fscache(%struct.inode*, %struct.page*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.file*, %struct.page*, i32) #1

declare dso_local i32 @ceph_osdc_readpages(i32*, i32, i32*, i64, i64*, i32, i32, %struct.page**, i32, i32) #1

declare dso_local i32 @ceph_vino(%struct.inode*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @ceph_fscache_readpage_cancel(%struct.inode*, %struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @ceph_readpage_to_fscache(%struct.inode*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
