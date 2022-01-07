; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mm_unmap_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mm_unmap_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32 }
%struct.vm_area_struct = type { i64, i64 }
%struct.gasket_mappable_region = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_mm_unmap_region(%struct.gasket_dev* %0, %struct.vm_area_struct* %1, %struct.gasket_mappable_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_dev*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.gasket_mappable_region*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gasket_mappable_region, align 8
  %11 = alloca i32, align 4
  store %struct.gasket_dev* %0, %struct.gasket_dev** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.gasket_mappable_region* %2, %struct.gasket_mappable_region** %7, align 8
  %12 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %7, align 8
  %13 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %20 = call i32 @gasket_mm_vma_bar_offset(%struct.gasket_dev* %18, %struct.vm_area_struct* %19, i64* %8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %17
  %26 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i32 @gasket_mm_get_mapping_addrs(%struct.gasket_mappable_region* %26, i64 %27, i64 %34, %struct.gasket_mappable_region* %10, i64* %9)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %52

38:                                               ; preds = %25
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %42, %43
  %45 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @DIV_ROUND_UP(i64 %46, i32 %47)
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = call i32 @zap_vma_ptes(%struct.vm_area_struct* %39, i64 %44, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %38, %37, %23, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @gasket_mm_vma_bar_offset(%struct.gasket_dev*, %struct.vm_area_struct*, i64*) #1

declare dso_local i32 @gasket_mm_get_mapping_addrs(%struct.gasket_mappable_region*, i64, i64, %struct.gasket_mappable_region*, i64*) #1

declare dso_local i32 @zap_vma_ptes(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
