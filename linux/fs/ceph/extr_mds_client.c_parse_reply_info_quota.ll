; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_quota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_reply_info_in = type { i32, i32 }

@bad = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_mds_reply_info_in*)* @parse_reply_info_quota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reply_info_quota(i8** %0, i8* %1, %struct.ceph_mds_reply_info_in* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ceph_mds_reply_info_in*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ceph_mds_reply_info_in* %2, %struct.ceph_mds_reply_info_in** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @bad, align 4
  %15 = call i32 @ceph_decode_8_safe(i8** %11, i8* %12, i32 %13, i32 %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @bad, align 4
  %20 = call i32 @ceph_decode_8_safe(i8** %16, i8* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %3
  br label %59

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @bad, align 4
  %32 = call i32 @ceph_decode_32_safe(i8** %28, i8* %29, i32 %30, i32 %31)
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @bad, align 4
  %37 = call i32 @ceph_decode_need(i8** %33, i8* %34, i32 %35, i32 %36)
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.ceph_mds_reply_info_in*, %struct.ceph_mds_reply_info_in** %7, align 8
  %46 = getelementptr inbounds %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @bad, align 4
  %49 = call i32 @ceph_decode_64_safe(i8** %43, i8* %44, i32 %47, i32 %48)
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.ceph_mds_reply_info_in*, %struct.ceph_mds_reply_info_in** %7, align 8
  %53 = getelementptr inbounds %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @bad, align 4
  %56 = call i32 @ceph_decode_64_safe(i8** %50, i8* %51, i32 %54, i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i8**, i8*** %5, align 8
  store i8* %57, i8** %58, align 8
  store i32 0, i32* %4, align 4
  br label %62

59:                                               ; preds = %26
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %27
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ceph_decode_8_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
