; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_shm_pool.c_pool_op_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_shm_pool.c_pool_op_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm_pool_mgr = type { i32 }
%struct.tee_shm = type { i32, i32, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tee_shm_pool_mgr*, %struct.tee_shm*, i64)* @pool_op_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_op_alloc(%struct.tee_shm_pool_mgr* %0, %struct.tee_shm* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tee_shm_pool_mgr*, align 8
  %6 = alloca %struct.tee_shm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.tee_shm_pool_mgr* %0, %struct.tee_shm_pool_mgr** %5, align 8
  store %struct.tee_shm* %1, %struct.tee_shm** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @get_order(i64 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @__GFP_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.page* @alloc_pages(i32 %14, i32 %15)
  store %struct.page* %16, %struct.page** %9, align 8
  %17 = load %struct.page*, %struct.page** %9, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load %struct.page*, %struct.page** %9, align 8
  %24 = call i32 @page_address(%struct.page* %23)
  %25 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %26 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.page*, %struct.page** %9, align 8
  %28 = call i32 @page_to_phys(%struct.page* %27)
  %29 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %30 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %31, %32
  %34 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %35 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @get_order(i64) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
