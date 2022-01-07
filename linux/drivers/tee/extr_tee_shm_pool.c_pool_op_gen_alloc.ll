; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm_pool.c_pool_op_gen_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm_pool.c_pool_op_gen_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm_pool_mgr = type { %struct.gen_pool* }
%struct.gen_pool = type { i32 }
%struct.tee_shm = type { i64, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tee_shm_pool_mgr*, %struct.tee_shm*, i64)* @pool_op_gen_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_op_gen_alloc(%struct.tee_shm_pool_mgr* %0, %struct.tee_shm* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tee_shm_pool_mgr*, align 8
  %6 = alloca %struct.tee_shm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gen_pool*, align 8
  %10 = alloca i64, align 8
  store %struct.tee_shm_pool_mgr* %0, %struct.tee_shm_pool_mgr** %5, align 8
  store %struct.tee_shm* %1, %struct.tee_shm** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.tee_shm_pool_mgr*, %struct.tee_shm_pool_mgr** %5, align 8
  %12 = getelementptr inbounds %struct.tee_shm_pool_mgr, %struct.tee_shm_pool_mgr* %11, i32 0, i32 0
  %13 = load %struct.gen_pool*, %struct.gen_pool** %12, align 8
  store %struct.gen_pool* %13, %struct.gen_pool** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.gen_pool*, %struct.gen_pool** %9, align 8
  %16 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = call i64 @roundup(i64 %14, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.gen_pool*, %struct.gen_pool** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @gen_pool_alloc(%struct.gen_pool* %20, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @memset(i8* %30, i32 0, i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %36 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.gen_pool*, %struct.gen_pool** %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @gen_pool_virt_to_phys(%struct.gen_pool* %37, i64 %38)
  %40 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %41 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %44 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %28, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @gen_pool_alloc(%struct.gen_pool*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @gen_pool_virt_to_phys(%struct.gen_pool*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
