; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_op_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_op_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.tee_shm* }
%struct.tee_shm = type { i32, i32 }
%struct.vm_area_struct = type { i64, i64, i32 }

@TEE_SHM_REGISTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, %struct.vm_area_struct*)* @tee_shm_op_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tee_shm_op_mmap(%struct.dma_buf* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.tee_shm*, align 8
  %7 = alloca i64, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %9 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %8, i32 0, i32 0
  %10 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  store %struct.tee_shm* %10, %struct.tee_shm** %6, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %19 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TEE_SHM_REGISTER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %33 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @remap_pfn_range(%struct.vm_area_struct* %28, i64 %31, i32 %36, i64 %37, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %27, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
