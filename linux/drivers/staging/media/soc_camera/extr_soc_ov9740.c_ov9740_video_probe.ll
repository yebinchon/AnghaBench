; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ov9740_priv = type { i32, i32, i32, i32, i32, i32 }

@OV9740_MODEL_ID_HI = common dso_local global i32 0, align 4
@OV9740_MODEL_ID_LO = common dso_local global i32 0, align 4
@OV9740_REVISION_NUMBER = common dso_local global i32 0, align 4
@OV9740_MANUFACTURER_ID = common dso_local global i32 0, align 4
@OV9740_SMIA_VERSION = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"ov9740 Model ID 0x%04x, Revision 0x%02x, Manufacturer 0x%02x, SMIA Version 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov9740_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9740_video_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.ov9740_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.ov9740_priv* @to_ov9740(%struct.v4l2_subdev* %11)
  store %struct.ov9740_priv* %12, %struct.ov9740_priv** %5, align 8
  %13 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %13, i32 0, i32 4
  %15 = call i32 @ov9740_s_power(i32* %14, i32 1)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = load i32, i32* @OV9740_MODEL_ID_HI, align 4
  %23 = call i32 @ov9740_reg_read(%struct.i2c_client* %21, i32 %22, i32* %6)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %94

27:                                               ; preds = %20
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = load i32, i32* @OV9740_MODEL_ID_LO, align 4
  %30 = call i32 @ov9740_reg_read(%struct.i2c_client* %28, i32 %29, i32* %7)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %94

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %40 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = load i32, i32* @OV9740_REVISION_NUMBER, align 4
  %43 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %44 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %43, i32 0, i32 1
  %45 = call i32 @ov9740_reg_read(%struct.i2c_client* %41, i32 %42, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %94

49:                                               ; preds = %34
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = load i32, i32* @OV9740_MANUFACTURER_ID, align 4
  %52 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %53 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %52, i32 0, i32 2
  %54 = call i32 @ov9740_reg_read(%struct.i2c_client* %50, i32 %51, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %94

58:                                               ; preds = %49
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = load i32, i32* @OV9740_SMIA_VERSION, align 4
  %61 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %62 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %61, i32 0, i32 3
  %63 = call i32 @ov9740_reg_read(%struct.i2c_client* %59, i32 %60, i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %94

67:                                               ; preds = %58
  %68 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %69 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 38720
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %94

75:                                               ; preds = %67
  %76 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %82 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %85 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %88 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %83, i32 %86, i32 %89)
  %91 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %92 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %91, i32 0, i32 5
  %93 = call i32 @v4l2_ctrl_handler_setup(i32* %92)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %75, %72, %66, %57, %48, %33, %26
  %95 = load %struct.ov9740_priv*, %struct.ov9740_priv** %5, align 8
  %96 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %95, i32 0, i32 4
  %97 = call i32 @ov9740_s_power(i32* %96, i32 0)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %94, %18
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.ov9740_priv* @to_ov9740(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov9740_s_power(i32*, i32) #1

declare dso_local i32 @ov9740_reg_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
