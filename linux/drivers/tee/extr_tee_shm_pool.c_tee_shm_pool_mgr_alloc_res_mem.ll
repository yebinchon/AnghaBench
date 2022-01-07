; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm_pool.c_tee_shm_pool_mgr_alloc_res_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm_pool.c_tee_shm_pool_mgr_alloc_res_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm_pool_mgr = type { i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gen_pool_best_fit = common dso_local global i32 0, align 4
@pool_ops_generic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tee_shm_pool_mgr* @tee_shm_pool_mgr_alloc_res_mem(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.tee_shm_pool_mgr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tee_shm_pool_mgr*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %10, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %20, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.tee_shm_pool_mgr* @ERR_PTR(i32 %32)
  store %struct.tee_shm_pool_mgr* %33, %struct.tee_shm_pool_mgr** %5, align 8
  br label %84

34:                                               ; preds = %25
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.tee_shm_pool_mgr* @kzalloc(i32 16, i32 %35)
  store %struct.tee_shm_pool_mgr* %36, %struct.tee_shm_pool_mgr** %11, align 8
  %37 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %11, align 8
  %38 = icmp ne %struct.tee_shm_pool_mgr* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.tee_shm_pool_mgr* @ERR_PTR(i32 %41)
  store %struct.tee_shm_pool_mgr* %42, %struct.tee_shm_pool_mgr** %5, align 8
  br label %84

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @gen_pool_create(i32 %44, i32 -1)
  %46 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %11, align 8
  %47 = getelementptr inbounds %struct.tee_shm_pool_mgr, %struct.tee_shm_pool_mgr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %11, align 8
  %49 = getelementptr inbounds %struct.tee_shm_pool_mgr, %struct.tee_shm_pool_mgr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %79

55:                                               ; preds = %43
  %56 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %11, align 8
  %57 = getelementptr inbounds %struct.tee_shm_pool_mgr, %struct.tee_shm_pool_mgr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @gen_pool_best_fit, align 4
  %60 = call i32 @gen_pool_set_algo(i32 %58, i32 %59, i32* null)
  %61 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %11, align 8
  %62 = getelementptr inbounds %struct.tee_shm_pool_mgr, %struct.tee_shm_pool_mgr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @gen_pool_add_virt(i32 %63, i64 %64, i64 %65, i64 %66, i32 -1)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %11, align 8
  %72 = getelementptr inbounds %struct.tee_shm_pool_mgr, %struct.tee_shm_pool_mgr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @gen_pool_destroy(i32 %73)
  br label %79

75:                                               ; preds = %55
  %76 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %11, align 8
  %77 = getelementptr inbounds %struct.tee_shm_pool_mgr, %struct.tee_shm_pool_mgr* %76, i32 0, i32 0
  store i32* @pool_ops_generic, i32** %77, align 8
  %78 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %11, align 8
  store %struct.tee_shm_pool_mgr* %78, %struct.tee_shm_pool_mgr** %5, align 8
  br label %84

79:                                               ; preds = %70, %52
  %80 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %11, align 8
  %81 = call i32 @kfree(%struct.tee_shm_pool_mgr* %80)
  %82 = load i32, i32* %12, align 4
  %83 = call %struct.tee_shm_pool_mgr* @ERR_PTR(i32 %82)
  store %struct.tee_shm_pool_mgr* %83, %struct.tee_shm_pool_mgr** %5, align 8
  br label %84

84:                                               ; preds = %79, %75, %39, %30
  %85 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %5, align 8
  ret %struct.tee_shm_pool_mgr* %85
}

declare dso_local %struct.tee_shm_pool_mgr* @ERR_PTR(i32) #1

declare dso_local %struct.tee_shm_pool_mgr* @kzalloc(i32, i32) #1

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @gen_pool_set_algo(i32, i32, i32*) #1

declare dso_local i32 @gen_pool_add_virt(i32, i64, i64, i64, i32) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.tee_shm_pool_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
