; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { i32, i32 }
%struct.gb_camera_flush_response = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GB_CAMERA_TYPE_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*, i32*)* @gb_camera_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_flush(%struct.gb_camera* %0, i32* %1) #0 {
  %3 = alloca %struct.gb_camera*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gb_camera_flush_response, align 4
  %6 = alloca i32, align 4
  store %struct.gb_camera* %0, %struct.gb_camera** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %8 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %11 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %19 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GB_CAMERA_TYPE_FLUSH, align 4
  %22 = call i32 @gb_operation_sync(i32 %20, i32 %21, i32* null, i32 0, %struct.gb_camera_flush_response* %5, i32 4)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %35

26:                                               ; preds = %17
  %27 = load i32*, i32** %4, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gb_camera_flush_response, %struct.gb_camera_flush_response* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %26
  br label %35

35:                                               ; preds = %34, %25, %14
  %36 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %37 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_operation_sync(i32, i32, i32*, i32, %struct.gb_camera_flush_response*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
