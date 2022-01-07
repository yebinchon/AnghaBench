; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_copy_from_pcpubuf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_copy_from_pcpubuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i16 0, align 2
@uint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i8*, i16, i32)* @copy_from_pcpubuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_from_pcpubuf(%struct.page** %0, i8* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.page**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i8*, align 8
  store %struct.page** %0, %struct.page*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %9, align 8
  %18 = load i16, i16* @PAGE_SIZE, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i32
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %11, align 8
  br label %29

29:                                               ; preds = %83, %4
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %29
  %34 = load %struct.page**, %struct.page*** %5, align 8
  %35 = getelementptr inbounds %struct.page*, %struct.page** %34, i32 1
  store %struct.page** %35, %struct.page*** %5, align 8
  %36 = load %struct.page*, %struct.page** %34, align 8
  store %struct.page* %36, %struct.page** %12, align 8
  %37 = load %struct.page*, %struct.page** %12, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %39, label %83

39:                                               ; preds = %33
  %40 = load %struct.page*, %struct.page** %12, align 8
  %41 = call i8* @kmap_atomic(%struct.page* %40)
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp uge i8* %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* @uint, align 4
  %49 = load i16, i16* @PAGE_SIZE, align 2
  %50 = zext i16 %49 to i32
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @min_t(i32 %48, i32 %50, i32 %56)
  %58 = call i32 @memcpy(i8* %46, i8* %47, i32 %57)
  br label %80

59:                                               ; preds = %39
  %60 = load i8*, i8** %13, align 8
  %61 = load i16, i16* %7, align 2
  %62 = zext i16 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8*, i8** %11, align 8
  %66 = load i16, i16* %7, align 2
  %67 = zext i16 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i32, i32* @uint, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @min_t(i32 %70, i32 %71, i32 %77)
  %79 = call i32 @memcpy(i8* %64, i8* %69, i32 %78)
  br label %80

80:                                               ; preds = %59, %45
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @kunmap_atomic(i8* %81)
  br label %83

83:                                               ; preds = %80, %33
  %84 = load i16, i16* @PAGE_SIZE, align 2
  %85 = zext i16 %84 to i32
  %86 = load i8*, i8** %11, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %11, align 8
  br label %29

89:                                               ; preds = %29
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
