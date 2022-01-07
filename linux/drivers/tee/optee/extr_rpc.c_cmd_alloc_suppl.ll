; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_cmd_alloc_suppl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_cmd_alloc_suppl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm = type { i32 }
%struct.tee_context = type { i32 }
%struct.tee_param = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.optee = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT = common dso_local global i32 0, align 4
@OPTEE_MSG_RPC_SHM_TYPE_APPL = common dso_local global i32 0, align 4
@OPTEE_MSG_RPC_CMD_SHM_ALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tee_shm* (%struct.tee_context*, i64)* @cmd_alloc_suppl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tee_shm* @cmd_alloc_suppl(%struct.tee_context* %0, i64 %1) #0 {
  %3 = alloca %struct.tee_shm*, align 8
  %4 = alloca %struct.tee_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tee_param, align 8
  %8 = alloca %struct.optee*, align 8
  %9 = alloca %struct.tee_shm*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %11 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.optee* @tee_get_drvdata(i32 %12)
  store %struct.optee* %13, %struct.optee** %8, align 8
  %14 = load i32, i32* @TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT, align 4
  %15 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %7, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @OPTEE_MSG_RPC_SHM_TYPE_APPL, align 4
  %17 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %7, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %28 = load i32, i32* @OPTEE_MSG_RPC_CMD_SHM_ALLOC, align 4
  %29 = call i64 @optee_supp_thrd_req(%struct.tee_context* %27, i32 %28, i32 1, %struct.tee_param* %7)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.tee_shm* @ERR_PTR(i32 %34)
  store %struct.tee_shm* %35, %struct.tee_shm** %3, align 8
  br label %55

36:                                               ; preds = %2
  %37 = load %struct.optee*, %struct.optee** %8, align 8
  %38 = getelementptr inbounds %struct.optee, %struct.optee* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.optee*, %struct.optee** %8, align 8
  %42 = getelementptr inbounds %struct.optee, %struct.optee* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %7, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.tee_shm* @tee_shm_get_from_id(i32 %44, i64 %48)
  store %struct.tee_shm* %49, %struct.tee_shm** %9, align 8
  %50 = load %struct.optee*, %struct.optee** %8, align 8
  %51 = getelementptr inbounds %struct.optee, %struct.optee* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  store %struct.tee_shm* %54, %struct.tee_shm** %3, align 8
  br label %55

55:                                               ; preds = %36, %32
  %56 = load %struct.tee_shm*, %struct.tee_shm** %3, align 8
  ret %struct.tee_shm* %56
}

declare dso_local %struct.optee* @tee_get_drvdata(i32) #1

declare dso_local i64 @optee_supp_thrd_req(%struct.tee_context*, i32, i32, %struct.tee_param*) #1

declare dso_local %struct.tee_shm* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tee_shm* @tee_shm_get_from_id(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
