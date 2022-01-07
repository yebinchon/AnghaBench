; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_nsblk_do_bvec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_nsblk_do_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_namespace_blk = type { i32 }
%struct.bio_integrity_payload = type { i32 }
%struct.page = type { i32 }
%struct.nd_blk_region = type { i32 (%struct.nd_blk_region*, i64, i8*, i32, i32)* }

@SECTOR_SHIFT = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_namespace_blk*, %struct.bio_integrity_payload*, %struct.page*, i32, i32, i32, i64)* @nsblk_do_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsblk_do_bvec(%struct.nd_namespace_blk* %0, %struct.bio_integrity_payload* %1, %struct.page* %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nd_namespace_blk*, align 8
  %10 = alloca %struct.bio_integrity_payload*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.nd_blk_region*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.nd_namespace_blk* %0, %struct.nd_namespace_blk** %9, align 8
  store %struct.bio_integrity_payload* %1, %struct.bio_integrity_payload** %10, align 8
  store %struct.page* %2, %struct.page** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %25 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %9, align 8
  %26 = call %struct.nd_blk_region* @to_ndbr(%struct.nd_namespace_blk* %25)
  store %struct.nd_blk_region* %26, %struct.nd_blk_region** %16, align 8
  store i32 0, i32* %21, align 4
  %27 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %9, align 8
  %28 = call i64 @nsblk_internal_lbasize(%struct.nd_namespace_blk* %27)
  store i64 %28, i64* %19, align 8
  %29 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %9, align 8
  %30 = call i64 @nsblk_sector_size(%struct.nd_namespace_blk* %29)
  store i64 %30, i64* %20, align 8
  br label %31

31:                                               ; preds = %98, %7
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %110

34:                                               ; preds = %31
  %35 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %36 = icmp ne %struct.bio_integrity_payload* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = load i64, i64* %20, align 8
  %40 = call i32 @min(i32 %38, i64 %39)
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %40, %37 ], [ %42, %41 ]
  store i32 %44, i32* %24, align 4
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @SECTOR_SHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = load i64, i64* %20, align 8
  %49 = call i64 @div_u64(i64 %47, i64 %48)
  store i64 %49, i64* %23, align 8
  %50 = load i64, i64* %23, align 8
  %51 = load i64, i64* %19, align 8
  %52 = mul nsw i64 %50, %51
  store i64 %52, i64* %18, align 8
  %53 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %9, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i32, i32* %24, align 4
  %56 = call i64 @to_dev_offset(%struct.nd_namespace_blk* %53, i64 %54, i32 %55)
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* @SIZE_MAX, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %112

63:                                               ; preds = %43
  %64 = load %struct.page*, %struct.page** %11, align 8
  %65 = call i8* @kmap_atomic(%struct.page* %64)
  store i8* %65, i8** %22, align 8
  %66 = load %struct.nd_blk_region*, %struct.nd_blk_region** %16, align 8
  %67 = getelementptr inbounds %struct.nd_blk_region, %struct.nd_blk_region* %66, i32 0, i32 0
  %68 = load i32 (%struct.nd_blk_region*, i64, i8*, i32, i32)*, i32 (%struct.nd_blk_region*, i64, i8*, i32, i32)** %67, align 8
  %69 = load %struct.nd_blk_region*, %struct.nd_blk_region** %16, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i8*, i8** %22, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 %68(%struct.nd_blk_region* %69, i64 %70, i8* %74, i32 %75, i32 %76)
  store i32 %77, i32* %21, align 4
  %78 = load i8*, i8** %22, align 8
  %79 = call i32 @kunmap_atomic(i8* %78)
  %80 = load i32, i32* %21, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %63
  %83 = load i32, i32* %21, align 4
  store i32 %83, i32* %8, align 4
  br label %112

84:                                               ; preds = %63
  %85 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %86 = icmp ne %struct.bio_integrity_payload* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %9, align 8
  %89 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %90 = load i64, i64* %23, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @nd_blk_rw_integrity(%struct.nd_namespace_blk* %88, %struct.bio_integrity_payload* %89, i64 %90, i32 %91)
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %21, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %21, align 4
  store i32 %96, i32* %8, align 4
  br label %112

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %84
  %99 = load i32, i32* %24, align 4
  %100 = load i32, i32* %12, align 4
  %101 = sub i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %24, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %13, align 4
  %105 = load i64, i64* %20, align 8
  %106 = load i64, i64* @SECTOR_SHIFT, align 8
  %107 = ashr i64 %105, %106
  %108 = load i64, i64* %15, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %15, align 8
  br label %31

110:                                              ; preds = %31
  %111 = load i32, i32* %21, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %95, %82, %60
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local %struct.nd_blk_region* @to_ndbr(%struct.nd_namespace_blk*) #1

declare dso_local i64 @nsblk_internal_lbasize(%struct.nd_namespace_blk*) #1

declare dso_local i64 @nsblk_sector_size(%struct.nd_namespace_blk*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @div_u64(i64, i64) #1

declare dso_local i64 @to_dev_offset(%struct.nd_namespace_blk*, i64, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @nd_blk_rw_integrity(%struct.nd_namespace_blk*, %struct.bio_integrity_payload*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
