; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_available_dpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_available_dpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, i32, %struct.nd_mapping* }
%struct.nd_mapping = type { i32 }
%struct.nvdimm_drvdata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nd_region_available_dpa(%struct.nd_region* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nd_mapping*, align 8
  %9 = alloca %struct.nvdimm_drvdata*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %11 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %10, i32 0, i32 1
  %12 = call i32 @is_nvdimm_bus_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  br label %17

17:                                               ; preds = %51, %1
  store i64 0, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %66, %17
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %22 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %19
  %26 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %27 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %26, i32 0, i32 2
  %28 = load %struct.nd_mapping*, %struct.nd_mapping** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %28, i64 %30
  store %struct.nd_mapping* %31, %struct.nd_mapping** %8, align 8
  %32 = load %struct.nd_mapping*, %struct.nd_mapping** %8, align 8
  %33 = call %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping* %32)
  store %struct.nvdimm_drvdata* %33, %struct.nvdimm_drvdata** %9, align 8
  %34 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %9, align 8
  %35 = icmp ne %struct.nvdimm_drvdata* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  store i64 0, i64* %2, align 8
  br label %71

37:                                               ; preds = %25
  %38 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %39 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %38, i32 0, i32 1
  %40 = call i64 @is_memory(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %44 = load %struct.nd_mapping*, %struct.nd_mapping** %8, align 8
  %45 = call i64 @nd_pmem_available_dpa(%struct.nd_region* %43, %struct.nd_mapping* %44, i64* %6)
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %4, align 8
  br label %17

53:                                               ; preds = %42
  br label %65

54:                                               ; preds = %37
  %55 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %56 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %55, i32 0, i32 1
  %57 = call i64 @is_nd_blk(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %61 = call i64 @nd_blk_available_dpa(%struct.nd_region* %60)
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %19

69:                                               ; preds = %19
  %70 = load i64, i64* %5, align 8
  store i64 %70, i64* %2, align 8
  br label %71

71:                                               ; preds = %69, %36
  %72 = load i64, i64* %2, align 8
  ret i64 %72
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32*) #1

declare dso_local %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping*) #1

declare dso_local i64 @is_memory(i32*) #1

declare dso_local i64 @nd_pmem_available_dpa(%struct.nd_region*, %struct.nd_mapping*, i64*) #1

declare dso_local i64 @is_nd_blk(i32*) #1

declare dso_local i64 @nd_blk_available_dpa(%struct.nd_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
