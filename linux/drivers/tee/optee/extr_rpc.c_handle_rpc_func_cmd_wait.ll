; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_handle_rpc_func_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_handle_rpc_func_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee_msg_arg = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OPTEE_MSG_ATTR_TYPE_MASK = common dso_local global i32 0, align 4
@OPTEE_MSG_ATTR_TYPE_VALUE_INPUT = common dso_local global i32 0, align 4
@TEEC_SUCCESS = common dso_local global i32 0, align 4
@TEEC_ERROR_BAD_PARAMETERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optee_msg_arg*)* @handle_rpc_func_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rpc_func_cmd_wait(%struct.optee_msg_arg* %0) #0 {
  %2 = alloca %struct.optee_msg_arg*, align 8
  %3 = alloca i32, align 4
  store %struct.optee_msg_arg* %0, %struct.optee_msg_arg** %2, align 8
  %4 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %2, align 8
  %5 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %2, align 8
  %11 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OPTEE_MSG_ATTR_TYPE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @OPTEE_MSG_ATTR_TYPE_VALUE_INPUT, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %35

21:                                               ; preds = %9
  %22 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %2, align 8
  %23 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @msleep_interruptible(i32 %30)
  %32 = load i32, i32* @TEEC_SUCCESS, align 4
  %33 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %2, align 8
  %34 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %20, %8
  %36 = load i32, i32* @TEEC_ERROR_BAD_PARAMETERS, align 4
  %37 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %2, align 8
  %38 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %21
  ret void
}

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
