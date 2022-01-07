; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mm_get_mapping_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mm_get_mapping_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_mappable_region = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_mappable_region*, i64, i64, %struct.gasket_mappable_region*, i64*)* @gasket_mm_get_mapping_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_mm_get_mapping_addrs(%struct.gasket_mappable_region* %0, i64 %1, i64 %2, %struct.gasket_mappable_region* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gasket_mappable_region*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gasket_mappable_region*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.gasket_mappable_region* %0, %struct.gasket_mappable_region** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.gasket_mappable_region* %3, %struct.gasket_mappable_region** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %7, align 8
  %16 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %7, align 8
  %19 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %14, align 8
  %24 = load i64*, i64** %11, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %12, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %76

31:                                               ; preds = %5
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %10, align 8
  %38 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64*, i64** %11, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = load i64, i64* %13, align 8
  %48 = call i8* @min(i64 %46, i64 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %10, align 8
  %51 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  store i32 1, i32* %6, align 4
  br label %76

52:                                               ; preds = %31
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %10, align 8
  %63 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64*, i64** %11, align 8
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %8, align 8
  %68 = sub nsw i64 %66, %67
  %69 = call i8* @min(i64 %65, i64 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %10, align 8
  %72 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  store i32 1, i32* %6, align 4
  br label %76

73:                                               ; preds = %56, %52
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %60, %35, %30
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i8* @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
