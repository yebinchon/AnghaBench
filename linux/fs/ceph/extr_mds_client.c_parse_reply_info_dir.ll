; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_reply_dirfrag = type { i32 }

@bad = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_mds_reply_dirfrag**, i64)* @parse_reply_info_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reply_info_dir(i8** %0, i8* %1, %struct.ceph_mds_reply_dirfrag** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ceph_mds_reply_dirfrag**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ceph_mds_reply_dirfrag** %2, %struct.ceph_mds_reply_dirfrag*** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %48

15:                                               ; preds = %4
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @bad, align 4
  %20 = call i32 @ceph_decode_8_safe(i8** %16, i8* %17, i32 %18, i32 %19)
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @bad, align 4
  %25 = call i32 @ceph_decode_8_safe(i8** %21, i8* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %15
  br label %83

32:                                               ; preds = %28
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @bad, align 4
  %37 = call i32 @ceph_decode_32_safe(i8** %33, i8* %34, i32 %35, i32 %36)
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @bad, align 4
  %42 = call i32 @ceph_decode_need(i8** %38, i8* %39, i32 %40, i32 %41)
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %44, i64 %46
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %32, %4
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @bad, align 4
  %52 = call i32 @ceph_decode_need(i8** %49, i8* %50, i32 4, i32 %51)
  %53 = load i8**, i8*** %6, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to %struct.ceph_mds_reply_dirfrag*
  %56 = load %struct.ceph_mds_reply_dirfrag**, %struct.ceph_mds_reply_dirfrag*** %8, align 8
  store %struct.ceph_mds_reply_dirfrag* %55, %struct.ceph_mds_reply_dirfrag** %56, align 8
  %57 = load %struct.ceph_mds_reply_dirfrag**, %struct.ceph_mds_reply_dirfrag*** %8, align 8
  %58 = load %struct.ceph_mds_reply_dirfrag*, %struct.ceph_mds_reply_dirfrag** %57, align 8
  %59 = getelementptr inbounds %struct.ceph_mds_reply_dirfrag, %struct.ceph_mds_reply_dirfrag* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = add i64 4, %63
  %65 = load i8**, i8*** %6, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr i8, i8* %66, i64 %64
  store i8* %67, i8** %65, align 8
  %68 = load i8**, i8*** %6, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ugt i8* %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %48
  br label %83

76:                                               ; preds = %48
  %77 = load i64, i64* %9, align 8
  %78 = icmp eq i64 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %7, align 8
  %81 = load i8**, i8*** %6, align 8
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %79, %76
  store i32 0, i32* %5, align 4
  br label %86

83:                                               ; preds = %75, %31
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %82
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @ceph_decode_8_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
