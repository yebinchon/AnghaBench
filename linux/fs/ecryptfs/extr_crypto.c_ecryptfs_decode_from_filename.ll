; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_decode_from_filename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_decode_from_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename_rev_map = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i8*, i64)* @ecryptfs_decode_from_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecryptfs_decode_from_filename(i8* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @ecryptfs_max_decoded_size(i64 %16)
  %18 = load i64*, i64** %6, align 8
  store i64 %17, i64* %18, align 8
  br label %99

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %93, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %96

24:                                               ; preds = %20
  %25 = load i8*, i8** @filename_rev_map, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %25, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %12, align 1
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %93 [
    i32 0, label %35
    i32 6, label %43
    i32 4, label %63
    i32 2, label %82
  ]

35:                                               ; preds = %24
  %36 = load i8, i8* %12, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 2
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %39, i8* %42, align 1
  store i32 6, i32* %9, align 4
  br label %93

43:                                               ; preds = %24
  %44 = load i8, i8* %12, align 1
  %45 = zext i8 %44 to i32
  %46 = ashr i32 %45, 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %11, align 8
  %50 = getelementptr inbounds i8, i8* %47, i64 %48
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %46
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = load i8, i8* %12, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = shl i32 %57, 4
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %59, i8* %62, align 1
  store i32 4, i32* %9, align 4
  br label %93

63:                                               ; preds = %24
  %64 = load i8, i8* %12, align 1
  %65 = zext i8 %64 to i32
  %66 = ashr i32 %65, 2
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %68
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %72, %66
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %70, align 1
  %75 = load i8, i8* %12, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 6
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %5, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 %78, i8* %81, align 1
  store i32 2, i32* %9, align 4
  br label %93

82:                                               ; preds = %24
  %83 = load i8, i8* %12, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %11, align 8
  %88 = getelementptr inbounds i8, i8* %85, i64 %86
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, %84
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %24, %82, %63, %43, %35
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %10, align 8
  br label %20

96:                                               ; preds = %20
  %97 = load i64, i64* %11, align 8
  %98 = load i64*, i64** %6, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %15
  ret void
}

declare dso_local i64 @ecryptfs_max_decoded_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
