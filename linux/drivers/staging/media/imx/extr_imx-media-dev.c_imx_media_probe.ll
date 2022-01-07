; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev.c_imx_media_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev.c_imx_media_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.imx_media_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"add_of_subdevs failed with %d\0A\00", align 1
@imx_media_notifier_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_media_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_media_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.imx_media_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.imx_media_dev* @imx_media_dev_init(%struct.device* %13, i32* null)
  store %struct.imx_media_dev* %14, %struct.imx_media_dev** %6, align 8
  %15 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %16 = call i64 @IS_ERR(%struct.imx_media_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.imx_media_dev* %19)
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32 @imx_media_add_of_subdevs(%struct.imx_media_dev* %22, %struct.device_node* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %29 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @v4l2_err(i32* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %34 = call i32 @imx_media_dev_notifier_register(%struct.imx_media_dev* %33, i32* @imx_media_notifier_ops)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %50

39:                                               ; preds = %37, %27
  %40 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %41 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %40, i32 0, i32 2
  %42 = call i32 @v4l2_async_notifier_cleanup(i32* %41)
  %43 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %44 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %43, i32 0, i32 1
  %45 = call i32 @v4l2_device_unregister(i32* %44)
  %46 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %47 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %46, i32 0, i32 0
  %48 = call i32 @media_device_cleanup(i32* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %39, %38, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.imx_media_dev* @imx_media_dev_init(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.imx_media_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.imx_media_dev*) #1

declare dso_local i32 @imx_media_add_of_subdevs(%struct.imx_media_dev*, %struct.device_node*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @imx_media_dev_notifier_register(%struct.imx_media_dev*, i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @media_device_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
