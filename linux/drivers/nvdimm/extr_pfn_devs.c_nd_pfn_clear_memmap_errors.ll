; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_clear_memmap_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_clear_memmap_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_pfn = type { i64, %struct.TYPE_5__, %struct.nd_pfn_sb*, %struct.nd_namespace_common* }
%struct.TYPE_5__ = type { i32 }
%struct.nd_pfn_sb = type { i32 }
%struct.nd_namespace_common = type { i32 }
%struct.nd_region = type { i64, i32 }
%struct.nd_namespace_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@PFN_MODE_PMEM = common dso_local global i64 0, align 8
@SZ_4K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"meta: %x badblocks at %llx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error clearing %x badblocks at %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_pfn*)* @nd_pfn_clear_memmap_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_pfn_clear_memmap_errors(%struct.nd_pfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_pfn*, align 8
  %4 = alloca %struct.nd_region*, align 8
  %5 = alloca %struct.nd_namespace_common*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nd_pfn_sb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nd_namespace_io*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.nd_pfn* %0, %struct.nd_pfn** %3, align 8
  %18 = load %struct.nd_pfn*, %struct.nd_pfn** %3, align 8
  %19 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.nd_region* @to_nd_region(i32 %21)
  store %struct.nd_region* %22, %struct.nd_region** %4, align 8
  %23 = load %struct.nd_pfn*, %struct.nd_pfn** %3, align 8
  %24 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %23, i32 0, i32 3
  %25 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %24, align 8
  store %struct.nd_namespace_common* %25, %struct.nd_namespace_common** %5, align 8
  %26 = call i32 @ZERO_PAGE(i32 0)
  %27 = call i8* @page_address(i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load %struct.nd_pfn*, %struct.nd_pfn** %3, align 8
  %29 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %28, i32 0, i32 2
  %30 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %29, align 8
  store %struct.nd_pfn_sb* %30, %struct.nd_pfn_sb** %7, align 8
  %31 = load %struct.nd_pfn*, %struct.nd_pfn** %3, align 8
  %32 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PFN_MODE_PMEM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

37:                                               ; preds = %1
  %38 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %39 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %38, i32 0, i32 0
  %40 = call %struct.nd_namespace_io* @to_nd_namespace_io(i32* %39)
  store %struct.nd_namespace_io* %40, %struct.nd_namespace_io** %14, align 8
  %41 = load i32, i32* @SZ_4K, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = lshr i64 %43, 9
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %7, align 8
  %47 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le64_to_cpu(i32 %48)
  %50 = ashr i32 %49, 9
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %119, %37
  %54 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %55 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %54, i32 0, i32 1
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @badblocks_check(i32* %55, i32 %56, i32 %57, i32* %12, i32* %8)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %118

61:                                               ; preds = %53
  %62 = load %struct.nd_pfn*, %struct.nd_pfn** %3, align 8
  %63 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %62, i32 0, i32 1
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @dev_dbg(%struct.TYPE_5__* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %68 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = shl i32 %70, 9
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %75 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %73, %77
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = call i64 @ALIGN_DOWN(i64 %78, i32 %79)
  store i64 %80, i64* %16, align 8
  %81 = load i32, i32* %8, align 4
  %82 = shl i32 %81, 9
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = call i64 @ALIGN(i32 %82, i32 %83)
  store i64 %84, i64* %15, align 8
  br label %85

85:                                               ; preds = %100, %61
  %86 = load i64, i64* %15, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load i64, i64* %15, align 8
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = call i64 @min(i64 %89, i32 %90)
  store i64 %91, i64* %17, align 8
  %92 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %17, align 8
  %96 = call i32 @nvdimm_write_bytes(%struct.nd_namespace_common* %92, i64 %93, i8* %94, i64 %95, i32 0)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %107

100:                                              ; preds = %88
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* %15, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %15, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %16, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %16, align 8
  br label %85

107:                                              ; preds = %99, %85
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.nd_pfn*, %struct.nd_pfn** %3, align 8
  %112 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %111, i32 0, i32 1
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @dev_err(%struct.TYPE_5__* %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %2, align 4
  br label %123

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %53
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %53, label %122

122:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %110, %36
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @ZERO_PAGE(i32) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @badblocks_check(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i64 @ALIGN_DOWN(i64, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @nvdimm_write_bytes(%struct.nd_namespace_common*, i64, i8*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
