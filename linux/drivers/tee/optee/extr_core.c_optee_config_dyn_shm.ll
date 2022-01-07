; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_config_dyn_shm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_config_dyn_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm_pool = type opaque
%struct.tee_shm_pool_mgr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tee_shm_pool* ()* @optee_config_dyn_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tee_shm_pool* @optee_config_dyn_shm() #0 {
  %1 = alloca %struct.tee_shm_pool*, align 8
  %2 = alloca %struct.tee_shm_pool_mgr*, align 8
  %3 = alloca %struct.tee_shm_pool_mgr*, align 8
  %4 = alloca i8*, align 8
  %5 = call i8* (...) @optee_shm_pool_alloc_pages()
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @IS_ERR(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.tee_shm_pool*
  store %struct.tee_shm_pool* %11, %struct.tee_shm_pool** %1, align 8
  br label %41

12:                                               ; preds = %0
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.tee_shm_pool_mgr*
  store %struct.tee_shm_pool_mgr* %14, %struct.tee_shm_pool_mgr** %2, align 8
  %15 = call i8* (...) @optee_shm_pool_alloc_pages()
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @IS_ERR(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %2, align 8
  %21 = call i32 @tee_shm_pool_mgr_destroy(%struct.tee_shm_pool_mgr* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to %struct.tee_shm_pool*
  store %struct.tee_shm_pool* %23, %struct.tee_shm_pool** %1, align 8
  br label %41

24:                                               ; preds = %12
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.tee_shm_pool_mgr*
  store %struct.tee_shm_pool_mgr* %26, %struct.tee_shm_pool_mgr** %3, align 8
  %27 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %2, align 8
  %28 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %3, align 8
  %29 = call i8* @tee_shm_pool_alloc(%struct.tee_shm_pool_mgr* %27, %struct.tee_shm_pool_mgr* %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %2, align 8
  %35 = call i32 @tee_shm_pool_mgr_destroy(%struct.tee_shm_pool_mgr* %34)
  %36 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %3, align 8
  %37 = call i32 @tee_shm_pool_mgr_destroy(%struct.tee_shm_pool_mgr* %36)
  br label %38

38:                                               ; preds = %33, %24
  %39 = load i8*, i8** %4, align 8
  %40 = bitcast i8* %39 to %struct.tee_shm_pool*
  store %struct.tee_shm_pool* %40, %struct.tee_shm_pool** %1, align 8
  br label %41

41:                                               ; preds = %38, %19, %9
  %42 = load %struct.tee_shm_pool*, %struct.tee_shm_pool** %1, align 8
  ret %struct.tee_shm_pool* %42
}

declare dso_local i8* @optee_shm_pool_alloc_pages(...) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @tee_shm_pool_mgr_destroy(%struct.tee_shm_pool_mgr*) #1

declare dso_local i8* @tee_shm_pool_alloc(%struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
