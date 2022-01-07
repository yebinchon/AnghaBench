; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_dlm_rcom_names.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_dlm_rcom_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dlm_ls = type { i32, i32 }
%struct.dlm_rcom = type { i32, i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_RCOM_NAMES = common dso_local global i32 0, align 4
@dlm_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@rcom_response = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_rcom_names(%struct.dlm_ls* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_rcom*, align 8
  %10 = alloca %struct.dlm_mhandle*, align 8
  %11 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %14 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %52, %4
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DLM_RCOM_NAMES, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @create_rcom(%struct.dlm_ls* %16, i32 %17, i32 %18, i32 %19, %struct.dlm_rcom** %9, %struct.dlm_mhandle** %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %54

24:                                               ; preds = %15
  %25 = load %struct.dlm_rcom*, %struct.dlm_rcom** %9, align 8
  %26 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @memcpy(i32 %27, i8* %28, i32 %29)
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %32 = load %struct.dlm_rcom*, %struct.dlm_rcom** %9, align 8
  %33 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %32, i32 0, i32 0
  %34 = call i32 @allow_sync_reply(%struct.dlm_ls* %31, i32* %33)
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 0), align 4
  %39 = call i32 @memset(i32 %37, i32 0, i32 %38)
  %40 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %41 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %10, align 8
  %42 = load %struct.dlm_rcom*, %struct.dlm_rcom** %9, align 8
  %43 = call i32 @send_rcom(%struct.dlm_ls* %40, %struct.dlm_mhandle* %41, %struct.dlm_rcom* %42)
  %44 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %45 = call i32 @dlm_wait_function(%struct.dlm_ls* %44, i32* @rcom_response)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %47 = call i32 @disallow_sync_reply(%struct.dlm_ls* %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %24
  br label %15

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @allow_sync_reply(%struct.dlm_ls*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

declare dso_local i32 @dlm_wait_function(%struct.dlm_ls*, i32*) #1

declare dso_local i32 @disallow_sync_reply(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
