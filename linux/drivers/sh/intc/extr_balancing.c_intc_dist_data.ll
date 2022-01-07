; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/intc/extr_balancing.c_intc_dist_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/intc/extr_balancing.c_intc_dist_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.intc_mask_reg* }
%struct.intc_mask_reg = type { i64, i64*, i32 }
%struct.intc_desc_int = type { i32 }

@REG_FN_MODIFY_BASE = common dso_local global i32 0, align 4
@MODE_ENABLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intc_desc*, %struct.intc_desc_int*, i64)* @intc_dist_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_dist_data(%struct.intc_desc* %0, %struct.intc_desc_int* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intc_desc*, align 8
  %6 = alloca %struct.intc_desc_int*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.intc_mask_reg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.intc_desc* %0, %struct.intc_desc** %5, align 8
  store %struct.intc_desc_int* %1, %struct.intc_desc_int** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.intc_desc*, %struct.intc_desc** %5, align 8
  %16 = getelementptr inbounds %struct.intc_desc, %struct.intc_desc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %17, align 8
  store %struct.intc_mask_reg* %18, %struct.intc_mask_reg** %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %101, %3
  %20 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %8, align 8
  %21 = icmp ne %struct.intc_mask_reg* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.intc_desc*, %struct.intc_desc** %5, align 8
  %28 = getelementptr inbounds %struct.intc_desc, %struct.intc_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %26, %30
  br label %32

32:                                               ; preds = %25, %22, %19
  %33 = phi i1 [ false, %22 ], [ false, %19 ], [ %31, %25 ]
  br i1 %33, label %34, label %104

34:                                               ; preds = %32
  %35 = load %struct.intc_desc*, %struct.intc_desc** %5, align 8
  %36 = getelementptr inbounds %struct.intc_desc, %struct.intc_desc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.intc_mask_reg, %struct.intc_mask_reg* %38, i64 %40
  store %struct.intc_mask_reg* %41, %struct.intc_mask_reg** %8, align 8
  %42 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %8, align 8
  %43 = getelementptr inbounds %struct.intc_mask_reg, %struct.intc_mask_reg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  br label %101

47:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %97, %47
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %8, align 8
  %51 = getelementptr inbounds %struct.intc_mask_reg, %struct.intc_mask_reg* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @ARRAY_SIZE(i64* %52)
  %54 = icmp ult i32 %49, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %48
  %56 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %8, align 8
  %57 = getelementptr inbounds %struct.intc_mask_reg, %struct.intc_mask_reg* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %97

66:                                               ; preds = %55
  %67 = load i32, i32* @REG_FN_MODIFY_BASE, align 4
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* @MODE_ENABLE_REG, align 4
  store i32 %68, i32* %12, align 4
  %69 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %8, align 8
  %70 = getelementptr inbounds %struct.intc_mask_reg, %struct.intc_mask_reg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %13, align 8
  %72 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %8, align 8
  %73 = getelementptr inbounds %struct.intc_mask_reg, %struct.intc_mask_reg* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %14, align 8
  %75 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %8, align 8
  %76 = getelementptr inbounds %struct.intc_mask_reg, %struct.intc_mask_reg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 3
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.intc_desc_int*, %struct.intc_desc_int** %6, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @intc_get_reg(%struct.intc_desc_int* %84, i64 %85)
  %87 = load %struct.intc_desc_int*, %struct.intc_desc_int** %6, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @intc_get_reg(%struct.intc_desc_int* %87, i64 %88)
  %90 = load %struct.intc_mask_reg*, %struct.intc_mask_reg** %8, align 8
  %91 = getelementptr inbounds %struct.intc_mask_reg, %struct.intc_mask_reg* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %10, align 4
  %95 = sub i32 %93, %94
  %96 = call i32 @_INTC_MK(i32 %82, i32 %83, i32 %86, i32 %89, i32 1, i32 %95)
  store i32 %96, i32* %4, align 4
  br label %105

97:                                               ; preds = %65
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %48

100:                                              ; preds = %48
  br label %101

101:                                              ; preds = %100, %46
  %102 = load i32, i32* %9, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %19

104:                                              ; preds = %32
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %66
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @_INTC_MK(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @intc_get_reg(%struct.intc_desc_int*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
