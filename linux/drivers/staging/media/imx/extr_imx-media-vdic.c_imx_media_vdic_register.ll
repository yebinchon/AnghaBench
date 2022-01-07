; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_imx_media_vdic_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_imx_media_vdic_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32, i32, i32, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.v4l2_device = type { i32 }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipu_soc = type { i32 }
%struct.vdic_priv = type { i32, %struct.v4l2_subdev, %struct.ipu_soc*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vdic_subdev_ops = common dso_local global i32 0, align 4
@vdic_internal_ops = common dso_local global i32 0, align 4
@vdic_entity_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_subdev* @imx_media_vdic_register(%struct.v4l2_device* %0, %struct.device* %1, %struct.ipu_soc* %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.ipu_soc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vdic_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_device* %0, %struct.v4l2_device** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.ipu_soc* %2, %struct.ipu_soc** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.vdic_priv* @devm_kzalloc(%struct.device* %12, i32 64, i32 %13)
  store %struct.vdic_priv* %14, %struct.vdic_priv** %10, align 8
  %15 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %16 = icmp ne %struct.vdic_priv* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.v4l2_subdev* @ERR_PTR(i32 %19)
  store %struct.v4l2_subdev* %20, %struct.v4l2_subdev** %5, align 8
  br label %93

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %24 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %23, i32 0, i32 3
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %26 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %27 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %26, i32 0, i32 2
  store %struct.ipu_soc* %25, %struct.ipu_soc** %27, align 8
  %28 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %29 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %28, i32 0, i32 1
  %30 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %29, i32* @vdic_subdev_ops)
  %31 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %32 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %31, i32 0, i32 1
  %33 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %34 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %32, %struct.vdic_priv* %33)
  %35 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %36 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %36, i32 0, i32 5
  store i32* @vdic_internal_ops, i32** %37, align 8
  %38 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %39 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32* @vdic_entity_ops, i32** %41, align 8
  %42 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER, align 4
  %43 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %44 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %53 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %56 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %57 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %61 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %64 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %68 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %72 = call i32 @ipu_get_num(%struct.ipu_soc* %71)
  %73 = call i32 @imx_media_grp_id_to_sd_name(i32 %66, i32 4, i32 %70, i32 %72)
  %74 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %75 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %74, i32 0, i32 0
  %76 = call i32 @mutex_init(i32* %75)
  %77 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %78 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %79 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %78, i32 0, i32 1
  %80 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %77, %struct.v4l2_subdev* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %21
  br label %87

84:                                               ; preds = %21
  %85 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %86 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %85, i32 0, i32 1
  store %struct.v4l2_subdev* %86, %struct.v4l2_subdev** %5, align 8
  br label %93

87:                                               ; preds = %83
  %88 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %89 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %88, i32 0, i32 0
  %90 = call i32 @mutex_destroy(i32* %89)
  %91 = load i32, i32* %11, align 4
  %92 = call %struct.v4l2_subdev* @ERR_PTR(i32 %91)
  store %struct.v4l2_subdev* %92, %struct.v4l2_subdev** %5, align 8
  br label %93

93:                                               ; preds = %87, %84, %17
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  ret %struct.v4l2_subdev* %94
}

declare dso_local %struct.vdic_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.v4l2_subdev* @ERR_PTR(i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.vdic_priv*) #1

declare dso_local i32 @imx_media_grp_id_to_sd_name(i32, i32, i32, i32) #1

declare dso_local i32 @ipu_get_num(%struct.ipu_soc*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
