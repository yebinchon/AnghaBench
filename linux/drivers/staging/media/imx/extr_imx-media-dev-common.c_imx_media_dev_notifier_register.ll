; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev-common.c_imx_media_dev_notifier_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev-common.c_imx_media_dev_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier_operations = type { i32 }
%struct.imx_media_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_async_notifier_operations*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"no subdevs\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@imx_media_notifier_ops = common dso_local global %struct.v4l2_async_notifier_operations zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"v4l2_async_notifier_register failed with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_dev_notifier_register(%struct.imx_media_dev* %0, %struct.v4l2_async_notifier_operations* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_media_dev*, align 8
  %5 = alloca %struct.v4l2_async_notifier_operations*, align 8
  %6 = alloca i32, align 4
  store %struct.imx_media_dev* %0, %struct.imx_media_dev** %4, align 8
  store %struct.v4l2_async_notifier_operations* %1, %struct.v4l2_async_notifier_operations** %5, align 8
  %7 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %8 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i64 @list_empty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %14 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.v4l2_async_notifier_operations*, %struct.v4l2_async_notifier_operations** %5, align 8
  %20 = icmp ne %struct.v4l2_async_notifier_operations* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct.v4l2_async_notifier_operations*, %struct.v4l2_async_notifier_operations** %5, align 8
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi %struct.v4l2_async_notifier_operations* [ %22, %21 ], [ @imx_media_notifier_ops, %23 ]
  %26 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %27 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.v4l2_async_notifier_operations* %25, %struct.v4l2_async_notifier_operations** %28, align 8
  %29 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %30 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %29, i32 0, i32 0
  %31 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %32 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %31, i32 0, i32 1
  %33 = call i32 @v4l2_async_notifier_register(i32* %30, %struct.TYPE_2__* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %38 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %36, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
