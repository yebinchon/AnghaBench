; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___decode_session_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___decode_session_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bad = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"error_string\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"blacklisted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*)* @__decode_session_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__decode_session_metadata(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @bad, align 4
  %15 = call i32 @ceph_decode_32_safe(i8** %11, i8* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %63, %3
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %8, align 4
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @bad, align 4
  %25 = call i32 @ceph_decode_32_safe(i8** %21, i8* %22, i32 %23, i32 %24)
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @bad, align 4
  %30 = call i32 @ceph_decode_need(i8** %26, i8* %27, i32 %28, i32 %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = sext i32 %38 to i64
  %42 = getelementptr i8, i8* %40, i64 %41
  store i8* %42, i8** %39, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @bad, align 4
  %47 = call i32 @ceph_decode_32_safe(i8** %43, i8* %44, i32 %45, i32 %46)
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @bad, align 4
  %52 = call i32 @ceph_decode_need(i8** %48, i8* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %20
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @strnstr(i8* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32*, i32** %7, align 8
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %55, %20
  %64 = load i32, i32* %10, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = sext i32 %64 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  store i8* %68, i8** %65, align 8
  br label %16

69:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %71

70:                                               ; No predecessors!
  store i32 -1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strnstr(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
