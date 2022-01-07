; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_allocatable_dpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_allocatable_dpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, i32, %struct.nd_mapping* }
%struct.nd_mapping = type { i32 }

@PHYS_ADDR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_region_allocatable_dpa(%struct.nd_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_mapping*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %8 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %7, i32 0, i32 1
  %9 = call i64 @is_memory(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @PHYS_ADDR_MAX, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %15 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %14, i32 0, i32 1
  %16 = call i32 @is_nvdimm_bus_locked(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %58, %13
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %24 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %21
  %28 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %29 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %28, i32 0, i32 2
  %30 = load %struct.nd_mapping*, %struct.nd_mapping** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %30, i64 %32
  store %struct.nd_mapping* %33, %struct.nd_mapping** %6, align 8
  %34 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %35 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %34, i32 0, i32 1
  %36 = call i64 @is_memory(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %41 = load %struct.nd_mapping*, %struct.nd_mapping** %6, align 8
  %42 = call i32 @nd_pmem_max_contiguous_dpa(%struct.nd_region* %40, %struct.nd_mapping* %41)
  %43 = call i32 @min(i32 %39, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %57

44:                                               ; preds = %27
  %45 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %46 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %45, i32 0, i32 1
  %47 = call i64 @is_nd_blk(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %51 = call i64 @nd_blk_available_dpa(%struct.nd_region* %50)
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %49, %44
  br label %57

57:                                               ; preds = %56, %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %63 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %62, i32 0, i32 1
  %64 = call i64 @is_memory(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %69 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  store i32 %71, i32* %2, align 4
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @is_memory(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nd_pmem_max_contiguous_dpa(%struct.nd_region*, %struct.nd_mapping*) #1

declare dso_local i64 @is_nd_blk(i32*) #1

declare dso_local i64 @nd_blk_available_dpa(%struct.nd_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
