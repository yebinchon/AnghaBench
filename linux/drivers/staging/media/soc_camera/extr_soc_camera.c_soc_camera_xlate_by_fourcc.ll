; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_xlate_by_fourcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_xlate_by_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_format_xlate = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.soc_camera_device = type { i32, %struct.soc_camera_format_xlate* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %0, i32 %1) #0 {
  %3 = alloca %struct.soc_camera_format_xlate*, align 8
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %10 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %15 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %14, i32 0, i32 1
  %16 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %16, i64 %18
  %20 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %13
  %27 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %28 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %27, i32 0, i32 1
  %29 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %29, i64 %31
  store %struct.soc_camera_format_xlate* %32, %struct.soc_camera_format_xlate** %3, align 8
  br label %38

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  store %struct.soc_camera_format_xlate* null, %struct.soc_camera_format_xlate** %3, align 8
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %3, align 8
  ret %struct.soc_camera_format_xlate* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
