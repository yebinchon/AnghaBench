; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_shm_pool.c_optee_shm_pool_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_shm_pool.c_optee_shm_pool_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm_pool_mgr = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pool_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tee_shm_pool_mgr* @optee_shm_pool_alloc_pages() #0 {
  %1 = alloca %struct.tee_shm_pool_mgr*, align 8
  %2 = alloca %struct.tee_shm_pool_mgr*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.tee_shm_pool_mgr* @kzalloc(i32 8, i32 %3)
  store %struct.tee_shm_pool_mgr* %4, %struct.tee_shm_pool_mgr** %2, align 8
  %5 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %2, align 8
  %6 = icmp ne %struct.tee_shm_pool_mgr* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.tee_shm_pool_mgr* @ERR_PTR(i32 %9)
  store %struct.tee_shm_pool_mgr* %10, %struct.tee_shm_pool_mgr** %1, align 8
  br label %15

11:                                               ; preds = %0
  %12 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %2, align 8
  %13 = getelementptr inbounds %struct.tee_shm_pool_mgr, %struct.tee_shm_pool_mgr* %12, i32 0, i32 0
  store i32* @pool_ops, i32** %13, align 8
  %14 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %2, align 8
  store %struct.tee_shm_pool_mgr* %14, %struct.tee_shm_pool_mgr** %1, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %1, align 8
  ret %struct.tee_shm_pool_mgr* %16
}

declare dso_local %struct.tee_shm_pool_mgr* @kzalloc(i32, i32) #1

declare dso_local %struct.tee_shm_pool_mgr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
