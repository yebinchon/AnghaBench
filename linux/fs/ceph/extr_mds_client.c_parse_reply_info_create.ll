; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_reply_info_parsed = type { i32, i32 }

@CEPH_FEATURE_REPLY_CREATE_INODE = common dso_local global i32 0, align 4
@bad = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_mds_reply_info_parsed*, i32)* @parse_reply_info_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reply_info_create(i8** %0, i8* %1, %struct.ceph_mds_reply_info_parsed* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ceph_mds_reply_info_parsed* %2, %struct.ceph_mds_reply_info_parsed** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @CEPH_FEATURE_REPLY_CREATE_INODE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12, %4
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %35

25:                                               ; preds = %17
  %26 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %27 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %31 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @bad, align 4
  %34 = call i32 @ceph_decode_64_safe(i8** %28, i8* %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %22
  br label %43

36:                                               ; preds = %12
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i8*, i8** %7, align 8
  %45 = load i8**, i8*** %6, align 8
  store i8* %44, i8** %45, align 8
  store i32 0, i32* %5, align 4
  br label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
