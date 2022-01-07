; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_vma_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_vma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.gntdev_grant_map*, %struct.file* }
%struct.gntdev_grant_map = type { i32* }
%struct.file = type { %struct.gntdev_priv* }
%struct.gntdev_priv = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"gntdev_vma_close %p\0A\00", align 1
@use_ptemod = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @gntdev_vma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gntdev_vma_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.gntdev_grant_map*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gntdev_priv*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  %8 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %7, align 8
  store %struct.gntdev_grant_map* %8, %struct.gntdev_grant_map** %3, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 1
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %4, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.gntdev_priv*, %struct.gntdev_priv** %13, align 8
  store %struct.gntdev_priv* %14, %struct.gntdev_priv** %5, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %15)
  %17 = load i64, i64* @use_ptemod, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.gntdev_priv*, %struct.gntdev_priv** %5, align 8
  %21 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %24 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.gntdev_priv*, %struct.gntdev_priv** %5, align 8
  %26 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %28

28:                                               ; preds = %19, %1
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  store %struct.gntdev_grant_map* null, %struct.gntdev_grant_map** %30, align 8
  %31 = load %struct.gntdev_priv*, %struct.gntdev_priv** %5, align 8
  %32 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %33 = call i32 @gntdev_put_map(%struct.gntdev_priv* %31, %struct.gntdev_grant_map* %32)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gntdev_put_map(%struct.gntdev_priv*, %struct.gntdev_grant_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
