; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_handle_mdsmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_handle_mdsmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, %struct.ceph_mdsmap*, %struct.TYPE_5__*, i32 }
%struct.ceph_mdsmap = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ceph_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.ceph_fsid = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@bad = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"handle_map epoch %u len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"handle_map epoch %u <= our %u\0A\00", align 1
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@CEPH_SUB_MDSMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"error decoding mdsmap %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_mdsc_handle_mdsmap(%struct.ceph_mds_client* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ceph_mdsmap*, align 8
  %10 = alloca %struct.ceph_mdsmap*, align 8
  %11 = alloca %struct.ceph_fsid, align 4
  %12 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %4, align 8
  %13 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %17, i64 %22
  store i8* %23, i8** %8, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @bad, align 4
  %28 = call i32 @ceph_decode_need(i8** %7, i8* %26, i32 12, i32 %27)
  %29 = call i32 @ceph_decode_copy(i8** %7, %struct.ceph_fsid* %11, i32 4)
  %30 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %31 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i64 @ceph_check_fsid(%struct.TYPE_6__* %34, %struct.ceph_fsid* %11)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %143

38:                                               ; preds = %2
  %39 = call i32 @ceph_decode_32(i8** %7)
  store i32 %39, i32* %5, align 4
  %40 = call i32 @ceph_decode_32(i8** %7)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %45 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %48 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %47, i32 0, i32 1
  %49 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %48, align 8
  %50 = icmp ne %struct.ceph_mdsmap* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %38
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %54 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %53, i32 0, i32 1
  %55 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %54, align 8
  %56 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %52, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %62 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %61, i32 0, i32 1
  %63 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %62, align 8
  %64 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %65)
  %67 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %68 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %143

70:                                               ; preds = %51, %38
  %71 = load i8*, i8** %8, align 8
  %72 = call %struct.ceph_mdsmap* @ceph_mdsmap_decode(i8** %7, i8* %71)
  store %struct.ceph_mdsmap* %72, %struct.ceph_mdsmap** %9, align 8
  %73 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %9, align 8
  %74 = call i64 @IS_ERR(%struct.ceph_mdsmap* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %9, align 8
  %78 = call i32 @PTR_ERR(%struct.ceph_mdsmap* %77)
  store i32 %78, i32* %12, align 4
  br label %136

79:                                               ; preds = %70
  %80 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %81 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %80, i32 0, i32 1
  %82 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %81, align 8
  %83 = icmp ne %struct.ceph_mdsmap* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %86 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %85, i32 0, i32 1
  %87 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %86, align 8
  store %struct.ceph_mdsmap* %87, %struct.ceph_mdsmap** %10, align 8
  %88 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %9, align 8
  %89 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %90 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %89, i32 0, i32 1
  store %struct.ceph_mdsmap* %88, %struct.ceph_mdsmap** %90, align 8
  %91 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %92 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %9, align 8
  %93 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %10, align 8
  %94 = call i32 @check_new_map(%struct.ceph_mds_client* %91, %struct.ceph_mdsmap* %92, %struct.ceph_mdsmap* %93)
  %95 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %10, align 8
  %96 = call i32 @ceph_mdsmap_destroy(%struct.ceph_mdsmap* %95)
  br label %101

97:                                               ; preds = %79
  %98 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %9, align 8
  %99 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %100 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %99, i32 0, i32 1
  store %struct.ceph_mdsmap* %98, %struct.ceph_mdsmap** %100, align 8
  br label %101

101:                                              ; preds = %97, %84
  %102 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %103 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %102, i32 0, i32 1
  %104 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %103, align 8
  %105 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %109 = call i32 @min(i32 %107, i32 %108)
  %110 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %111 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %110, i32 0, i32 2
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 8
  %114 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %115 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %116 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %115, i32 0, i32 3
  %117 = call i32 @__wake_requests(%struct.ceph_mds_client* %114, i32* %116)
  %118 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %119 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %118, i32 0, i32 2
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* @CEPH_SUB_MDSMAP, align 4
  %125 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %126 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %125, i32 0, i32 1
  %127 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %126, align 8
  %128 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ceph_monc_got_map(i32* %123, i32 %124, i32 %129)
  %131 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %132 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %135 = call i32 @schedule_delayed(%struct.ceph_mds_client* %134)
  br label %143

136:                                              ; preds = %76
  %137 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %138 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %137, i32 0, i32 0
  %139 = call i32 @mutex_unlock(i32* %138)
  br label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %101, %59, %37
  ret void
}

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_copy(i8**, %struct.ceph_fsid*, i32) #1

declare dso_local i64 @ceph_check_fsid(%struct.TYPE_6__*, %struct.ceph_fsid*) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

declare dso_local i32 @dout(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.ceph_mdsmap* @ceph_mdsmap_decode(i8**, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mdsmap*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mdsmap*) #1

declare dso_local i32 @check_new_map(%struct.ceph_mds_client*, %struct.ceph_mdsmap*, %struct.ceph_mdsmap*) #1

declare dso_local i32 @ceph_mdsmap_destroy(%struct.ceph_mdsmap*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @__wake_requests(%struct.ceph_mds_client*, i32*) #1

declare dso_local i32 @ceph_monc_got_map(i32*, i32, i32) #1

declare dso_local i32 @schedule_delayed(%struct.ceph_mds_client*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
