; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_link_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_link_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_subdev_format = type { i32 }
%struct.iss_csi2_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iss_pipeline = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)* @csi2_link_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_link_validate(%struct.v4l2_subdev* %0, %struct.media_link* %1, %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_link*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.v4l2_subdev_format*, align 8
  %10 = alloca %struct.iss_csi2_device*, align 8
  %11 = alloca %struct.iss_pipeline*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.media_link* %1, %struct.media_link** %7, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %8, align 8
  store %struct.v4l2_subdev_format* %3, %struct.v4l2_subdev_format** %9, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.iss_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.iss_csi2_device* %14, %struct.iss_csi2_device** %10, align 8
  %15 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %10, align 8
  %16 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call %struct.iss_pipeline* @to_iss_pipeline(i32* %17)
  store %struct.iss_pipeline* %18, %struct.iss_pipeline** %11, align 8
  %19 = load %struct.media_link*, %struct.media_link** %7, align 8
  %20 = getelementptr inbounds %struct.media_link, %struct.media_link* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @media_entity_to_v4l2_subdev(i32 %23)
  %25 = load %struct.iss_pipeline*, %struct.iss_pipeline** %11, align 8
  %26 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iss_pipeline*, %struct.iss_pipeline** %11, align 8
  %28 = load %struct.media_link*, %struct.media_link** %7, align 8
  %29 = call i32 @omap4iss_get_external_info(%struct.iss_pipeline* %27, %struct.media_link* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %40

34:                                               ; preds = %4
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %36 = load %struct.media_link*, %struct.media_link** %7, align 8
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %38 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %39 = call i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev* %35, %struct.media_link* %36, %struct.v4l2_subdev_format* %37, %struct.v4l2_subdev_format* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %32
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.iss_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.iss_pipeline* @to_iss_pipeline(i32*) #1

declare dso_local i32 @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @omap4iss_get_external_info(%struct.iss_pipeline*, %struct.media_link*) #1

declare dso_local i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
