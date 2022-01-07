; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov5642.c_ov5642_set_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov5642.c_ov5642_set_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ov5642 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OV5642_SENSOR_SIZE_X = common dso_local global i32 0, align 4
@OV5642_SENSOR_SIZE_Y = common dso_local global i32 0, align 4
@REG_WINDOW_START_X_HIGH = common dso_local global i32 0, align 4
@REG_WINDOW_START_Y_HIGH = common dso_local global i32 0, align 4
@REG_WINDOW_WIDTH_HIGH = common dso_local global i32 0, align 4
@REG_WINDOW_HEIGHT_HIGH = common dso_local global i32 0, align 4
@REG_OUT_WIDTH_HIGH = common dso_local global i32 0, align 4
@REG_OUT_HEIGHT_HIGH = common dso_local global i32 0, align 4
@REG_OUT_TOTAL_WIDTH_HIGH = common dso_local global i32 0, align 4
@REG_OUT_TOTAL_HEIGHT_HIGH = common dso_local global i32 0, align 4
@REG_AVG_WINDOW_END_X_HIGH = common dso_local global i32 0, align 4
@REG_AVG_WINDOW_END_Y_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ov5642_set_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5642_set_resolution(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ov5642*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = call %struct.ov5642* @to_ov5642(%struct.i2c_client* %15)
  store %struct.ov5642* %16, %struct.ov5642** %5, align 8
  %17 = load %struct.ov5642*, %struct.ov5642** %5, align 8
  %18 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ov5642*, %struct.ov5642** %5, align 8
  %22 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ov5642*, %struct.ov5642** %5, align 8
  %26 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ov5642*, %struct.ov5642** %5, align 8
  %29 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @OV5642_SENSOR_SIZE_X, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @OV5642_SENSOR_SIZE_Y, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %11, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @REG_WINDOW_START_X_HIGH, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @reg_write16(%struct.i2c_client* %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %1
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* @REG_WINDOW_START_Y_HIGH, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @reg_write16(%struct.i2c_client* %46, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %45, %1
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.ov5642*, %struct.ov5642** %5, align 8
  %56 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.ov5642*, %struct.ov5642** %5, align 8
  %60 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %50
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32, i32* @REG_WINDOW_WIDTH_HIGH, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @reg_write16(%struct.i2c_client* %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load i32, i32* @REG_WINDOW_HEIGHT_HIGH, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @reg_write16(%struct.i2c_client* %74, i32 %75, i32 %76)
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %2, align 4
  br label %137

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.ov5642*, %struct.ov5642** %5, align 8
  %86 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.ov5642*, %struct.ov5642** %5, align 8
  %90 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load i32, i32* @REG_OUT_WIDTH_HIGH, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @reg_write16(%struct.i2c_client* %92, i32 %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %83
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = load i32, i32* @REG_OUT_HEIGHT_HIGH, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @reg_write16(%struct.i2c_client* %99, i32 %100, i32 %101)
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %98, %83
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load i32, i32* @REG_OUT_TOTAL_WIDTH_HIGH, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @reg_write16(%struct.i2c_client* %107, i32 %108, i32 %109)
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = load i32, i32* @REG_OUT_TOTAL_HEIGHT_HIGH, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @reg_write16(%struct.i2c_client* %115, i32 %116, i32 %117)
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = load i32, i32* @REG_AVG_WINDOW_END_X_HIGH, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @reg_write16(%struct.i2c_client* %123, i32 %124, i32 %125)
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = load i32, i32* @REG_AVG_WINDOW_END_Y_HIGH, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @reg_write16(%struct.i2c_client* %131, i32 %132, i32 %133)
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %130, %127
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %81
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov5642* @to_ov5642(%struct.i2c_client*) #1

declare dso_local i32 @reg_write16(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
