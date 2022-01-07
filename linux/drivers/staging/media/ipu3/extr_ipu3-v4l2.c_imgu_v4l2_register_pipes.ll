; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_register_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_register_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { %struct.TYPE_2__*, %struct.imgu_media_pipe* }
%struct.TYPE_2__ = type { i32 }
%struct.imgu_media_pipe = type { i32 }

@IMGU_MAX_PIPE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to register subdev%u ret (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_device*)* @imgu_v4l2_register_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_v4l2_register_pipes(%struct.imgu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imgu_device*, align 8
  %4 = alloca %struct.imgu_media_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imgu_device* %0, %struct.imgu_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IMGU_MAX_PIPE_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %13 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %12, i32 0, i32 1
  %14 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %14, i64 %16
  store %struct.imgu_media_pipe* %17, %struct.imgu_media_pipe** %4, align 8
  %18 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %19 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %4, align 8
  %20 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @imgu_v4l2_subdev_register(%struct.imgu_device* %18, i32* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %11
  %26 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %27 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %48

33:                                               ; preds = %11
  %34 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @imgu_v4l2_nodes_setup_pipe(%struct.imgu_device* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @imgu_v4l2_subdev_cleanup(%struct.imgu_device* %40, i32 %41)
  br label %48

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %7

47:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %53

48:                                               ; preds = %39, %25
  %49 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @imgu_v4l2_cleanup_pipes(%struct.imgu_device* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @imgu_v4l2_subdev_register(%struct.imgu_device*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @imgu_v4l2_nodes_setup_pipe(%struct.imgu_device*, i32) #1

declare dso_local i32 @imgu_v4l2_subdev_cleanup(%struct.imgu_device*, i32) #1

declare dso_local i32 @imgu_v4l2_cleanup_pipes(%struct.imgu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
