; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32, %struct.TYPE_3__*, i32, %struct.file*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"camera device close\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @soc_camera_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.soc_camera_host*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  store %struct.soc_camera_device* %7, %struct.soc_camera_device** %3, align 8
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %9 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %10)
  store %struct.soc_camera_host* %11, %struct.soc_camera_host** %4, align 8
  %12 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %13 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %16 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %15, i32 0, i32 3
  %17 = load %struct.file*, %struct.file** %16, align 8
  %18 = load %struct.file*, %struct.file** %2, align 8
  %19 = icmp eq %struct.file* %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %22 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %29 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %28, i32 0, i32 4
  %30 = call i32 @vb2_queue_release(i32* %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %33 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %32, i32 0, i32 3
  store %struct.file* null, %struct.file** %33, align 8
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %36 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %40 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %34
  %44 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %45 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @pm_runtime_suspend(i32* %47)
  %49 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %50 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @pm_runtime_disable(i32* %52)
  %54 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %55 = call i32 @__soc_camera_power_off(%struct.soc_camera_device* %54)
  %56 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %57 = call i32 @soc_camera_remove_device(%struct.soc_camera_device* %56)
  br label %58

58:                                               ; preds = %43, %34
  %59 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %60 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %63 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @module_put(i32 %66)
  %68 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %69 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vb2_queue_release(i32*) #1

declare dso_local i32 @pm_runtime_suspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @__soc_camera_power_off(%struct.soc_camera_device*) #1

declare dso_local i32 @soc_camera_remove_device(%struct.soc_camera_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
