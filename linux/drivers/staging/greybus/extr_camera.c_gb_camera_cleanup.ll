; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_camera*)* @gb_camera_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_camera_cleanup(%struct.gb_camera* %0) #0 {
  %2 = alloca %struct.gb_camera*, align 8
  store %struct.gb_camera* %0, %struct.gb_camera** %2, align 8
  %3 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %4 = call i32 @gb_camera_debugfs_cleanup(%struct.gb_camera* %3)
  %5 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %6 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %9 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %14 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @gb_connection_disable(i32* %15)
  %17 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %18 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @gb_connection_destroy(i32* %19)
  %21 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %22 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %25 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %30 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @gb_connection_disable(i32* %31)
  %33 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %34 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @gb_connection_destroy(i32* %35)
  %37 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %38 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %28, %23
  %40 = load %struct.gb_camera*, %struct.gb_camera** %2, align 8
  %41 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @gb_camera_debugfs_cleanup(%struct.gb_camera*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_connection_disable(i32*) #1

declare dso_local i32 @gb_connection_destroy(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
