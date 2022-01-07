; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_trace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_reply_info_parsed = type { i32, %struct.TYPE_2__*, i32, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@bad = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"problem parsing mds trace %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_mds_reply_info_parsed*, i32)* @parse_reply_info_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reply_info_trace(i8** %0, i8* %1, %struct.ceph_mds_reply_info_parsed* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ceph_mds_reply_info_parsed* %2, %struct.ceph_mds_reply_info_parsed** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %12 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %4
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %20, i32 0, i32 6
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @parse_reply_info_in(i8** %18, i8* %19, i32* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %104

27:                                               ; preds = %17
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %31 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %30, i32 0, i32 5
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @parse_reply_info_dir(i8** %28, i8* %29, i32* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %104

37:                                               ; preds = %27
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %41 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @bad, align 4
  %44 = call i32 @ceph_decode_32_safe(i8** %38, i8* %39, i32 %42, i32 %43)
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %48 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @bad, align 4
  %51 = call i32 @ceph_decode_need(i8** %45, i8* %46, i32 %49, i32 %50)
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %55 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %57 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i8**, i8*** %6, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = sext i32 %58 to i64
  %62 = getelementptr i8, i8* %60, i64 %61
  store i8* %62, i8** %59, align 8
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %66 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %65, i32 0, i32 2
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @parse_reply_info_lease(i8** %63, i8* %64, i32* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %37
  br label %104

72:                                               ; preds = %37
  br label %73

73:                                               ; preds = %72, %4
  %74 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %75 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load i8**, i8*** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %84 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %83, i32 0, i32 0
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @parse_reply_info_in(i8** %81, i8* %82, i32* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %104

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i8**, i8*** %6, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %101

100:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %108

101:                                              ; preds = %99
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %101, %89, %71, %36, %26
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @parse_reply_info_in(i8**, i8*, i32*, i32) #1

declare dso_local i32 @parse_reply_info_dir(i8**, i8*, i32*, i32) #1

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @parse_reply_info_lease(i8**, i8*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
