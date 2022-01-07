; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_handle_rpc_func_cmd_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_handle_rpc_func_cmd_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee = type { i32 }
%struct.optee_msg_arg = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@OPTEE_MSG_ATTR_TYPE_MASK = common dso_local global i32 0, align 4
@OPTEE_MSG_ATTR_TYPE_VALUE_INPUT = common dso_local global i32 0, align 4
@TEEC_SUCCESS = common dso_local global i32 0, align 4
@TEEC_ERROR_BAD_PARAMETERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optee*, %struct.optee_msg_arg*)* @handle_rpc_func_cmd_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rpc_func_cmd_wq(%struct.optee* %0, %struct.optee_msg_arg* %1) #0 {
  %3 = alloca %struct.optee*, align 8
  %4 = alloca %struct.optee_msg_arg*, align 8
  store %struct.optee* %0, %struct.optee** %3, align 8
  store %struct.optee_msg_arg* %1, %struct.optee_msg_arg** %4, align 8
  %5 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %6 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %60

10:                                               ; preds = %2
  %11 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %12 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OPTEE_MSG_ATTR_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @OPTEE_MSG_ATTR_TYPE_VALUE_INPUT, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %60

22:                                               ; preds = %10
  %23 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %24 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %55 [
    i32 129, label %31
    i32 128, label %43
  ]

31:                                               ; preds = %22
  %32 = load %struct.optee*, %struct.optee** %3, align 8
  %33 = getelementptr inbounds %struct.optee, %struct.optee* %32, i32 0, i32 0
  %34 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %35 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wq_sleep(i32* %33, i32 %41)
  br label %56

43:                                               ; preds = %22
  %44 = load %struct.optee*, %struct.optee** %3, align 8
  %45 = getelementptr inbounds %struct.optee, %struct.optee* %44, i32 0, i32 0
  %46 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %47 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wq_wakeup(i32* %45, i32 %53)
  br label %56

55:                                               ; preds = %22
  br label %60

56:                                               ; preds = %43, %31
  %57 = load i32, i32* @TEEC_SUCCESS, align 4
  %58 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %59 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %55, %21, %9
  %61 = load i32, i32* @TEEC_ERROR_BAD_PARAMETERS, align 4
  %62 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %63 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  ret void
}

declare dso_local i32 @wq_sleep(i32*, i32) #1

declare dso_local i32 @wq_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
