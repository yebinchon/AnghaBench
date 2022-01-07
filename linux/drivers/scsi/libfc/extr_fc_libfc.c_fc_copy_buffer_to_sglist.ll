; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_libfc.c_fc_copy_buffer_to_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_libfc.c_fc_copy_buffer_to_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fc_copy_buffer_to_sglist(i8* %0, i64 %1, %struct.scatterlist* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %19

19:                                               ; preds = %90, %39, %6
  %20 = load i64, i64* %13, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %24 = icmp ne %struct.scatterlist* %23, null
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %115

27:                                               ; preds = %25
  %28 = load i64*, i64** %11, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %31 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %115

39:                                               ; preds = %34
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %44 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, %45
  store i64 %48, i64* %46, align 8
  %49 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %50 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %49)
  store %struct.scatterlist* %50, %struct.scatterlist** %9, align 8
  br label %19

51:                                               ; preds = %27
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %55, %57
  %59 = call i64 @min(i64 %52, i64 %58)
  store i64 %59, i64* %16, align 8
  %60 = load i64*, i64** %11, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %63 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  store i64 %65, i64* %15, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* @PAGE_MASK, align 8
  %70 = xor i64 %69, -1
  %71 = and i64 %68, %70
  %72 = sub i64 %67, %71
  %73 = call i64 @min(i64 %66, i64 %72)
  store i64 %73, i64* %16, align 8
  %74 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %75 = call i64 @sg_page(%struct.scatterlist* %74)
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* @PAGE_SHIFT, align 8
  %78 = lshr i64 %76, %77
  %79 = add i64 %75, %78
  %80 = call i8* @kmap_atomic(i64 %79)
  store i8* %80, i8** %17, align 8
  %81 = load i64*, i64** %12, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %51
  %84 = load i64*, i64** %12, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i64 @crc32(i64 %85, i8* %86, i64 %87)
  %89 = load i64*, i64** %12, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %51
  %91 = load i8*, i8** %17, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* @PAGE_MASK, align 8
  %94 = xor i64 %93, -1
  %95 = and i64 %92, %94
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i32 @memcpy(i8* %96, i8* %97, i64 %98)
  %100 = load i8*, i8** %17, align 8
  %101 = call i32 @kunmap_atomic(i8* %100)
  %102 = load i64, i64* %16, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr i8, i8* %103, i64 %102
  store i8* %104, i8** %7, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64*, i64** %11, align 8
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %105
  store i64 %108, i64* %106, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* %13, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %13, align 8
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %14, align 8
  br label %19

115:                                              ; preds = %38, %25
  %116 = load i64, i64* %14, align 8
  ret i64 %116
}

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @kmap_atomic(i64) #1

declare dso_local i64 @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @crc32(i64, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
