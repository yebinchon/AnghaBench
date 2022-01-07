; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_vma_find_special_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_vma_find_special_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { %struct.gntdev_grant_map* }
%struct.gntdev_grant_map = type { i64, %struct.page** }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.vm_area_struct*, i64)* @gntdev_vma_find_special_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @gntdev_vma_find_special_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gntdev_grant_map*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  %8 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %7, align 8
  store %struct.gntdev_grant_map* %8, %struct.gntdev_grant_map** %5, align 8
  %9 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %10 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %9, i32 0, i32 1
  %11 = load %struct.page**, %struct.page*** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %14 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  %19 = getelementptr inbounds %struct.page*, %struct.page** %11, i64 %18
  %20 = load %struct.page*, %struct.page** %19, align 8
  ret %struct.page* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
