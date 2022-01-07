; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_copy_from_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_copy_from_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pfn_array = type { i32, i32*, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i32, i64)* @copy_from_iova to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_from_iova(%struct.device* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pfn_array, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = bitcast %struct.pfn_array* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = load i32, i32* %8, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @pfn_array_alloc(%struct.pfn_array* %10, i32 %17, i64 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  br label %97

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @pfn_array_pin(%struct.pfn_array* %10, %struct.device* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @pfn_array_unpin_free(%struct.pfn_array* %10, %struct.device* %31)
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  br label %97

35:                                               ; preds = %25
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %90, %35
  %38 = load i32, i32* %12, align 4
  %39 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %93

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %10, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = shl i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %15, align 8
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %15, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %15, align 8
  br label %69

69:                                               ; preds = %55, %42
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = call i64 @min(i64 %70, i64 %71)
  store i64 %72, i64* %15, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %14, align 8
  %76 = sub i64 %74, %75
  %77 = getelementptr i8, i8* %73, i64 %76
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @memcpy(i8* %77, i8* %80, i64 %81)
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %14, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %14, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %69
  br label %93

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %37

93:                                               ; preds = %88, %37
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = call i32 @pfn_array_unpin_free(%struct.pfn_array* %10, %struct.device* %94)
  %96 = load i64, i64* %14, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %93, %30, %22
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pfn_array_alloc(%struct.pfn_array*, i32, i64) #2

declare dso_local i32 @pfn_array_pin(%struct.pfn_array*, %struct.device*) #2

declare dso_local i32 @pfn_array_unpin_free(%struct.pfn_array*, %struct.device*) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
