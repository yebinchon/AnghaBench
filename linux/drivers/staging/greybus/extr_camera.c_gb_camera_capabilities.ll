; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GB_CAMERA_TYPE_CAPABILITIES = common dso_local global i32 0, align 4
@GB_OPERATION_FLAG_SHORT_RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to retrieve capabilities: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*, i32*, i64*)* @gb_camera_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_capabilities(%struct.gb_camera* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_camera*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_camera* %0, %struct.gb_camera** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %10 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gb_pm_runtime_get_sync(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %19 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %22 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %45

28:                                               ; preds = %17
  %29 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %30 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GB_CAMERA_TYPE_CAPABILITIES, align 4
  %33 = load i32, i32* @GB_OPERATION_FLAG_SHORT_RESPONSE, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i64*, i64** %7, align 8
  %37 = call i32 @gb_camera_operation_sync_flags(i32 %31, i32 %32, i32 %33, i32* null, i32 0, i8* %35, i64* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @gcam_err(%struct.gb_camera* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %28
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %47 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %50 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gb_pm_runtime_put_autosuspend(i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %45, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @gb_pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_camera_operation_sync_flags(i32, i32, i32, i32*, i32, i8*, i64*) #1

declare dso_local i32 @gcam_err(%struct.gb_camera*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
