; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_pfn_array_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_pfn_array_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfn_array = type { i32, i32*, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfn_array*, i32, i32)* @pfn_array_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfn_array_alloc(%struct.pfn_array* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfn_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pfn_array* %0, %struct.pfn_array** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %10 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %15 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %122

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %24 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PAGE_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %28, %29
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = add i32 %30, %32
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = lshr i32 %33, %34
  %36 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %37 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %39 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %21
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %122

45:                                               ; preds = %21
  %46 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %47 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32* @kcalloc(i32 %48, i32 8, i32 %49)
  %51 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %52 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %54 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %63 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %122

66:                                               ; preds = %45
  %67 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %68 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %71 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %76 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %75, i32 0, i32 3
  store i32* %74, i32** %76, align 8
  %77 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %78 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PAGE_SHIFT, align 4
  %81 = lshr i32 %79, %80
  %82 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %83 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %87 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 -1, i32* %89, align 4
  store i32 1, i32* %8, align 4
  br label %90

90:                                               ; preds = %118, %66
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %93 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %98 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, 1
  %106 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %107 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load %struct.pfn_array*, %struct.pfn_array** %5, align 8
  %113 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 -1, i32* %117, align 4
  br label %118

118:                                              ; preds = %96
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %90

121:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %61, %42, %18
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
