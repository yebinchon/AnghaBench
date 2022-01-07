; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_invoke_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_invoke_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { %struct.optee_context_data* }
%struct.optee_context_data = type { i32 }
%struct.tee_ioctl_invoke_arg = type { i8*, i8*, i32, i32, i32, i32 }
%struct.tee_param = type { i32 }
%struct.tee_shm = type { i32 }
%struct.optee_msg_arg = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.optee_session = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OPTEE_MSG_CMD_INVOKE_COMMAND = common dso_local global i32 0, align 4
@TEEC_ERROR_COMMUNICATION = common dso_local global i8* null, align 8
@TEEC_ORIGIN_COMMS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_invoke_func(%struct.tee_context* %0, %struct.tee_ioctl_invoke_arg* %1, %struct.tee_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tee_context*, align 8
  %6 = alloca %struct.tee_ioctl_invoke_arg*, align 8
  %7 = alloca %struct.tee_param*, align 8
  %8 = alloca %struct.optee_context_data*, align 8
  %9 = alloca %struct.tee_shm*, align 8
  %10 = alloca %struct.optee_msg_arg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.optee_session*, align 8
  %13 = alloca i32, align 4
  store %struct.tee_context* %0, %struct.tee_context** %5, align 8
  store %struct.tee_ioctl_invoke_arg* %1, %struct.tee_ioctl_invoke_arg** %6, align 8
  store %struct.tee_param* %2, %struct.tee_param** %7, align 8
  %14 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %15 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %14, i32 0, i32 0
  %16 = load %struct.optee_context_data*, %struct.optee_context_data** %15, align 8
  store %struct.optee_context_data* %16, %struct.optee_context_data** %8, align 8
  %17 = load %struct.optee_context_data*, %struct.optee_context_data** %8, align 8
  %18 = getelementptr inbounds %struct.optee_context_data, %struct.optee_context_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.optee_context_data*, %struct.optee_context_data** %8, align 8
  %21 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %22 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, %struct.tee_ioctl_invoke_arg* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.optee_session* @find_session(%struct.optee_context_data* %20, i32 %23)
  store %struct.optee_session* %24, %struct.optee_session** %12, align 8
  %25 = load %struct.optee_context_data*, %struct.optee_context_data** %8, align 8
  %26 = getelementptr inbounds %struct.optee_context_data, %struct.optee_context_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.optee_session*, %struct.optee_session** %12, align 8
  %29 = icmp ne %struct.optee_session* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %119

33:                                               ; preds = %3
  %34 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %35 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %36 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, %struct.tee_ioctl_invoke_arg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.tee_shm* @get_msg_arg(%struct.tee_context* %34, i32 %37, %struct.optee_msg_arg** %10, i32* %11)
  store %struct.tee_shm* %38, %struct.tee_shm** %9, align 8
  %39 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %40 = call i64 @IS_ERR(%struct.tee_shm* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %44 = call i32 @PTR_ERR(%struct.tee_shm* %43)
  store i32 %44, i32* %4, align 4
  br label %119

45:                                               ; preds = %33
  %46 = load i32, i32* @OPTEE_MSG_CMD_INVOKE_COMMAND, align 4
  %47 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %48 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %50 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, %struct.tee_ioctl_invoke_arg* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %53 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %55 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, %struct.tee_ioctl_invoke_arg* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %58 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %60 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, %struct.tee_ioctl_invoke_arg* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %63 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %65 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %68 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, %struct.tee_ioctl_invoke_arg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.tee_param*, %struct.tee_param** %7, align 8
  %71 = call i32 @optee_to_msg_param(i32 %66, i32 %69, %struct.tee_param* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %45
  br label %115

75:                                               ; preds = %45
  %76 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @optee_do_call_with_arg(%struct.tee_context* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i8*, i8** @TEEC_ERROR_COMMUNICATION, align 8
  %82 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %83 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @TEEC_ORIGIN_COMMS, align 8
  %85 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %86 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.tee_param*, %struct.tee_param** %7, align 8
  %89 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %90 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, %struct.tee_ioctl_invoke_arg* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %93 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @optee_from_msg_param(%struct.tee_param* %88, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %87
  %98 = load i8*, i8** @TEEC_ERROR_COMMUNICATION, align 8
  %99 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %100 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @TEEC_ORIGIN_COMMS, align 8
  %102 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %103 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %87
  %105 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %106 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %109 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, %struct.tee_ioctl_invoke_arg* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %111 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %114 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, %struct.tee_ioctl_invoke_arg* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %104, %74
  %116 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %117 = call i32 @tee_shm_free(%struct.tee_shm* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %42, %30
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.optee_session* @find_session(%struct.optee_context_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tee_shm* @get_msg_arg(%struct.tee_context*, i32, %struct.optee_msg_arg**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tee_shm*) #1

declare dso_local i32 @PTR_ERR(%struct.tee_shm*) #1

declare dso_local i32 @optee_to_msg_param(i32, i32, %struct.tee_param*) #1

declare dso_local i64 @optee_do_call_with_arg(%struct.tee_context*, i32) #1

declare dso_local i64 @optee_from_msg_param(%struct.tee_param*, i32, i32) #1

declare dso_local i32 @tee_shm_free(%struct.tee_shm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
