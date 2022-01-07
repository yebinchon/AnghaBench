; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cedrus_dev = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cedrus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cedrus_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.cedrus_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.cedrus_dev* %5, %struct.cedrus_dev** %3, align 8
  %6 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %7 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @media_devnode_is_registered(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %13, i32 0, i32 3
  %15 = call i32 @media_device_unregister(%struct.TYPE_3__* %14)
  %16 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %17 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @v4l2_m2m_unregister_media_controller(i32 %18)
  %20 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %21 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %20, i32 0, i32 3
  %22 = call i32 @media_device_cleanup(%struct.TYPE_3__* %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %25 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @v4l2_m2m_release(i32 %26)
  %28 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %29 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %28, i32 0, i32 1
  %30 = call i32 @video_unregister_device(i32* %29)
  %31 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %32 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %31, i32 0, i32 0
  %33 = call i32 @v4l2_device_unregister(i32* %32)
  %34 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %35 = call i32 @cedrus_hw_remove(%struct.cedrus_dev* %34)
  ret i32 0
}

declare dso_local %struct.cedrus_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @media_devnode_is_registered(i32) #1

declare dso_local i32 @media_device_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_m2m_unregister_media_controller(i32) #1

declare dso_local i32 @media_device_cleanup(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @cedrus_hw_remove(%struct.cedrus_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
