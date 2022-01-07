; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_vdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_vdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.comp_fh* }
%struct.comp_fh = type { i32, %struct.most_video_dev* }
%struct.most_video_dev = type { i32, i32, i32, i32 }
%struct.video_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"too many clients\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@comp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"most_start_channel() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @comp_vdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_vdev_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.most_video_dev*, align 8
  %7 = alloca %struct.comp_fh*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %5, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.most_video_dev* @video_drvdata(%struct.file* %10)
  store %struct.most_video_dev* %11, %struct.most_video_dev** %6, align 8
  %12 = load %struct.video_device*, %struct.video_device** %5, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %16 [
    i32 128, label %15
  ]

15:                                               ; preds = %1
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %80

19:                                               ; preds = %15
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.comp_fh* @kzalloc(i32 16, i32 %20)
  store %struct.comp_fh* %21, %struct.comp_fh** %7, align 8
  %22 = load %struct.comp_fh*, %struct.comp_fh** %7, align 8
  %23 = icmp ne %struct.comp_fh* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %80

27:                                               ; preds = %19
  %28 = load %struct.most_video_dev*, %struct.most_video_dev** %6, align 8
  %29 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %28, i32 0, i32 0
  %30 = call i32 @atomic_inc_and_test(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.most_video_dev*, %struct.most_video_dev** %6, align 8
  %34 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %33, i32 0, i32 1
  %35 = call i32 @v4l2_err(i32* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %73

38:                                               ; preds = %27
  %39 = load %struct.most_video_dev*, %struct.most_video_dev** %6, align 8
  %40 = load %struct.comp_fh*, %struct.comp_fh** %7, align 8
  %41 = getelementptr inbounds %struct.comp_fh, %struct.comp_fh* %40, i32 0, i32 1
  store %struct.most_video_dev* %39, %struct.most_video_dev** %41, align 8
  %42 = load %struct.comp_fh*, %struct.comp_fh** %7, align 8
  %43 = getelementptr inbounds %struct.comp_fh, %struct.comp_fh* %42, i32 0, i32 0
  %44 = load %struct.video_device*, %struct.video_device** %5, align 8
  %45 = call i32 @v4l2_fh_init(i32* %43, %struct.video_device* %44)
  %46 = load %struct.comp_fh*, %struct.comp_fh** %7, align 8
  %47 = load %struct.file*, %struct.file** %3, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  store %struct.comp_fh* %46, %struct.comp_fh** %48, align 8
  %49 = load %struct.comp_fh*, %struct.comp_fh** %7, align 8
  %50 = getelementptr inbounds %struct.comp_fh, %struct.comp_fh* %49, i32 0, i32 0
  %51 = call i32 @v4l2_fh_add(i32* %50)
  %52 = load %struct.most_video_dev*, %struct.most_video_dev** %6, align 8
  %53 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.most_video_dev*, %struct.most_video_dev** %6, align 8
  %56 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @most_start_channel(i32 %54, i32 %57, i32* @comp)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %38
  %62 = load %struct.most_video_dev*, %struct.most_video_dev** %6, align 8
  %63 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %62, i32 0, i32 1
  %64 = call i32 @v4l2_err(i32* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %66

65:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %80

66:                                               ; preds = %61
  %67 = load %struct.comp_fh*, %struct.comp_fh** %7, align 8
  %68 = getelementptr inbounds %struct.comp_fh, %struct.comp_fh* %67, i32 0, i32 0
  %69 = call i32 @v4l2_fh_del(i32* %68)
  %70 = load %struct.comp_fh*, %struct.comp_fh** %7, align 8
  %71 = getelementptr inbounds %struct.comp_fh, %struct.comp_fh* %70, i32 0, i32 0
  %72 = call i32 @v4l2_fh_exit(i32* %71)
  br label %73

73:                                               ; preds = %66, %32
  %74 = load %struct.most_video_dev*, %struct.most_video_dev** %6, align 8
  %75 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %74, i32 0, i32 0
  %76 = call i32 @atomic_dec(i32* %75)
  %77 = load %struct.comp_fh*, %struct.comp_fh** %7, align 8
  %78 = call i32 @kfree(%struct.comp_fh* %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %65, %24, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.most_video_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.comp_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @v4l2_fh_init(i32*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

declare dso_local i32 @most_start_channel(i32, i32, i32*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.comp_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
