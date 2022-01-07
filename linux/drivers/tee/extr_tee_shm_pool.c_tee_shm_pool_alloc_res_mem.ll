; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm_pool.c_tee_shm_pool_alloc_res_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm_pool.c_tee_shm_pool_alloc_res_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm_pool = type opaque
%struct.tee_shm_pool_mem_info = type { i32, i32, i32 }
%struct.tee_shm_pool_mgr = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tee_shm_pool* @tee_shm_pool_alloc_res_mem(%struct.tee_shm_pool_mem_info* %0, %struct.tee_shm_pool_mem_info* %1) #0 {
  %3 = alloca %struct.tee_shm_pool*, align 8
  %4 = alloca %struct.tee_shm_pool_mem_info*, align 8
  %5 = alloca %struct.tee_shm_pool_mem_info*, align 8
  %6 = alloca %struct.tee_shm_pool_mgr*, align 8
  %7 = alloca %struct.tee_shm_pool_mgr*, align 8
  %8 = alloca i8*, align 8
  store %struct.tee_shm_pool_mem_info* %0, %struct.tee_shm_pool_mem_info** %4, align 8
  store %struct.tee_shm_pool_mem_info* %1, %struct.tee_shm_pool_mem_info** %5, align 8
  %9 = load %struct.tee_shm_pool_mem_info*, %struct.tee_shm_pool_mem_info** %4, align 8
  %10 = getelementptr inbounds %struct.tee_shm_pool_mem_info, %struct.tee_shm_pool_mem_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tee_shm_pool_mem_info*, %struct.tee_shm_pool_mem_info** %4, align 8
  %13 = getelementptr inbounds %struct.tee_shm_pool_mem_info, %struct.tee_shm_pool_mem_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tee_shm_pool_mem_info*, %struct.tee_shm_pool_mem_info** %4, align 8
  %16 = getelementptr inbounds %struct.tee_shm_pool_mem_info, %struct.tee_shm_pool_mem_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @tee_shm_pool_mgr_alloc_res_mem(i32 %11, i32 %14, i32 %17, i32 3)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @IS_ERR(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.tee_shm_pool*
  store %struct.tee_shm_pool* %24, %struct.tee_shm_pool** %3, align 8
  br label %64

25:                                               ; preds = %2
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to %struct.tee_shm_pool_mgr*
  store %struct.tee_shm_pool_mgr* %27, %struct.tee_shm_pool_mgr** %6, align 8
  %28 = load %struct.tee_shm_pool_mem_info*, %struct.tee_shm_pool_mem_info** %5, align 8
  %29 = getelementptr inbounds %struct.tee_shm_pool_mem_info, %struct.tee_shm_pool_mem_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tee_shm_pool_mem_info*, %struct.tee_shm_pool_mem_info** %5, align 8
  %32 = getelementptr inbounds %struct.tee_shm_pool_mem_info, %struct.tee_shm_pool_mem_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tee_shm_pool_mem_info*, %struct.tee_shm_pool_mem_info** %5, align 8
  %35 = getelementptr inbounds %struct.tee_shm_pool_mem_info, %struct.tee_shm_pool_mem_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = call i8* @tee_shm_pool_mgr_alloc_res_mem(i32 %30, i32 %33, i32 %36, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %59

43:                                               ; preds = %25
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to %struct.tee_shm_pool_mgr*
  store %struct.tee_shm_pool_mgr* %45, %struct.tee_shm_pool_mgr** %7, align 8
  %46 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %6, align 8
  %47 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %7, align 8
  %48 = call i8* @tee_shm_pool_alloc(%struct.tee_shm_pool_mgr* %46, %struct.tee_shm_pool_mgr* %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %56

53:                                               ; preds = %43
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to %struct.tee_shm_pool*
  store %struct.tee_shm_pool* %55, %struct.tee_shm_pool** %3, align 8
  br label %64

56:                                               ; preds = %52
  %57 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %7, align 8
  %58 = call i32 @tee_shm_pool_mgr_destroy(%struct.tee_shm_pool_mgr* %57)
  br label %59

59:                                               ; preds = %56, %42
  %60 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %6, align 8
  %61 = call i32 @tee_shm_pool_mgr_destroy(%struct.tee_shm_pool_mgr* %60)
  %62 = load i8*, i8** %8, align 8
  %63 = bitcast i8* %62 to %struct.tee_shm_pool*
  store %struct.tee_shm_pool* %63, %struct.tee_shm_pool** %3, align 8
  br label %64

64:                                               ; preds = %59, %53, %22
  %65 = load %struct.tee_shm_pool*, %struct.tee_shm_pool** %3, align 8
  ret %struct.tee_shm_pool* %65
}

declare dso_local i8* @tee_shm_pool_mgr_alloc_res_mem(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @tee_shm_pool_alloc(%struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr*) #1

declare dso_local i32 @tee_shm_pool_mgr_destroy(%struct.tee_shm_pool_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
