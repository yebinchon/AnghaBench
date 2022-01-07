; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_generic_copy_inplace_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_generic_copy_inplace_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_decompress_req = type { i32, %struct.page** }
%struct.page = type { i32 }

@uint = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.z_erofs_decompress_req*, i8*, i32)* @generic_copy_inplace_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generic_copy_inplace_data(%struct.z_erofs_decompress_req* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.z_erofs_decompress_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.z_erofs_decompress_req* %0, %struct.z_erofs_decompress_req** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %13 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %12, i32 0, i32 1
  %14 = load %struct.page**, %struct.page*** %13, align 8
  store %struct.page** %14, %struct.page*** %7, align 8
  %15 = call i8* @erofs_get_pcpubuf(i32 0)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %18 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @uint, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub i32 %24, %25
  %27 = call i32 @min_t(i32 %22, i32 %23, i32 %26)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %42, %3
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = icmp ult i8* %29, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.page**, %struct.page*** %7, align 8
  %40 = load %struct.page*, %struct.page** %39, align 8
  %41 = call i8* @kmap_atomic(%struct.page* %40)
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr i8, i8* %44, i64 %46
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @memcpy(i8* %43, i8* %47, i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @kunmap_atomic(i8* %50)
  store i8* null, i8** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  store i8* %55, i8** %9, align 8
  store i32 0, i32* %6, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.page**, %struct.page*** %7, align 8
  %58 = getelementptr inbounds %struct.page*, %struct.page** %57, i32 1
  store %struct.page** %58, %struct.page*** %7, align 8
  br label %28

59:                                               ; preds = %28
  %60 = load i8*, i8** %8, align 8
  ret i8* %60
}

declare dso_local i8* @erofs_get_pcpubuf(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
