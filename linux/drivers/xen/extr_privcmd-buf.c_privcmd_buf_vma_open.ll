; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd-buf.c_privcmd_buf_vma_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd-buf.c_privcmd_buf_vma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.privcmd_buf_vma_private* }
%struct.privcmd_buf_vma_private = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @privcmd_buf_vma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @privcmd_buf_vma_open(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.privcmd_buf_vma_private*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i32 0, i32 0
  %6 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %5, align 8
  store %struct.privcmd_buf_vma_private* %6, %struct.privcmd_buf_vma_private** %3, align 8
  %7 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %3, align 8
  %8 = icmp ne %struct.privcmd_buf_vma_private* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %3, align 8
  %12 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %3, align 8
  %17 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %3, align 8
  %21 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %25

25:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
