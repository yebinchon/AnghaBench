; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_do_call_with_arg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_do_call_with_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { i32 }
%struct.optee = type { i32, i32 (i64, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)* }
%struct.arm_smccc_res = type opaque
%struct.optee_call_waiter = type { i32 }
%struct.optee_rpc_param = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.optee_call_ctx = type { i32 }
%struct.arm_smccc_res.0 = type { i64, i32, i32, i32 }

@OPTEE_SMC_CALL_WITH_ARG = common dso_local global i64 0, align 8
@OPTEE_SMC_RETURN_ETHREAD_LIMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @optee_do_call_with_arg(%struct.tee_context* %0, i32 %1) #0 {
  %3 = alloca %struct.tee_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.optee*, align 8
  %6 = alloca %struct.optee_call_waiter, align 4
  %7 = alloca %struct.optee_rpc_param, align 8
  %8 = alloca %struct.optee_call_ctx, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.arm_smccc_res.0, align 8
  store %struct.tee_context* %0, %struct.tee_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.tee_context*, %struct.tee_context** %3, align 8
  %12 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.optee* @tee_get_drvdata(i32 %13)
  store %struct.optee* %14, %struct.optee** %5, align 8
  %15 = bitcast %struct.optee_rpc_param* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = bitcast %struct.optee_call_ctx* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load i64, i64* @OPTEE_SMC_CALL_WITH_ARG, align 8
  %18 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 3
  %20 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @reg_pair_from_64(i32* %19, i32* %20, i32 %21)
  %23 = load %struct.optee*, %struct.optee** %5, align 8
  %24 = getelementptr inbounds %struct.optee, %struct.optee* %23, i32 0, i32 0
  %25 = call i32 @optee_cq_wait_init(i32* %24, %struct.optee_call_waiter* %6)
  br label %26

26:                                               ; preds = %2, %81
  %27 = load %struct.optee*, %struct.optee** %5, align 8
  %28 = getelementptr inbounds %struct.optee, %struct.optee* %27, i32 0, i32 1
  %29 = load i32 (i64, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)*, i32 (i64, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)** %28, align 8
  %30 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %struct.arm_smccc_res.0* %10 to %struct.arm_smccc_res*
  %47 = call i32 %29(i64 %31, i32 %33, i32 %35, i32 %37, i32 %39, i32 %41, i32 %43, i32 %45, %struct.arm_smccc_res* %46)
  %48 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OPTEE_SMC_RETURN_ETHREAD_LIMIT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %26
  %53 = load %struct.optee*, %struct.optee** %5, align 8
  %54 = getelementptr inbounds %struct.optee, %struct.optee* %53, i32 0, i32 0
  %55 = call i32 @optee_cq_wait_for_completion(i32* %54, %struct.optee_call_waiter* %6)
  br label %81

56:                                               ; preds = %26
  %57 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @OPTEE_SMC_RETURN_IS_RPC(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = call i32 (...) @might_sleep()
  %63 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %10, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %10, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %10, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %10, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.optee_rpc_param, %struct.optee_rpc_param* %7, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = load %struct.tee_context*, %struct.tee_context** %3, align 8
  %76 = call i32 @optee_handle_rpc(%struct.tee_context* %75, %struct.optee_rpc_param* %7, %struct.optee_call_ctx* %8)
  br label %80

77:                                               ; preds = %56
  %78 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  br label %82

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80, %52
  br label %26

82:                                               ; preds = %77
  %83 = call i32 @optee_rpc_finalize_call(%struct.optee_call_ctx* %8)
  %84 = load %struct.optee*, %struct.optee** %5, align 8
  %85 = getelementptr inbounds %struct.optee, %struct.optee* %84, i32 0, i32 0
  %86 = call i32 @optee_cq_wait_final(i32* %85, %struct.optee_call_waiter* %6)
  %87 = load i64, i64* %9, align 8
  ret i64 %87
}

declare dso_local %struct.optee* @tee_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @reg_pair_from_64(i32*, i32*, i32) #1

declare dso_local i32 @optee_cq_wait_init(i32*, %struct.optee_call_waiter*) #1

declare dso_local i32 @optee_cq_wait_for_completion(i32*, %struct.optee_call_waiter*) #1

declare dso_local i64 @OPTEE_SMC_RETURN_IS_RPC(i64) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @optee_handle_rpc(%struct.tee_context*, %struct.optee_rpc_param*, %struct.optee_call_ctx*) #1

declare dso_local i32 @optee_rpc_finalize_call(%struct.optee_call_ctx*) #1

declare dso_local i32 @optee_cq_wait_final(i32*, %struct.optee_call_waiter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
