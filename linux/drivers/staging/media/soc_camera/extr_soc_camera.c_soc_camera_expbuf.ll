; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_expbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_expbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32, %struct.file* }
%struct.v4l2_exportbuffer = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_exportbuffer*)* @soc_camera_expbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_expbuf(%struct.file* %0, i8* %1, %struct.v4l2_exportbuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_exportbuffer*, align 8
  %8 = alloca %struct.soc_camera_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_exportbuffer* %2, %struct.v4l2_exportbuffer** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %10, align 8
  store %struct.soc_camera_device* %11, %struct.soc_camera_device** %8, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 1
  %14 = load %struct.file*, %struct.file** %13, align 8
  %15 = icmp ne %struct.file* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 1
  %19 = load %struct.file*, %struct.file** %18, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = icmp ne %struct.file* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %16, %3
  %26 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %27 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %26, i32 0, i32 0
  %28 = load %struct.v4l2_exportbuffer*, %struct.v4l2_exportbuffer** %7, align 8
  %29 = call i32 @vb2_expbuf(i32* %27, %struct.v4l2_exportbuffer* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @vb2_expbuf(i32*, %struct.v4l2_exportbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
