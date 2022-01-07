; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_disable_shm_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_disable_shm_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee = type { i32, i32 (i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)* }
%struct.arm_smccc_res = type opaque
%struct.optee_call_waiter = type { i32 }
%union.anon = type { %struct.optee_smc_disable_shm_cache_result }
%struct.optee_smc_disable_shm_cache_result = type { i64, i32, i32 }
%struct.tee_shm = type { i32 }
%struct.arm_smccc_res.0 = type { i32 }

@OPTEE_SMC_DISABLE_SHM_CACHE = common dso_local global i32 0, align 4
@OPTEE_SMC_RETURN_ENOTAVAIL = common dso_local global i64 0, align 8
@OPTEE_SMC_RETURN_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optee_disable_shm_cache(%struct.optee* %0) #0 {
  %2 = alloca %struct.optee*, align 8
  %3 = alloca %struct.optee_call_waiter, align 4
  %4 = alloca %union.anon, align 8
  %5 = alloca %struct.tee_shm*, align 8
  store %struct.optee* %0, %struct.optee** %2, align 8
  %6 = load %struct.optee*, %struct.optee** %2, align 8
  %7 = getelementptr inbounds %struct.optee, %struct.optee* %6, i32 0, i32 0
  %8 = call i32 @optee_cq_wait_init(i32* %7, %struct.optee_call_waiter* %3)
  br label %9

9:                                                ; preds = %1, %43
  %10 = load %struct.optee*, %struct.optee** %2, align 8
  %11 = getelementptr inbounds %struct.optee, %struct.optee* %10, i32 0, i32 1
  %12 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)** %11, align 8
  %13 = load i32, i32* @OPTEE_SMC_DISABLE_SHM_CACHE, align 4
  %14 = bitcast %union.anon* %4 to %struct.arm_smccc_res.0*
  %15 = bitcast %struct.arm_smccc_res.0* %14 to %struct.arm_smccc_res*
  %16 = call i32 %12(i32 %13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %15)
  %17 = bitcast %union.anon* %4 to %struct.optee_smc_disable_shm_cache_result*
  %18 = getelementptr inbounds %struct.optee_smc_disable_shm_cache_result, %struct.optee_smc_disable_shm_cache_result* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OPTEE_SMC_RETURN_ENOTAVAIL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  br label %44

23:                                               ; preds = %9
  %24 = bitcast %union.anon* %4 to %struct.optee_smc_disable_shm_cache_result*
  %25 = getelementptr inbounds %struct.optee_smc_disable_shm_cache_result, %struct.optee_smc_disable_shm_cache_result* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OPTEE_SMC_RETURN_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = bitcast %union.anon* %4 to %struct.optee_smc_disable_shm_cache_result*
  %31 = getelementptr inbounds %struct.optee_smc_disable_shm_cache_result, %struct.optee_smc_disable_shm_cache_result* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = bitcast %union.anon* %4 to %struct.optee_smc_disable_shm_cache_result*
  %34 = getelementptr inbounds %struct.optee_smc_disable_shm_cache_result, %struct.optee_smc_disable_shm_cache_result* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.tee_shm* @reg_pair_to_ptr(i32 %32, i32 %35)
  store %struct.tee_shm* %36, %struct.tee_shm** %5, align 8
  %37 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %38 = call i32 @tee_shm_free(%struct.tee_shm* %37)
  br label %43

39:                                               ; preds = %23
  %40 = load %struct.optee*, %struct.optee** %2, align 8
  %41 = getelementptr inbounds %struct.optee, %struct.optee* %40, i32 0, i32 0
  %42 = call i32 @optee_cq_wait_for_completion(i32* %41, %struct.optee_call_waiter* %3)
  br label %43

43:                                               ; preds = %39, %29
  br label %9

44:                                               ; preds = %22
  %45 = load %struct.optee*, %struct.optee** %2, align 8
  %46 = getelementptr inbounds %struct.optee, %struct.optee* %45, i32 0, i32 0
  %47 = call i32 @optee_cq_wait_final(i32* %46, %struct.optee_call_waiter* %3)
  ret void
}

declare dso_local i32 @optee_cq_wait_init(i32*, %struct.optee_call_waiter*) #1

declare dso_local %struct.tee_shm* @reg_pair_to_ptr(i32, i32) #1

declare dso_local i32 @tee_shm_free(%struct.tee_shm*) #1

declare dso_local i32 @optee_cq_wait_for_completion(i32*, %struct.optee_call_waiter*) #1

declare dso_local i32 @optee_cq_wait_final(i32*, %struct.optee_call_waiter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
