; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xlate_mmu.c_xen_xlate_remap_gfn_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xlate_mmu.c_xen_xlate_remap_gfn_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }
%struct.remap_data = type { i32, i32, i32*, i32, i64, %struct.page**, %struct.vm_area_struct*, i32, i32* }

@XEN_PFN_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@remap_pte_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_xlate_remap_gfn_array(%struct.vm_area_struct* %0, i64 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, %struct.page** %7) #0 {
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.remap_data, align 8
  %19 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.page** %7, %struct.page*** %16, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @XEN_PFN_PER_PAGE, align 4
  %22 = call i64 @DIV_ROUND_UP(i32 %20, i32 %21)
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = shl i64 %22, %23
  store i64 %24, i64* %19, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VM_PFNMAP, align 4
  %29 = load i32, i32* @VM_IO, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @VM_PFNMAP, align 4
  %33 = load i32, i32* @VM_IO, align 4
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %31, %34
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 8
  store i32* %39, i32** %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 7
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %48 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 6
  store %struct.vm_area_struct* %47, %struct.vm_area_struct** %48, align 8
  %49 = load %struct.page**, %struct.page*** %16, align 8
  %50 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 5
  store %struct.page** %49, %struct.page*** %50, align 8
  %51 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 2
  store i32* %52, i32** %53, align 8
  %54 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 3
  store i32 0, i32* %54, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %19, align 8
  %60 = load i32, i32* @remap_pte_fn, align 4
  %61 = call i32 @apply_to_page_range(i32 %57, i64 %58, i64 %59, i32 %60, %struct.remap_data* %18)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %8
  %65 = load i32, i32* %17, align 4
  br label %69

66:                                               ; preds = %8
  %67 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %18, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi i32 [ %65, %64 ], [ %68, %66 ]
  ret i32 %70
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @apply_to_page_range(i32, i64, i64, i32, %struct.remap_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
