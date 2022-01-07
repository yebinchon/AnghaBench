; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_handle_rpc_func_cmd_shm_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_handle_rpc_func_cmd_shm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { i32 }
%struct.optee_msg_arg = type { i32, i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.tee_shm = type { i32 }

@TEEC_ORIGIN_COMMS = common dso_local global i32 0, align 4
@OPTEE_MSG_ATTR_TYPE_VALUE_INPUT = common dso_local global i64 0, align 8
@TEEC_ERROR_BAD_PARAMETERS = common dso_local global i8* null, align 8
@TEEC_SUCCESS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tee_context*, %struct.optee_msg_arg*)* @handle_rpc_func_cmd_shm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rpc_func_cmd_shm_free(%struct.tee_context* %0, %struct.optee_msg_arg* %1) #0 {
  %3 = alloca %struct.tee_context*, align 8
  %4 = alloca %struct.optee_msg_arg*, align 8
  %5 = alloca %struct.tee_shm*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %3, align 8
  store %struct.optee_msg_arg* %1, %struct.optee_msg_arg** %4, align 8
  %6 = load i32, i32* @TEEC_ORIGIN_COMMS, align 4
  %7 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %8 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %10 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %15 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OPTEE_MSG_ATTR_TYPE_VALUE_INPUT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13, %2
  %23 = load i8*, i8** @TEEC_ERROR_BAD_PARAMETERS, align 8
  %24 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %25 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %59

26:                                               ; preds = %13
  %27 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %28 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.tee_shm*
  store %struct.tee_shm* %35, %struct.tee_shm** %5, align 8
  %36 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %37 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %51 [
    i32 129, label %44
    i32 128, label %48
  ]

44:                                               ; preds = %26
  %45 = load %struct.tee_context*, %struct.tee_context** %3, align 8
  %46 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %47 = call i32 @cmd_free_suppl(%struct.tee_context* %45, %struct.tee_shm* %46)
  br label %55

48:                                               ; preds = %26
  %49 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %50 = call i32 @tee_shm_free(%struct.tee_shm* %49)
  br label %55

51:                                               ; preds = %26
  %52 = load i8*, i8** @TEEC_ERROR_BAD_PARAMETERS, align 8
  %53 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %54 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %48, %44
  %56 = load i8*, i8** @TEEC_SUCCESS, align 8
  %57 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %58 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %22
  ret void
}

declare dso_local i32 @cmd_free_suppl(%struct.tee_context*, %struct.tee_shm*) #1

declare dso_local i32 @tee_shm_free(%struct.tee_shm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
