; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_apply_board_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_apply_board_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_subdev_desc = type { i32 }
%struct.v4l2_mbus_config = type { i64 }

@SOCAM_SENSOR_INVERT_HSYNC = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_SENSOR_INVERT_VSYNC = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_SENSOR_INVERT_PCLK = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @soc_camera_apply_board_flags(%struct.soc_camera_subdev_desc* %0, %struct.v4l2_mbus_config* %1) #0 {
  %3 = alloca %struct.soc_camera_subdev_desc*, align 8
  %4 = alloca %struct.v4l2_mbus_config*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.soc_camera_subdev_desc* %0, %struct.soc_camera_subdev_desc** %3, align 8
  store %struct.v4l2_mbus_config* %1, %struct.v4l2_mbus_config** %4, align 8
  %7 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %3, align 8
  %11 = getelementptr inbounds %struct.soc_camera_subdev_desc, %struct.soc_camera_subdev_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SOCAM_SENSOR_INVERT_HSYNC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 8
  %19 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 8
  %20 = or i64 %18, %19
  %21 = and i64 %17, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25, %16
  %30 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 8
  %31 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* %6, align 8
  %34 = xor i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %3, align 8
  %38 = getelementptr inbounds %struct.soc_camera_subdev_desc, %struct.soc_camera_subdev_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SOCAM_SENSOR_INVERT_VSYNC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 8
  %46 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 8
  %47 = or i64 %45, %46
  %48 = and i64 %44, %47
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52, %43
  %57 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 8
  %58 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 8
  %59 = or i64 %57, %58
  %60 = load i64, i64* %6, align 8
  %61 = xor i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %56, %52
  br label %63

63:                                               ; preds = %62, %36
  %64 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %3, align 8
  %65 = getelementptr inbounds %struct.soc_camera_subdev_desc, %struct.soc_camera_subdev_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SOCAM_SENSOR_INVERT_PCLK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %63
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 8
  %73 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 8
  %74 = or i64 %72, %73
  %75 = and i64 %71, %74
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %70
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79, %70
  %84 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 8
  %85 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 8
  %86 = or i64 %84, %85
  %87 = load i64, i64* %6, align 8
  %88 = xor i64 %87, %86
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %83, %79
  br label %90

90:                                               ; preds = %89, %63
  %91 = load i64, i64* %6, align 8
  ret i64 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
