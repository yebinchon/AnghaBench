; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.ceph_mds_reply_info_parsed = type { i8*, i64, i8* }

@bad = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mds parse_reply err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_msg*, %struct.ceph_mds_reply_info_parsed*, i32)* @parse_reply_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reply_info(%struct.ceph_msg* %0, %struct.ceph_mds_reply_info_parsed* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_msg*, align 8
  %6 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ceph_msg* %0, %struct.ceph_msg** %5, align 8
  store %struct.ceph_mds_reply_info_parsed* %1, %struct.ceph_mds_reply_info_parsed** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %13 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %6, align 8
  %17 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %19 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr i8, i8* %21, i64 4
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %23, i64 %28
  %30 = getelementptr i8, i8* %29, i64 -4
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* @bad, align 4
  %34 = call i32 @ceph_decode_32_safe(i8** %8, i8* %31, i64 %32, i32 %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %3
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @bad, align 4
  %41 = call i32 @ceph_decode_need(i8** %8, i8* %38, i64 %39, i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr i8, i8* %42, i64 %43
  %45 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @parse_reply_info_trace(i8** %8, i8* %44, %struct.ceph_mds_reply_info_parsed* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %96

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* @bad, align 4
  %56 = call i32 @ceph_decode_32_safe(i8** %8, i8* %53, i64 %54, i32 %55)
  %57 = load i64, i64* %10, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* @bad, align 4
  %63 = call i32 @ceph_decode_need(i8** %8, i8* %60, i64 %61, i32 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr i8, i8* %64, i64 %65
  %67 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @parse_reply_info_extra(i8** %8, i8* %66, %struct.ceph_mds_reply_info_parsed* %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %96

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* @bad, align 4
  %78 = call i32 @ceph_decode_32_safe(i8** %8, i8* %75, i64 %76, i32 %77)
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %6, align 8
  %81 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %6, align 8
  %84 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr i8, i8* %86, i64 %85
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %93

92:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %100

93:                                               ; preds = %91
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %72, %50
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i64, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i64, i32) #1

declare dso_local i32 @parse_reply_info_trace(i8**, i8*, %struct.ceph_mds_reply_info_parsed*, i32) #1

declare dso_local i32 @parse_reply_info_extra(i8**, i8*, %struct.ceph_mds_reply_info_parsed*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
