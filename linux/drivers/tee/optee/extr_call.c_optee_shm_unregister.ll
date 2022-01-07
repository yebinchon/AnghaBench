; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_shm_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_shm_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { i32 }
%struct.tee_shm = type { i32 }
%struct.optee_msg_arg = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@OPTEE_MSG_CMD_UNREGISTER_SHM = common dso_local global i32 0, align 4
@OPTEE_MSG_ATTR_TYPE_RMEM_INPUT = common dso_local global i32 0, align 4
@TEEC_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_shm_unregister(%struct.tee_context* %0, %struct.tee_shm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tee_context*, align 8
  %5 = alloca %struct.tee_shm*, align 8
  %6 = alloca %struct.tee_shm*, align 8
  %7 = alloca %struct.optee_msg_arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tee_context* %0, %struct.tee_context** %4, align 8
  store %struct.tee_shm* %1, %struct.tee_shm** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %11 = call %struct.tee_shm* @get_msg_arg(%struct.tee_context* %10, i32 1, %struct.optee_msg_arg** %7, i32* %8)
  store %struct.tee_shm* %11, %struct.tee_shm** %6, align 8
  %12 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %13 = call i64 @IS_ERR(%struct.tee_shm* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.tee_shm* %16)
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load i32, i32* @OPTEE_MSG_CMD_UNREGISTER_SHM, align 4
  %20 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %7, align 8
  %21 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @OPTEE_MSG_ATTR_TYPE_RMEM_INPUT, align 4
  %23 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %7, align 8
  %24 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %22, i32* %27, align 8
  %28 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %29 = ptrtoint %struct.tee_shm* %28 to i64
  %30 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %7, align 8
  %31 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %29, i64* %36, align 8
  %37 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @optee_do_call_with_arg(%struct.tee_context* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %18
  %42 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %7, align 8
  %43 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TEEC_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %18
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.tee_shm*, %struct.tee_shm** %6, align 8
  %52 = call i32 @tee_shm_free(%struct.tee_shm* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.tee_shm* @get_msg_arg(%struct.tee_context*, i32, %struct.optee_msg_arg**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tee_shm*) #1

declare dso_local i32 @PTR_ERR(%struct.tee_shm*) #1

declare dso_local i64 @optee_do_call_with_arg(%struct.tee_context*, i32) #1

declare dso_local i32 @tee_shm_free(%struct.tee_shm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
