; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__*, i32*, i64, %struct.video_device*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.video_device = type { i32 }
%struct.soc_camera_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.soc_camera_device*)*, i64 }
%struct.device = type { %struct.device_driver* }
%struct.device_driver = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @soc_camera_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_remove(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.soc_camera_desc*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_driver*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %7 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %8 = call %struct.soc_camera_desc* @to_soc_camera_desc(%struct.soc_camera_device* %7)
  store %struct.soc_camera_desc* %8, %struct.soc_camera_desc** %3, align 8
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %10 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %9, i32 0, i32 3
  %11 = load %struct.video_device*, %struct.video_device** %10, align 8
  store %struct.video_device* %11, %struct.video_device** %4, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 4
  %14 = call i32 @v4l2_ctrl_handler_free(i32* %13)
  %15 = load %struct.video_device*, %struct.video_device** %4, align 8
  %16 = icmp ne %struct.video_device* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.video_device*, %struct.video_device** %4, align 8
  %19 = call i32 @video_unregister_device(%struct.video_device* %18)
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %21 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %20, i32 0, i32 3
  store %struct.video_device* null, %struct.video_device** %21, align 8
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %3, align 8
  %24 = getelementptr inbounds %struct.soc_camera_desc, %struct.soc_camera_desc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %30 = call i32 @soc_camera_i2c_free(%struct.soc_camera_device* %29)
  br label %57

31:                                               ; preds = %22
  %32 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %33 = call %struct.device* @to_soc_camera_control(%struct.soc_camera_device* %32)
  store %struct.device* %33, %struct.device** %5, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = icmp ne %struct.device* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load %struct.device_driver*, %struct.device_driver** %38, align 8
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi %struct.device_driver* [ %39, %36 ], [ null, %40 ]
  store %struct.device_driver* %42, %struct.device_driver** %6, align 8
  %43 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %44 = icmp ne %struct.device_driver* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %3, align 8
  %47 = getelementptr inbounds %struct.soc_camera_desc, %struct.soc_camera_desc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*)** %48, align 8
  %50 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %51 = call i32 %49(%struct.soc_camera_device* %50)
  %52 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %53 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @module_put(i32 %54)
  br label %56

56:                                               ; preds = %45, %41
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %59 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %64 = call i32 @soc_camera_free_user_formats(%struct.soc_camera_device* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %67 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %72 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @v4l2_clk_unregister(i32* %73)
  %75 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %76 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %79 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = icmp ne %struct.TYPE_4__* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %84 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @platform_device_unregister(i32 %87)
  br label %89

89:                                               ; preds = %82, %77
  ret i32 0
}

declare dso_local %struct.soc_camera_desc* @to_soc_camera_desc(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @soc_camera_i2c_free(%struct.soc_camera_device*) #1

declare dso_local %struct.device* @to_soc_camera_control(%struct.soc_camera_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @soc_camera_free_user_formats(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_clk_unregister(i32*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
