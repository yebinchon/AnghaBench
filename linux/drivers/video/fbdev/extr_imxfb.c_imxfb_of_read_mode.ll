; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_of_read_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_of_read_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.imx_fb_videomode = type { i32, i32, i32, %struct.fb_videomode }
%struct.fb_videomode = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@OF_USE_NATIVE_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get videomode from DT\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bits-per-pixel\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fsl,pcr\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to read bpp and pcr from DT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Bits per pixel have to be between 1 and 255\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fsl,aus-mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.imx_fb_videomode*)* @imxfb_of_read_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxfb_of_read_mode(%struct.device* %0, %struct.device_node* %1, %struct.imx_fb_videomode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.imx_fb_videomode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fb_videomode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.imx_fb_videomode* %2, %struct.imx_fb_videomode** %7, align 8
  %12 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %7, align 8
  %13 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %12, i32 0, i32 3
  store %struct.fb_videomode* %13, %struct.fb_videomode** %9, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %16 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %15, i32 0, i32 0
  %17 = call i32 @of_property_read_string(%struct.device_node* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %22 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %26 = load i32, i32* @OF_USE_NATIVE_MODE, align 4
  %27 = call i32 @of_get_fb_videomode(%struct.device_node* %24, %struct.fb_videomode* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %70

34:                                               ; preds = %23
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i32 @of_property_read_u32(%struct.device_node* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = call i32 @of_property_read_u32(%struct.device_node* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %11)
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %70

48:                                               ; preds = %34
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 255
  br i1 %53, label %54, label %59

54:                                               ; preds = %51, %48
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %70

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %7, align 8
  %62 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %7, align 8
  %65 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.device_node*, %struct.device_node** %6, align 8
  %67 = call i32 @of_property_read_bool(%struct.device_node* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %68 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %7, align 8
  %69 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %59, %54, %43, %30
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32**) #1

declare dso_local i32 @of_get_fb_videomode(%struct.device_node*, %struct.fb_videomode*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
