; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_enable_shm_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_enable_shm_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee = type { i32, i32 (i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)* }
%struct.arm_smccc_res = type opaque
%struct.optee_call_waiter = type { i32 }
%struct.arm_smccc_res.0 = type { i64 }

@OPTEE_SMC_ENABLE_SHM_CACHE = common dso_local global i32 0, align 4
@OPTEE_SMC_RETURN_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optee_enable_shm_cache(%struct.optee* %0) #0 {
  %2 = alloca %struct.optee*, align 8
  %3 = alloca %struct.optee_call_waiter, align 4
  %4 = alloca %struct.arm_smccc_res.0, align 8
  store %struct.optee* %0, %struct.optee** %2, align 8
  %5 = load %struct.optee*, %struct.optee** %2, align 8
  %6 = getelementptr inbounds %struct.optee, %struct.optee* %5, i32 0, i32 0
  %7 = call i32 @optee_cq_wait_init(i32* %6, %struct.optee_call_waiter* %3)
  br label %8

8:                                                ; preds = %1, %20
  %9 = load %struct.optee*, %struct.optee** %2, align 8
  %10 = getelementptr inbounds %struct.optee, %struct.optee* %9, i32 0, i32 1
  %11 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)** %10, align 8
  %12 = load i32, i32* @OPTEE_SMC_ENABLE_SHM_CACHE, align 4
  %13 = bitcast %struct.arm_smccc_res.0* %4 to %struct.arm_smccc_res*
  %14 = call i32 %11(i32 %12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %13)
  %15 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OPTEE_SMC_RETURN_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %24

20:                                               ; preds = %8
  %21 = load %struct.optee*, %struct.optee** %2, align 8
  %22 = getelementptr inbounds %struct.optee, %struct.optee* %21, i32 0, i32 0
  %23 = call i32 @optee_cq_wait_for_completion(i32* %22, %struct.optee_call_waiter* %3)
  br label %8

24:                                               ; preds = %19
  %25 = load %struct.optee*, %struct.optee** %2, align 8
  %26 = getelementptr inbounds %struct.optee, %struct.optee* %25, i32 0, i32 0
  %27 = call i32 @optee_cq_wait_final(i32* %26, %struct.optee_call_waiter* %3)
  ret void
}

declare dso_local i32 @optee_cq_wait_init(i32*, %struct.optee_call_waiter*) #1

declare dso_local i32 @optee_cq_wait_for_completion(i32*, %struct.optee_call_waiter*) #1

declare dso_local i32 @optee_cq_wait_final(i32*, %struct.optee_call_waiter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
