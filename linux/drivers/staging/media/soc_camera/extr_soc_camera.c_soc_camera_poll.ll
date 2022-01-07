; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { %struct.file*, i32 }
%struct.soc_camera_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, i32*)* }

@EPOLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @soc_camera_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.soc_camera_device*, align 8
  %7 = alloca %struct.soc_camera_host*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %10, align 8
  store %struct.soc_camera_device* %11, %struct.soc_camera_device** %6, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %14)
  store %struct.soc_camera_host* %15, %struct.soc_camera_host** %7, align 8
  %16 = load i32, i32* @EPOLLERR, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 0
  %19 = load %struct.file*, %struct.file** %18, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = icmp ne %struct.file* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EPOLLERR, align 4
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %26 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %29 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.file*, i32*)*, i32 (%struct.file*, i32*)** %31, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 %32(%struct.file* %33, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %37 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %24, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
