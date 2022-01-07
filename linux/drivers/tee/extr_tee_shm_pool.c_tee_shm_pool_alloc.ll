; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm_pool.c_tee_shm_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm_pool.c_tee_shm_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm_pool = type { %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr* }
%struct.tee_shm_pool_mgr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tee_shm_pool* @tee_shm_pool_alloc(%struct.tee_shm_pool_mgr* %0, %struct.tee_shm_pool_mgr* %1) #0 {
  %3 = alloca %struct.tee_shm_pool*, align 8
  %4 = alloca %struct.tee_shm_pool_mgr*, align 8
  %5 = alloca %struct.tee_shm_pool_mgr*, align 8
  %6 = alloca %struct.tee_shm_pool*, align 8
  store %struct.tee_shm_pool_mgr* %0, %struct.tee_shm_pool_mgr** %4, align 8
  store %struct.tee_shm_pool_mgr* %1, %struct.tee_shm_pool_mgr** %5, align 8
  %7 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %4, align 8
  %8 = call i32 @check_mgr_ops(%struct.tee_shm_pool_mgr* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %5, align 8
  %12 = call i32 @check_mgr_ops(%struct.tee_shm_pool_mgr* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.tee_shm_pool* @ERR_PTR(i32 %16)
  store %struct.tee_shm_pool* %17, %struct.tee_shm_pool** %3, align 8
  br label %35

18:                                               ; preds = %10
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tee_shm_pool* @kzalloc(i32 16, i32 %19)
  store %struct.tee_shm_pool* %20, %struct.tee_shm_pool** %6, align 8
  %21 = load %struct.tee_shm_pool*, %struct.tee_shm_pool** %6, align 8
  %22 = icmp ne %struct.tee_shm_pool* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.tee_shm_pool* @ERR_PTR(i32 %25)
  store %struct.tee_shm_pool* %26, %struct.tee_shm_pool** %3, align 8
  br label %35

27:                                               ; preds = %18
  %28 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %4, align 8
  %29 = load %struct.tee_shm_pool*, %struct.tee_shm_pool** %6, align 8
  %30 = getelementptr inbounds %struct.tee_shm_pool, %struct.tee_shm_pool* %29, i32 0, i32 1
  store %struct.tee_shm_pool_mgr* %28, %struct.tee_shm_pool_mgr** %30, align 8
  %31 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %5, align 8
  %32 = load %struct.tee_shm_pool*, %struct.tee_shm_pool** %6, align 8
  %33 = getelementptr inbounds %struct.tee_shm_pool, %struct.tee_shm_pool* %32, i32 0, i32 0
  store %struct.tee_shm_pool_mgr* %31, %struct.tee_shm_pool_mgr** %33, align 8
  %34 = load %struct.tee_shm_pool*, %struct.tee_shm_pool** %6, align 8
  store %struct.tee_shm_pool* %34, %struct.tee_shm_pool** %3, align 8
  br label %35

35:                                               ; preds = %27, %23, %14
  %36 = load %struct.tee_shm_pool*, %struct.tee_shm_pool** %3, align 8
  ret %struct.tee_shm_pool* %36
}

declare dso_local i32 @check_mgr_ops(%struct.tee_shm_pool_mgr*) #1

declare dso_local %struct.tee_shm_pool* @ERR_PTR(i32) #1

declare dso_local %struct.tee_shm_pool* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
