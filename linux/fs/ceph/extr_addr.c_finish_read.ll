; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_finish_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_finish_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.ceph_osd_data = type { i64, %struct.page**, i64, i64 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"finish_read %p req %p rc %d bytes %d\0A\00", align 1
@EBLACKLISTED = common dso_local global i32 0, align 4
@CEPH_OSD_DATA_TYPE_PAGES = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"finish_read %p uptodate %p idx %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*)* @finish_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_read(%struct.ceph_osd_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_request*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ceph_osd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %2, align 8
  %11 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %11, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %3, align 8
  %14 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %15 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %20 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 0, %22 ]
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %26 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %31 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  store i32 %35, i32* %6, align 4
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.inode* %36, %struct.ceph_osd_request* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @EBLACKLISTED, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = call %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %34
  %50 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %51 = call %struct.ceph_osd_data* @osd_req_op_extent_osd_data(%struct.ceph_osd_request* %50, i32 0)
  store %struct.ceph_osd_data* %51, %struct.ceph_osd_data** %4, align 8
  %52 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %53 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CEPH_OSD_DATA_TYPE_PAGES, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %60 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %64 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @calc_pages_for(i32 %62, i32 %66)
  store i32 %67, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %132, %49
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %135

72:                                               ; preds = %68
  %73 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %74 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %73, i32 0, i32 1
  %75 = load %struct.page**, %struct.page*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.page*, %struct.page** %75, i64 %77
  %79 = load %struct.page*, %struct.page** %78, align 8
  store %struct.page* %79, %struct.page** %9, align 8
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = load %struct.page*, %struct.page** %9, align 8
  %90 = call i32 @ceph_fscache_readpage_cancel(%struct.inode* %88, %struct.page* %89)
  br label %122

91:                                               ; preds = %82, %72
  %92 = load i32, i32* %6, align 4
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = trunc i64 %93 to i32
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %102

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 0, %99 ], [ %101, %100 ]
  store i32 %103, i32* %10, align 4
  %104 = load %struct.page*, %struct.page** %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = call i32 @zero_user_segment(%struct.page* %104, i32 %105, i64 %106)
  br label %108

108:                                              ; preds = %102, %91
  %109 = load %struct.inode*, %struct.inode** %3, align 8
  %110 = load %struct.page*, %struct.page** %9, align 8
  %111 = load %struct.page*, %struct.page** %9, align 8
  %112 = getelementptr inbounds %struct.page, %struct.page* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %109, %struct.page* %110, i32 %113)
  %115 = load %struct.page*, %struct.page** %9, align 8
  %116 = call i32 @flush_dcache_page(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %9, align 8
  %118 = call i32 @SetPageUptodate(%struct.page* %117)
  %119 = load %struct.inode*, %struct.inode** %3, align 8
  %120 = load %struct.page*, %struct.page** %9, align 8
  %121 = call i32 @ceph_readpage_to_fscache(%struct.inode* %119, %struct.page* %120)
  br label %122

122:                                              ; preds = %108, %87
  %123 = load %struct.page*, %struct.page** %9, align 8
  %124 = call i32 @unlock_page(%struct.page* %123)
  %125 = load %struct.page*, %struct.page** %9, align 8
  %126 = call i32 @put_page(%struct.page* %125)
  %127 = load i64, i64* @PAGE_SIZE, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = sub nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %68

135:                                              ; preds = %68
  %136 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %137 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %136, i32 0, i32 1
  %138 = load %struct.page**, %struct.page*** %137, align 8
  %139 = call i32 @kfree(%struct.page** %138)
  ret void
}

declare dso_local i32 @dout(i8*, %struct.inode*, ...) #1

declare dso_local %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local %struct.ceph_osd_data* @osd_req_op_extent_osd_data(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @calc_pages_for(i32, i32) #1

declare dso_local i32 @ceph_fscache_readpage_cancel(%struct.inode*, %struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ceph_readpage_to_fscache(%struct.inode*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
