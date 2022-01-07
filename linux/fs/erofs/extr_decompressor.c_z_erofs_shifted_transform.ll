; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_z_erofs_shifted_transform.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_z_erofs_shifted_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_decompress_req = type { i32, i64*, i64*, i64 }
%struct.list_head = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_decompress_req*, %struct.list_head*)* @z_erofs_shifted_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_shifted_transform(%struct.z_erofs_decompress_req* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_erofs_decompress_req*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.z_erofs_decompress_req* %0, %struct.z_erofs_decompress_req** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %10 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %11 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %15 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i32 @PAGE_ALIGN(i64 %17)
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = lshr i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %23 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ugt i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = call i32 @DBG_BUGON(i32 1)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %142

32:                                               ; preds = %2
  %33 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %34 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %39 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @DBG_BUGON(i32 %46)
  store i32 0, i32* %3, align 4
  br label %142

48:                                               ; preds = %32
  %49 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %50 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @kmap_atomic(i64 %52)
  store i8* %53, i8** %8, align 8
  %54 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %55 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  store i8* null, i8** %9, align 8
  br label %77

61:                                               ; preds = %48
  %62 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %63 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @kmap_atomic(i64 %66)
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %70 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %61, %60
  %78 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %79 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %84 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %82, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %77
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %95 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memmove(i8* %89, i8* %93, i32 %96)
  br label %133

98:                                               ; preds = %77
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %132

101:                                              ; preds = %98
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @kunmap_atomic(i8* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %109 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @DBG_BUGON(i32 %115)
  %117 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %118 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 1
  %121 = load i64, i64* %120, align 8
  %122 = call i8* @kmap_atomic(i64 %121)
  store i8* %122, i8** %9, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %7, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %129 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @memcpy(i8* %123, i8* %127, i32 %130)
  br label %132

132:                                              ; preds = %107, %98
  br label %133

133:                                              ; preds = %132, %88
  %134 = load i8*, i8** %9, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @kunmap_atomic(i8* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @kunmap_atomic(i8* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %43, %28
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i8* @kmap_atomic(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
