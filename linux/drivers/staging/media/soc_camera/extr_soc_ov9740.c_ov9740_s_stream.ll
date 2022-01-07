; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ov9740_priv = type { i32, i64, i64 }

@OV9740_IMAGE_ORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Enabling Streaming\0A\00", align 1
@OV9740_MODE_SELECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Disabling Streaming\0A\00", align 1
@OV9740_SOFTWARE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov9740_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9740_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ov9740_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.ov9740_priv* @to_ov9740(%struct.v4l2_subdev* %11)
  store %struct.ov9740_priv* %12, %struct.ov9740_priv** %7, align 8
  %13 = load %struct.ov9740_priv*, %struct.ov9740_priv** %7, align 8
  %14 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = load i32, i32* @OV9740_IMAGE_ORT, align 4
  %20 = call i32 @ov9740_reg_rmw(%struct.i2c_client* %18, i32 %19, i32 2, i32 0)
  store i32 %20, i32* %8, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %23 = load i32, i32* @OV9740_IMAGE_ORT, align 4
  %24 = call i32 @ov9740_reg_rmw(%struct.i2c_client* %22, i32 %23, i32 0, i32 2)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %25
  %31 = load %struct.ov9740_priv*, %struct.ov9740_priv** %7, align 8
  %32 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = load i32, i32* @OV9740_IMAGE_ORT, align 4
  %38 = call i32 @ov9740_reg_rmw(%struct.i2c_client* %36, i32 %37, i32 1, i32 0)
  store i32 %38, i32* %8, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = load i32, i32* @OV9740_IMAGE_ORT, align 4
  %42 = call i32 @ov9740_reg_rmw(%struct.i2c_client* %40, i32 %41, i32 0, i32 1)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %77

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %56 = load i32, i32* @OV9740_MODE_SELECT, align 4
  %57 = call i32 @ov9740_reg_write(%struct.i2c_client* %55, i32 %56, i32 1)
  store i32 %57, i32* %8, align 4
  br label %72

58:                                               ; preds = %48
  %59 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %63 = load i32, i32* @OV9740_SOFTWARE_RESET, align 4
  %64 = call i32 @ov9740_reg_write(%struct.i2c_client* %62, i32 %63, i32 1)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %69 = load i32, i32* @OV9740_MODE_SELECT, align 4
  %70 = call i32 @ov9740_reg_write(%struct.i2c_client* %68, i32 %69, i32 0)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %67, %58
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.ov9740_priv*, %struct.ov9740_priv** %7, align 8
  %75 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %46, %28
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov9740_priv* @to_ov9740(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov9740_reg_rmw(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ov9740_reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
