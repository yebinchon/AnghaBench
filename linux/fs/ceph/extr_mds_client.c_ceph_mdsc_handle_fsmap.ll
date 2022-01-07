; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_handle_fsmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_handle_fsmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32, i32, %struct.ceph_fs_client* }
%struct.ceph_fs_client = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.ceph_msg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@bad = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"handle_fsmap epoch %u\0A\00", align 1
@CEPH_SUB_FSMAP = common dso_local global i32 0, align 4
@CEPH_SUB_MDSMAP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"error decoding fsmap\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_mdsc_handle_fsmap(%struct.ceph_mds_client* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.ceph_fs_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %4, align 8
  %23 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %23, i32 0, i32 3
  %25 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %24, align 8
  store %struct.ceph_fs_client* %25, %struct.ceph_fs_client** %5, align 8
  %26 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %5, align 8
  %27 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %32 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %37 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %35, i64 %40
  store i8* %41, i8** %8, align 8
  store i32 -1, i32* %12, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %15, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @bad, align 4
  %46 = call i32 @ceph_decode_need(i8** %7, i8* %44, i32 4, i32 %45)
  %47 = call i32 @ceph_decode_32(i8** %7)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @bad, align 4
  %52 = call i32 @ceph_decode_need(i8** %7, i8* %50, i32 6, i32 %51)
  %53 = call i32 @ceph_decode_8(i8** %7)
  store i32 %53, i32* %13, align 4
  %54 = call i32 @ceph_decode_8(i8** %7)
  store i32 %54, i32* %14, align 4
  %55 = call i32 @ceph_decode_32(i8** %7)
  store i32 %55, i32* %10, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* @bad, align 4
  %58 = call i32 @ceph_decode_need(i8** %7, i8* %56, i32 12, i32 %57)
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr i8, i8* %59, i64 8
  store i8* %60, i8** %7, align 8
  %61 = call i32 @ceph_decode_32(i8** %7)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %107, %2
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %11, align 4
  %65 = icmp sgt i32 %63, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* @bad, align 4
  %69 = call i32 @ceph_decode_need(i8** %7, i8* %67, i32 6, i32 %68)
  %70 = call i32 @ceph_decode_8(i8** %7)
  store i32 %70, i32* %19, align 4
  %71 = call i32 @ceph_decode_8(i8** %7)
  store i32 %71, i32* %20, align 4
  %72 = call i32 @ceph_decode_32(i8** %7)
  store i32 %72, i32* %18, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @bad, align 4
  %76 = call i32 @ceph_decode_need(i8** %7, i8* %73, i32 %74, i32 %75)
  %77 = load i8*, i8** %7, align 8
  store i8* %77, i8** %16, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %78, i64 %80
  store i8* %81, i8** %17, align 8
  %82 = load i8*, i8** %17, align 8
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %17, align 8
  %84 = load i32, i32* @bad, align 4
  %85 = call i32 @ceph_decode_need(i8** %16, i8* %83, i32 8, i32 %84)
  %86 = call i32 @ceph_decode_32(i8** %16)
  store i32 %86, i32* %21, align 4
  %87 = call i32 @ceph_decode_32(i8** %16)
  store i32 %87, i32* %22, align 4
  %88 = load i8*, i8** %17, align 8
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* @bad, align 4
  %91 = call i32 @ceph_decode_need(i8** %16, i8* %88, i32 %89, i32 %90)
  %92 = load i8*, i8** %6, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %66
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = load i32, i32* %22, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i8*, i8** %6, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load i32, i32* %22, align 4
  %103 = call i32 @strncmp(i8* %100, i8* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %21, align 4
  store i32 %106, i32* %12, align 4
  br label %108

107:                                              ; preds = %99, %94, %66
  br label %62

108:                                              ; preds = %105, %62
  %109 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %5, align 8
  %110 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* @CEPH_SUB_FSMAP, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @ceph_monc_got_map(%struct.TYPE_10__* %112, i32 %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %136

118:                                              ; preds = %108
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %5, align 8
  %121 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 %119, i32* %124, align 4
  %125 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %5, align 8
  %126 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* @CEPH_SUB_MDSMAP, align 4
  %130 = call i32 @ceph_monc_want_map(%struct.TYPE_10__* %128, i32 %129, i32 0, i32 1)
  %131 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %5, align 8
  %132 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = call i32 @ceph_monc_renew_subs(%struct.TYPE_10__* %134)
  br label %139

136:                                              ; preds = %108
  %137 = load i32, i32* @ENOENT, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %15, align 4
  br label %142

139:                                              ; preds = %118
  br label %156

140:                                              ; No predecessors!
  %141 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %136
  %143 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %144 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %143, i32 0, i32 1
  %145 = call i32 @mutex_lock(i32* %144)
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %148 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %150 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %151 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %150, i32 0, i32 2
  %152 = call i32 @__wake_requests(%struct.ceph_mds_client* %149, i32* %151)
  %153 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %154 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %153, i32 0, i32 1
  %155 = call i32 @mutex_unlock(i32* %154)
  br label %156

156:                                              ; preds = %142, %139
  ret void
}

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

declare dso_local i32 @dout(i8*, i32) #1

declare dso_local i32 @ceph_decode_8(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ceph_monc_got_map(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ceph_monc_want_map(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @ceph_monc_renew_subs(%struct.TYPE_10__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__wake_requests(%struct.ceph_mds_client*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
