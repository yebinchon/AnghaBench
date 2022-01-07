; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_optee_handle_rpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_optee_handle_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { %struct.tee_device* }
%struct.tee_device = type { i32 }
%struct.optee_rpc_param = type { i32, i32, i32, i32, i32 }
%struct.optee_call_ctx = type { i32 }
%struct.optee = type { i32 }
%struct.tee_shm = type { i32 }

@TEE_SHM_MAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown RPC func 0x%x\0A\00", align 1
@OPTEE_SMC_CALL_RETURN_FROM_RPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optee_handle_rpc(%struct.tee_context* %0, %struct.optee_rpc_param* %1, %struct.optee_call_ctx* %2) #0 {
  %4 = alloca %struct.tee_context*, align 8
  %5 = alloca %struct.optee_rpc_param*, align 8
  %6 = alloca %struct.optee_call_ctx*, align 8
  %7 = alloca %struct.tee_device*, align 8
  %8 = alloca %struct.optee*, align 8
  %9 = alloca %struct.tee_shm*, align 8
  %10 = alloca i64, align 8
  store %struct.tee_context* %0, %struct.tee_context** %4, align 8
  store %struct.optee_rpc_param* %1, %struct.optee_rpc_param** %5, align 8
  store %struct.optee_call_ctx* %2, %struct.optee_call_ctx** %6, align 8
  %11 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %12 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %11, i32 0, i32 0
  %13 = load %struct.tee_device*, %struct.tee_device** %12, align 8
  store %struct.tee_device* %13, %struct.tee_device** %7, align 8
  %14 = load %struct.tee_device*, %struct.tee_device** %7, align 8
  %15 = call %struct.optee* @tee_get_drvdata(%struct.tee_device* %14)
  store %struct.optee* %15, %struct.optee** %8, align 8
  %16 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %17 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @OPTEE_SMC_RETURN_GET_RPC_FUNC(i32 %18)
  switch i32 %19, label %82 [
    i32 131, label %20
    i32 128, label %58
    i32 129, label %68
    i32 130, label %69
  ]

20:                                               ; preds = %3
  %21 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %22 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %23 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TEE_SHM_MAPPED, align 4
  %26 = call %struct.tee_shm* @tee_shm_alloc(%struct.tee_context* %21, i32 %24, i32 %25)
  store %struct.tee_shm* %26, %struct.tee_shm** %9, align 8
  %27 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %28 = call i32 @IS_ERR(%struct.tee_shm* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %20
  %31 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %32 = call i32 @tee_shm_get_pa(%struct.tee_shm* %31, i32 0, i64* %10)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %36 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %35, i32 0, i32 2
  %37 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %38 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %37, i32 0, i32 1
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @reg_pair_from_64(i32* %36, i32* %38, i64 %39)
  %41 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %42 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %41, i32 0, i32 4
  %43 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %44 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %43, i32 0, i32 3
  %45 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %46 = ptrtoint %struct.tee_shm* %45 to i64
  %47 = call i32 @reg_pair_from_64(i32* %42, i32* %44, i64 %46)
  br label %57

48:                                               ; preds = %30, %20
  %49 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %50 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %52 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %54 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %53, i32 0, i32 4
  store i32 0, i32* %54, align 4
  %55 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %56 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %55, i32 0, i32 3
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %34
  br label %88

58:                                               ; preds = %3
  %59 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %60 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %63 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.tee_shm* @reg_pair_to_ptr(i32 %61, i32 %64)
  store %struct.tee_shm* %65, %struct.tee_shm** %9, align 8
  %66 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %67 = call i32 @tee_shm_free(%struct.tee_shm* %66)
  br label %88

68:                                               ; preds = %3
  br label %88

69:                                               ; preds = %3
  %70 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %71 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %74 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.tee_shm* @reg_pair_to_ptr(i32 %72, i32 %75)
  store %struct.tee_shm* %76, %struct.tee_shm** %9, align 8
  %77 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %78 = load %struct.optee*, %struct.optee** %8, align 8
  %79 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %80 = load %struct.optee_call_ctx*, %struct.optee_call_ctx** %6, align 8
  %81 = call i32 @handle_rpc_func_cmd(%struct.tee_context* %77, %struct.optee* %78, %struct.tee_shm* %79, %struct.optee_call_ctx* %80)
  br label %88

82:                                               ; preds = %3
  %83 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %84 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @OPTEE_SMC_RETURN_GET_RPC_FUNC(i32 %85)
  %87 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %69, %68, %58, %57
  %89 = load i32, i32* @OPTEE_SMC_CALL_RETURN_FROM_RPC, align 4
  %90 = load %struct.optee_rpc_param*, %struct.optee_rpc_param** %5, align 8
  %91 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  ret void
}

declare dso_local %struct.optee* @tee_get_drvdata(%struct.tee_device*) #1

declare dso_local i32 @OPTEE_SMC_RETURN_GET_RPC_FUNC(i32) #1

declare dso_local %struct.tee_shm* @tee_shm_alloc(%struct.tee_context*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.tee_shm*) #1

declare dso_local i32 @tee_shm_get_pa(%struct.tee_shm*, i32, i64*) #1

declare dso_local i32 @reg_pair_from_64(i32*, i32*, i64) #1

declare dso_local %struct.tee_shm* @reg_pair_to_ptr(i32, i32) #1

declare dso_local i32 @tee_shm_free(%struct.tee_shm*) #1

declare dso_local i32 @handle_rpc_func_cmd(%struct.tee_context*, %struct.optee*, %struct.tee_shm*, %struct.optee_call_ctx*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
