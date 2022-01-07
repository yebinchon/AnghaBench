; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_enum_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_enum_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.iss_ipipe_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)* @ipipe_enum_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipipe_enum_frame_size(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  %8 = alloca %struct.iss_ipipe_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.iss_ipipe_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.iss_ipipe_device* %11, %struct.iss_ipipe_device** %8, align 8
  %12 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %8, align 8
  %27 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %28 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ipipe_try_format(%struct.iss_ipipe_device* %26, %struct.v4l2_subdev_pad_config* %27, i32 %30, %struct.v4l2_mbus_framefmt* %9, i32 %33)
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %19
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %19
  %53 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  store i32 -1, i32* %57, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  store i32 -1, i32* %58, align 4
  %59 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %8, align 8
  %60 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %61 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ipipe_try_format(%struct.iss_ipipe_device* %59, %struct.v4l2_subdev_pad_config* %60, i32 %63, %struct.v4l2_mbus_framefmt* %9, i32 %66)
  %68 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %52, %49, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.iss_ipipe_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @ipipe_try_format(%struct.iss_ipipe_device*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
