; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v022_datafmt = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9v022 = type { %struct.mt9v022_datafmt*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@V4L2_SEL_TGT_CROP = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MT9V022IX7ATM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT9V022IX7ATC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.mt9v022_datafmt*, %struct.v4l2_mbus_framefmt*)* @mt9v022_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_s_fmt(%struct.v4l2_subdev* %0, %struct.mt9v022_datafmt* %1, %struct.v4l2_mbus_framefmt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.mt9v022_datafmt*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.mt9v022*, align 8
  %10 = alloca %struct.v4l2_subdev_selection, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.mt9v022_datafmt* %1, %struct.mt9v022_datafmt** %6, align 8
  store %struct.v4l2_mbus_framefmt* %2, %struct.v4l2_mbus_framefmt** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %15 = call %struct.mt9v022* @to_mt9v022(%struct.i2c_client* %14)
  store %struct.mt9v022* %15, %struct.mt9v022** %9, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %26 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %27 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %25, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %31 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %32 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %30, align 4
  %35 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 1
  %36 = load i32, i32* @V4L2_SEL_TGT_CROP, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 2
  %38 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %38, i32* %37, align 4
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %62 [
    i32 128, label %42
    i32 129, label %42
    i32 130, label %52
    i32 131, label %52
  ]

42:                                               ; preds = %3, %3
  %43 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %44 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MT9V022IX7ATM, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %93

51:                                               ; preds = %42
  br label %65

52:                                               ; preds = %3, %3
  %53 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %54 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MT9V022IX7ATC, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %93

61:                                               ; preds = %52
  br label %65

62:                                               ; preds = %3
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %93

65:                                               ; preds = %61, %51
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %67 = call i32 @mt9v022_set_selection(%struct.v4l2_subdev* %66, i32* null, %struct.v4l2_subdev_selection* %10)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %65
  %71 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %72 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %78 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %6, align 8
  %84 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %85 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %84, i32 0, i32 0
  store %struct.mt9v022_datafmt* %83, %struct.mt9v022_datafmt** %85, align 8
  %86 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %6, align 8
  %87 = getelementptr inbounds %struct.mt9v022_datafmt, %struct.mt9v022_datafmt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %70, %65
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %62, %58, %48
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9v022* @to_mt9v022(%struct.i2c_client*) #1

declare dso_local i32 @mt9v022_set_selection(%struct.v4l2_subdev*, i32*, %struct.v4l2_subdev_selection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
