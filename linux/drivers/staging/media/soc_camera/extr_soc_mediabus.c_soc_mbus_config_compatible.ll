; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mediabus.c_soc_mbus_config_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mediabus.c_soc_mbus_config_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_config = type { i32, i32 }

@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@V4L2_MBUS_DATA_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_DATA_ACTIVE_LOW = common dso_local global i64 0, align 8
@V4L2_MBUS_MASTER = common dso_local global i64 0, align 8
@V4L2_MBUS_SLAVE = common dso_local global i64 0, align 8
@V4L2_MBUS_CSI2_LANES = common dso_local global i64 0, align 8
@V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK = common dso_local global i64 0, align 8
@V4L2_MBUS_CSI2_CONTINUOUS_CLOCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soc_mbus_config_compatible(%struct.v4l2_mbus_config* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_mbus_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_mbus_config* %0, %struct.v4l2_mbus_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %14 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %97 [
    i32 128, label %23
    i32 130, label %36
    i32 129, label %75
  ]

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 8
  %26 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 8
  %27 = or i64 %25, %26
  %28 = and i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 8
  %32 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 8
  %33 = or i64 %31, %32
  %34 = and i64 %30, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %2, %23
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 8
  %39 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 8
  %40 = or i64 %38, %39
  %41 = and i64 %37, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @V4L2_MBUS_DATA_ACTIVE_HIGH, align 8
  %45 = load i64, i64* @V4L2_MBUS_DATA_ACTIVE_LOW, align 8
  %46 = or i64 %44, %45
  %47 = and i64 %43, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @V4L2_MBUS_MASTER, align 8
  %51 = load i64, i64* @V4L2_MBUS_SLAVE, align 8
  %52 = or i64 %50, %51
  %53 = and i64 %49, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %36
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66, %63, %60, %57, %36
  br label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i64 [ 0, %69 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %101

75:                                               ; preds = %2
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @V4L2_MBUS_CSI2_LANES, align 8
  %78 = and i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %12, align 4
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK, align 8
  %82 = load i64, i64* @V4L2_MBUS_CSI2_CONTINUOUS_CLOCK, align 8
  %83 = or i64 %81, %82
  %84 = and i64 %80, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88, %75
  br label %94

92:                                               ; preds = %88
  %93 = load i64, i64* %6, align 8
  br label %94

94:                                               ; preds = %92, %91
  %95 = phi i64 [ 0, %91 ], [ %93, %92 ]
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %101

97:                                               ; preds = %2
  %98 = call i32 @WARN_ON(i32 1)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %94, %72
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
