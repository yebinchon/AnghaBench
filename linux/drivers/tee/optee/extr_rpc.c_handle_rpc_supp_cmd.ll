; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_handle_rpc_supp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_handle_rpc_supp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { i32 }
%struct.optee_msg_arg = type { i8*, i32, i32, i32, i32 }
%struct.tee_param = type { i32 }

@TEEC_ORIGIN_COMMS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TEEC_ERROR_OUT_OF_MEMORY = common dso_local global i8* null, align 8
@TEEC_ERROR_BAD_PARAMETERS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tee_context*, %struct.optee_msg_arg*)* @handle_rpc_supp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rpc_supp_cmd(%struct.tee_context* %0, %struct.optee_msg_arg* %1) #0 {
  %3 = alloca %struct.tee_context*, align 8
  %4 = alloca %struct.optee_msg_arg*, align 8
  %5 = alloca %struct.tee_param*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %3, align 8
  store %struct.optee_msg_arg* %1, %struct.optee_msg_arg** %4, align 8
  %6 = load i32, i32* @TEEC_ORIGIN_COMMS, align 4
  %7 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %8 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %10 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tee_param* @kmalloc_array(i32 %11, i32 4, i32 %12)
  store %struct.tee_param* %13, %struct.tee_param** %5, align 8
  %14 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %15 = icmp ne %struct.tee_param* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** @TEEC_ERROR_OUT_OF_MEMORY, align 8
  %18 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %19 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %22 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %23 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %26 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @optee_from_msg_param(%struct.tee_param* %21, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i8*, i8** @TEEC_ERROR_BAD_PARAMETERS, align 8
  %32 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %33 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %60

34:                                               ; preds = %20
  %35 = load %struct.tee_context*, %struct.tee_context** %3, align 8
  %36 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %37 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %40 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %43 = call i8* @optee_supp_thrd_req(%struct.tee_context* %35, i32 %38, i32 %41, %struct.tee_param* %42)
  %44 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %45 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %47 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %50 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %53 = call i64 @optee_to_msg_param(i32 %48, i32 %51, %struct.tee_param* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %34
  %56 = load i8*, i8** @TEEC_ERROR_BAD_PARAMETERS, align 8
  %57 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %4, align 8
  %58 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %34
  br label %60

60:                                               ; preds = %59, %30
  %61 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %62 = call i32 @kfree(%struct.tee_param* %61)
  br label %63

63:                                               ; preds = %60, %16
  ret void
}

declare dso_local %struct.tee_param* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @optee_from_msg_param(%struct.tee_param*, i32, i32) #1

declare dso_local i8* @optee_supp_thrd_req(%struct.tee_context*, i32, i32, %struct.tee_param*) #1

declare dso_local i64 @optee_to_msg_param(i32, i32, %struct.tee_param*) #1

declare dso_local i32 @kfree(%struct.tee_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
