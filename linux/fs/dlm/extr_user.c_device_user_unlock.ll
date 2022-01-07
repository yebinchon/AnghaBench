; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_user_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_user_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_user_proc = type { i32 }
%struct.dlm_lock_params = type { i32, i32, i32, i32, i32, i32 }
%struct.dlm_ls = type { i32 }
%struct.dlm_user_args = type { i32, i32, i32, %struct.dlm_user_proc* }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@DLM_LKF_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_user_proc*, %struct.dlm_lock_params*)* @device_user_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_user_unlock(%struct.dlm_user_proc* %0, %struct.dlm_lock_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_user_proc*, align 8
  %5 = alloca %struct.dlm_lock_params*, align 8
  %6 = alloca %struct.dlm_ls*, align 8
  %7 = alloca %struct.dlm_user_args*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_user_proc* %0, %struct.dlm_user_proc** %4, align 8
  store %struct.dlm_lock_params* %1, %struct.dlm_lock_params** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32 %13)
  store %struct.dlm_ls* %14, %struct.dlm_ls** %6, align 8
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %16 = icmp ne %struct.dlm_ls* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call %struct.dlm_user_args* @kzalloc(i32 24, i32 %21)
  store %struct.dlm_user_args* %22, %struct.dlm_user_args** %7, align 8
  %23 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %24 = icmp ne %struct.dlm_user_args* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %75

26:                                               ; preds = %20
  %27 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %4, align 8
  %28 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %29 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %28, i32 0, i32 3
  store %struct.dlm_user_proc* %27, %struct.dlm_user_proc** %29, align 8
  %30 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %31 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %34 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %39 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %41 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %44 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %46 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DLM_LKF_CANCEL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %26
  %52 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %53 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %54 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %55 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %58 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dlm_user_cancel(%struct.dlm_ls* %52, %struct.dlm_user_args* %53, i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %74

61:                                               ; preds = %26
  %62 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %63 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %64 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %65 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %68 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %71 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dlm_user_unlock(%struct.dlm_ls* %62, %struct.dlm_user_args* %63, i32 %66, i32 %69, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %61, %51
  br label %75

75:                                               ; preds = %74, %25
  %76 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %77 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32) #1

declare dso_local %struct.dlm_user_args* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_user_cancel(%struct.dlm_ls*, %struct.dlm_user_args*, i32, i32) #1

declare dso_local i32 @dlm_user_unlock(%struct.dlm_ls*, %struct.dlm_user_args*, i32, i32, i32) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
