; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.imx7_csi = type { i32, i32, i32, i32 }

@EPIPE = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @imx7_csi_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx7_csi*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.imx7_csi* %8, %struct.imx7_csi** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %10 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %13 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %18 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EPIPE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %78

24:                                               ; preds = %16
  %25 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %26 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %78

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %40 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @video, align 4
  %43 = load i32, i32* @s_stream, align 4
  %44 = call i32 @v4l2_subdev_call(i32 %41, i32 %42, i32 %43, i32 1)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %78

48:                                               ; preds = %38
  %49 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %50 = call i32 @imx7_csi_streaming_start(%struct.imx7_csi* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %55 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @video, align 4
  %58 = load i32, i32* @s_stream, align 4
  %59 = call i32 @v4l2_subdev_call(i32 %56, i32 %57, i32 %58, i32 0)
  br label %78

60:                                               ; preds = %48
  br label %70

61:                                               ; preds = %35
  %62 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %63 = call i32 @imx7_csi_streaming_stop(%struct.imx7_csi* %62)
  %64 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %65 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @video, align 4
  %68 = load i32, i32* @s_stream, align 4
  %69 = call i32 @v4l2_subdev_call(i32 %66, i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %61, %60
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %77 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %53, %47, %34, %21
  %79 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %80 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %79, i32 0, i32 1
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @imx7_csi_streaming_start(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_streaming_stop(%struct.imx7_csi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
