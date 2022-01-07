; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32 }
%struct.v4l2_streamparm = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.soc_camera_device*, %struct.v4l2_streamparm*)* }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @soc_camera_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.soc_camera_device*, align 8
  %9 = alloca %struct.soc_camera_host*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %11, align 8
  store %struct.soc_camera_device* %12, %struct.soc_camera_device** %8, align 8
  %13 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %14 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %15)
  store %struct.soc_camera_host* %16, %struct.soc_camera_host** %9, align 8
  %17 = load %struct.soc_camera_host*, %struct.soc_camera_host** %9, align 8
  %18 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.soc_camera_device*, %struct.v4l2_streamparm*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_streamparm*)** %20, align 8
  %22 = icmp ne i32 (%struct.soc_camera_device*, %struct.v4l2_streamparm*)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.soc_camera_host*, %struct.soc_camera_host** %9, align 8
  %25 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.soc_camera_device*, %struct.v4l2_streamparm*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_streamparm*)** %27, align 8
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %30 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %31 = call i32 %28(%struct.soc_camera_device* %29, %struct.v4l2_streamparm* %30)
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOIOCTLCMD, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
