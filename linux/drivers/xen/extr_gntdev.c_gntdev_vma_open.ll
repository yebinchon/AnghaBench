; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_vma_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_vma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.gntdev_grant_map* }
%struct.gntdev_grant_map = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"gntdev_vma_open %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @gntdev_vma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gntdev_vma_open(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.gntdev_grant_map*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i32 0, i32 0
  %6 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  store %struct.gntdev_grant_map* %6, %struct.gntdev_grant_map** %3, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %7)
  %9 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %10 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %9, i32 0, i32 0
  %11 = call i32 @refcount_inc(i32* %10)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.vm_area_struct*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
