; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_close_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_close_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { %struct.optee_context_data* }
%struct.optee_context_data = type { i32 }
%struct.tee_shm = type { i32 }
%struct.optee_msg_arg = type { i32, i32 }
%struct.optee_session = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OPTEE_MSG_CMD_CLOSE_SESSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_close_session(%struct.tee_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tee_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.optee_context_data*, align 8
  %7 = alloca %struct.tee_shm*, align 8
  %8 = alloca %struct.optee_msg_arg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.optee_session*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %12 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %11, i32 0, i32 0
  %13 = load %struct.optee_context_data*, %struct.optee_context_data** %12, align 8
  store %struct.optee_context_data* %13, %struct.optee_context_data** %6, align 8
  %14 = load %struct.optee_context_data*, %struct.optee_context_data** %6, align 8
  %15 = getelementptr inbounds %struct.optee_context_data, %struct.optee_context_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.optee_context_data*, %struct.optee_context_data** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.optee_session* @find_session(%struct.optee_context_data* %17, i32 %18)
  store %struct.optee_session* %19, %struct.optee_session** %10, align 8
  %20 = load %struct.optee_session*, %struct.optee_session** %10, align 8
  %21 = icmp ne %struct.optee_session* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.optee_session*, %struct.optee_session** %10, align 8
  %24 = getelementptr inbounds %struct.optee_session, %struct.optee_session* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.optee_context_data*, %struct.optee_context_data** %6, align 8
  %28 = getelementptr inbounds %struct.optee_context_data, %struct.optee_context_data* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.optee_session*, %struct.optee_session** %10, align 8
  %31 = icmp ne %struct.optee_session* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %26
  %36 = load %struct.optee_session*, %struct.optee_session** %10, align 8
  %37 = call i32 @kfree(%struct.optee_session* %36)
  %38 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %39 = call %struct.tee_shm* @get_msg_arg(%struct.tee_context* %38, i32 0, %struct.optee_msg_arg** %8, i32* %9)
  store %struct.tee_shm* %39, %struct.tee_shm** %7, align 8
  %40 = load %struct.tee_shm*, %struct.tee_shm** %7, align 8
  %41 = call i64 @IS_ERR(%struct.tee_shm* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.tee_shm*, %struct.tee_shm** %7, align 8
  %45 = call i32 @PTR_ERR(%struct.tee_shm* %44)
  store i32 %45, i32* %3, align 4
  br label %58

46:                                               ; preds = %35
  %47 = load i32, i32* @OPTEE_MSG_CMD_CLOSE_SESSION, align 4
  %48 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %8, align 8
  %49 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %8, align 8
  %52 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @optee_do_call_with_arg(%struct.tee_context* %53, i32 %54)
  %56 = load %struct.tee_shm*, %struct.tee_shm** %7, align 8
  %57 = call i32 @tee_shm_free(%struct.tee_shm* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %46, %43, %32
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.optee_session* @find_session(%struct.optee_context_data*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.optee_session*) #1

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
