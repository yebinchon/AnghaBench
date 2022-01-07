; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev-common.c_imx_media_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev-common.c_imx_media_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_device_ops = type { i32 }
%struct.imx_media_dev = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { %struct.device*, %struct.media_device_ops*, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"imx-media\00", align 1
@imx_media_md_ops = common dso_local global %struct.media_device_ops zeroinitializer, align 4
@imx_media_notify = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to register v4l2_device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.imx_media_dev* @imx_media_dev_init(%struct.device* %0, %struct.media_device_ops* %1) #0 {
  %3 = alloca %struct.imx_media_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.media_device_ops*, align 8
  %6 = alloca %struct.imx_media_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.media_device_ops* %1, %struct.media_device_ops** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.imx_media_dev* @devm_kzalloc(%struct.device* %8, i32 56, i32 %9)
  store %struct.imx_media_dev* %10, %struct.imx_media_dev** %6, align 8
  %11 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %12 = icmp ne %struct.imx_media_dev* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.imx_media_dev* @ERR_PTR(i32 %15)
  store %struct.imx_media_dev* %16, %struct.imx_media_dev** %3, align 8
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %20 = call i32 @dev_set_drvdata(%struct.device* %18, %struct.imx_media_dev* %19)
  %21 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %22 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.media_device_ops*, %struct.media_device_ops** %5, align 8
  %27 = icmp ne %struct.media_device_ops* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load %struct.media_device_ops*, %struct.media_device_ops** %5, align 8
  br label %31

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi %struct.media_device_ops* [ %29, %28 ], [ @imx_media_md_ops, %30 ]
  %33 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %34 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store %struct.media_device_ops* %32, %struct.media_device_ops** %35, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %38 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.device* %36, %struct.device** %39, align 8
  %40 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %41 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %40, i32 0, i32 4
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %44 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %43, i32 0, i32 0
  %45 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %46 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %47, align 8
  %48 = load i32, i32* @imx_media_notify, align 4
  %49 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %50 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %53 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strscpy(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %57 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %58 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %57, i32 0, i32 0
  %59 = call i32 @media_device_init(%struct.TYPE_6__* %58)
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %62 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %61, i32 0, i32 3
  %63 = call i32 @v4l2_device_register(%struct.device* %60, %struct.TYPE_5__* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %31
  %67 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %68 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @v4l2_err(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %79

71:                                               ; preds = %31
  %72 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %73 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %72, i32 0, i32 2
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %76 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %75, i32 0, i32 1
  %77 = call i32 @v4l2_async_notifier_init(i32* %76)
  %78 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  store %struct.imx_media_dev* %78, %struct.imx_media_dev** %3, align 8
  br label %85

79:                                               ; preds = %66
  %80 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %81 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %80, i32 0, i32 0
  %82 = call i32 @media_device_cleanup(%struct.TYPE_6__* %81)
  %83 = load i32, i32* %7, align 4
  %84 = call %struct.imx_media_dev* @ERR_PTR(i32 %83)
  store %struct.imx_media_dev* %84, %struct.imx_media_dev** %3, align 8
  br label %85

85:                                               ; preds = %79, %71, %13
  %86 = load %struct.imx_media_dev*, %struct.imx_media_dev** %3, align 8
  ret %struct.imx_media_dev* %86
}

declare dso_local %struct.imx_media_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.imx_media_dev* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.imx_media_dev*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @media_device_init(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @v4l2_async_notifier_init(i32*) #1

declare dso_local i32 @media_device_cleanup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
