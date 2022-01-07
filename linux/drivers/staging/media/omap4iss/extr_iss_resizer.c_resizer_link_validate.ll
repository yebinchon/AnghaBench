; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_link_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_link_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_link = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)* @resizer_link_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resizer_link_validate(%struct.v4l2_subdev* %0, %struct.media_link* %1, %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_link*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.v4l2_subdev_format*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.media_link* %1, %struct.media_link** %7, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %8, align 8
  store %struct.v4l2_subdev_format* %3, %struct.v4l2_subdev_format** %9, align 8
  %10 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %4
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19, %4
  %30 = load i32, i32* @EPIPE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %19
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EPIPE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %42, %29
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
