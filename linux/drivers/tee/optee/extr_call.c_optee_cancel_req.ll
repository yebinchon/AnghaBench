; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_cancel_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_cancel_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { %struct.optee_context_data* }
%struct.optee_context_data = type { i32 }
%struct.tee_shm = type { i32 }
%struct.optee_msg_arg = type { i8*, i8*, i32 }
%struct.optee_session = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OPTEE_MSG_CMD_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_cancel_req(%struct.tee_context* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tee_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.optee_context_data*, align 8
  %9 = alloca %struct.tee_shm*, align 8
  %10 = alloca %struct.optee_msg_arg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.optee_session*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %14 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %13, i32 0, i32 0
  %15 = load %struct.optee_context_data*, %struct.optee_context_data** %14, align 8
  store %struct.optee_context_data* %15, %struct.optee_context_data** %8, align 8
  %16 = load %struct.optee_context_data*, %struct.optee_context_data** %8, align 8
  %17 = getelementptr inbounds %struct.optee_context_data, %struct.optee_context_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.optee_context_data*, %struct.optee_context_data** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.optee_session* @find_session(%struct.optee_context_data* %19, i8* %20)
  store %struct.optee_session* %21, %struct.optee_session** %12, align 8
  %22 = load %struct.optee_context_data*, %struct.optee_context_data** %8, align 8
  %23 = getelementptr inbounds %struct.optee_context_data, %struct.optee_context_data* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.optee_session*, %struct.optee_session** %12, align 8
  %26 = icmp ne %struct.optee_session* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %54

30:                                               ; preds = %3
  %31 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %32 = call %struct.tee_shm* @get_msg_arg(%struct.tee_context* %31, i32 0, %struct.optee_msg_arg** %10, i32* %11)
  store %struct.tee_shm* %32, %struct.tee_shm** %9, align 8
  %33 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %34 = call i64 @IS_ERR(%struct.tee_shm* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %38 = call i32 @PTR_ERR(%struct.tee_shm* %37)
  store i32 %38, i32* %4, align 4
  br label %54

39:                                               ; preds = %30
  %40 = load i32, i32* @OPTEE_MSG_CMD_CANCEL, align 4
  %41 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %42 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %45 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %10, align 8
  %48 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @optee_do_call_with_arg(%struct.tee_context* %49, i32 %50)
  %52 = load %struct.tee_shm*, %struct.tee_shm** %9, align 8
  %53 = call i32 @tee_shm_free(%struct.tee_shm* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %39, %36, %27
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.optee_session* @find_session(%struct.optee_context_data*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tee_shm* @get_msg_arg(%struct.tee_context*, i32, %struct.optee_msg_arg**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tee_shm*) #1

declare dso_local i32 @PTR_ERR(%struct.tee_shm*) #1

declare dso_local i32 @optee_do_call_with_arg(%struct.tee_context*, i32) #1

declare dso_local i32 @tee_shm_free(%struct.tee_shm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
