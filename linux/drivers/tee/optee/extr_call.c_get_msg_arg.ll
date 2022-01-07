; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_get_msg_arg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_get_msg_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm = type { i64 }
%struct.tee_context = type { i32 }
%struct.optee_msg_arg = type { i64 }

@TEE_SHM_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tee_shm* (%struct.tee_context*, i64, %struct.optee_msg_arg**, i32*)* @get_msg_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tee_shm* @get_msg_arg(%struct.tee_context* %0, i64 %1, %struct.optee_msg_arg** %2, i32* %3) #0 {
  %5 = alloca %struct.tee_shm*, align 8
  %6 = alloca %struct.tee_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.optee_msg_arg**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tee_shm*, align 8
  %12 = alloca %struct.optee_msg_arg*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.optee_msg_arg** %2, %struct.optee_msg_arg*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @OPTEE_MSG_GET_ARG_SIZE(i64 %14)
  %16 = load i32, i32* @TEE_SHM_MAPPED, align 4
  %17 = call %struct.tee_shm* @tee_shm_alloc(%struct.tee_context* %13, i32 %15, i32 %16)
  store %struct.tee_shm* %17, %struct.tee_shm** %11, align 8
  %18 = load %struct.tee_shm*, %struct.tee_shm** %11, align 8
  %19 = call i64 @IS_ERR(%struct.tee_shm* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load %struct.tee_shm*, %struct.tee_shm** %11, align 8
  store %struct.tee_shm* %22, %struct.tee_shm** %5, align 8
  br label %63

23:                                               ; preds = %4
  %24 = load %struct.tee_shm*, %struct.tee_shm** %11, align 8
  %25 = call %struct.tee_shm* @tee_shm_get_va(%struct.tee_shm* %24, i32 0)
  %26 = bitcast %struct.tee_shm* %25 to %struct.optee_msg_arg*
  store %struct.optee_msg_arg* %26, %struct.optee_msg_arg** %12, align 8
  %27 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %12, align 8
  %28 = bitcast %struct.optee_msg_arg* %27 to %struct.tee_shm*
  %29 = call i64 @IS_ERR(%struct.tee_shm* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %12, align 8
  %33 = bitcast %struct.optee_msg_arg* %32 to %struct.tee_shm*
  %34 = call i32 @PTR_ERR(%struct.tee_shm* %33)
  store i32 %34, i32* %10, align 4
  br label %53

35:                                               ; preds = %23
  %36 = load %struct.tee_shm*, %struct.tee_shm** %11, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @tee_shm_get_pa(%struct.tee_shm* %36, i32 0, i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %53

42:                                               ; preds = %35
  %43 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %12, align 8
  %44 = bitcast %struct.optee_msg_arg* %43 to %struct.tee_shm*
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @OPTEE_MSG_GET_ARG_SIZE(i64 %45)
  %47 = call i32 @memset(%struct.tee_shm* %44, i32 0, i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %12, align 8
  %50 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %12, align 8
  %52 = load %struct.optee_msg_arg**, %struct.optee_msg_arg*** %8, align 8
  store %struct.optee_msg_arg* %51, %struct.optee_msg_arg** %52, align 8
  br label %53

53:                                               ; preds = %42, %41, %31
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.tee_shm*, %struct.tee_shm** %11, align 8
  %58 = call i32 @tee_shm_free(%struct.tee_shm* %57)
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.tee_shm* @ERR_PTR(i32 %59)
  store %struct.tee_shm* %60, %struct.tee_shm** %5, align 8
  br label %63

61:                                               ; preds = %53
  %62 = load %struct.tee_shm*, %struct.tee_shm** %11, align 8
  store %struct.tee_shm* %62, %struct.tee_shm** %5, align 8
  br label %63

63:                                               ; preds = %61, %56, %21
  %64 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  ret %struct.tee_shm* %64
}

declare dso_local %struct.tee_shm* @tee_shm_alloc(%struct.tee_context*, i32, i32) #1

declare dso_local i32 @OPTEE_MSG_GET_ARG_SIZE(i64) #1

declare dso_local i64 @IS_ERR(%struct.tee_shm*) #1

declare dso_local %struct.tee_shm* @tee_shm_get_va(%struct.tee_shm*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.tee_shm*) #1

declare dso_local i32 @tee_shm_get_pa(%struct.tee_shm*, i32, i32*) #1

declare dso_local i32 @memset(%struct.tee_shm*, i32, i32) #1

declare dso_local i32 @tee_shm_free(%struct.tee_shm*) #1

declare dso_local %struct.tee_shm* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
