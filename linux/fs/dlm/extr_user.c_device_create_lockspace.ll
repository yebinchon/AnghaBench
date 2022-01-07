; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_create_lockspace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_create_lockspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dlm_lspace_params = type { i32, i32 }
%struct.dlm_ls = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@dlm_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DLM_USER_LVB_LEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lspace_params*)* @device_create_lockspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_create_lockspace(%struct.dlm_lspace_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_lspace_params*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_lspace_params* %0, %struct.dlm_lspace_params** %3, align 8
  %7 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.dlm_lspace_params*, %struct.dlm_lspace_params** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_lspace_params, %struct.dlm_lspace_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlm_config, i32 0, i32 0), align 4
  %18 = load %struct.dlm_lspace_params*, %struct.dlm_lspace_params** %3, align 8
  %19 = getelementptr inbounds %struct.dlm_lspace_params, %struct.dlm_lspace_params* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DLM_USER_LVB_LEN, align 4
  %22 = call i32 @dlm_new_lockspace(i32 %16, i32 %17, i32 %20, i32 %21, i32* null, i32* null, i32* null, i32** %4)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %55

27:                                               ; preds = %13
  %28 = load i32*, i32** %4, align 8
  %29 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32* %28)
  store %struct.dlm_ls* %29, %struct.dlm_ls** %5, align 8
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %31 = icmp ne %struct.dlm_ls* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %27
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %37 = load %struct.dlm_lspace_params*, %struct.dlm_lspace_params** %3, align 8
  %38 = getelementptr inbounds %struct.dlm_lspace_params, %struct.dlm_lspace_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dlm_device_register(%struct.dlm_ls* %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %42 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @dlm_release_lockspace(i32* %46, i32 0)
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %50 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %32, %25, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @dlm_new_lockspace(i32, i32, i32, i32, i32*, i32*, i32*, i32**) #1

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32*) #1

declare dso_local i32 @dlm_device_register(%struct.dlm_ls*, i32) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_release_lockspace(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
