; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-common.c_imx_media_ic_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-common.c_imx_media_ic_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.imx_ic_priv*)*, i32 (%struct.imx_ic_priv*)*, i32, i32, i32 }
%struct.imx_ic_priv = type { i64, %struct.v4l2_subdev, %struct.ipu_soc*, %struct.device* }
%struct.v4l2_subdev = type { i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ipu_soc = type { i32 }
%struct.device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IC_TASK_PRP = common dso_local global i64 0, align 8
@IC_TASK_ENCODER = common dso_local global i64 0, align 8
@IC_TASK_VIEWFINDER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ic_ops = common dso_local global %struct.TYPE_6__** null, align 8
@MEDIA_ENT_F_PROC_VIDEO_SCALER = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_subdev* @imx_media_ic_register(%struct.v4l2_device* %0, %struct.device* %1, %struct.ipu_soc* %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.ipu_soc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.imx_ic_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_device* %0, %struct.v4l2_device** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.ipu_soc* %2, %struct.ipu_soc** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.imx_ic_priv* @devm_kzalloc(%struct.device* %12, i32 56, i32 %13)
  store %struct.imx_ic_priv* %14, %struct.imx_ic_priv** %10, align 8
  %15 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %16 = icmp ne %struct.imx_ic_priv* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.v4l2_subdev* @ERR_PTR(i32 %19)
  store %struct.v4l2_subdev* %20, %struct.v4l2_subdev** %5, align 8
  br label %156

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %24 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %23, i32 0, i32 3
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %26 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %27 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %26, i32 0, i32 2
  store %struct.ipu_soc* %25, %struct.ipu_soc** %27, align 8
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %41 [
    i32 130, label %29
    i32 129, label %33
    i32 128, label %37
  ]

29:                                               ; preds = %21
  %30 = load i64, i64* @IC_TASK_PRP, align 8
  %31 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %32 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %45

33:                                               ; preds = %21
  %34 = load i64, i64* @IC_TASK_ENCODER, align 8
  %35 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %36 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %45

37:                                               ; preds = %21
  %38 = load i64, i64* @IC_TASK_VIEWFINDER, align 8
  %39 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %40 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %45

41:                                               ; preds = %21
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.v4l2_subdev* @ERR_PTR(i32 %43)
  store %struct.v4l2_subdev* %44, %struct.v4l2_subdev** %5, align 8
  br label %156

45:                                               ; preds = %37, %33, %29
  %46 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %47 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ic_ops, align 8
  %49 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %50 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %47, i32 %55)
  %57 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %58 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %57, i32 0, i32 1
  %59 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %60 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %58, %struct.imx_ic_priv* %59)
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ic_ops, align 8
  %62 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %63 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %70 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %70, i32 0, i32 5
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ic_ops, align 8
  %73 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %74 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %81 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_SCALER, align 4
  %85 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %86 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 8
  %89 = load %struct.device*, %struct.device** %7, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %95 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %98 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %101 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %105 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %108 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %112 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %116 = call i32 @ipu_get_num(%struct.ipu_soc* %115)
  %117 = call i32 @imx_media_grp_id_to_sd_name(i32 %110, i32 4, i32 %114, i32 %116)
  %118 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ic_ops, align 8
  %119 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %120 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %118, i64 %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32 (%struct.imx_ic_priv*)*, i32 (%struct.imx_ic_priv*)** %124, align 8
  %126 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %127 = call i32 %125(%struct.imx_ic_priv* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %45
  %131 = load i32, i32* %11, align 4
  %132 = call %struct.v4l2_subdev* @ERR_PTR(i32 %131)
  store %struct.v4l2_subdev* %132, %struct.v4l2_subdev** %5, align 8
  br label %156

133:                                              ; preds = %45
  %134 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %135 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %136 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %135, i32 0, i32 1
  %137 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %134, %struct.v4l2_subdev* %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %133
  %141 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ic_ops, align 8
  %142 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %143 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %141, i64 %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32 (%struct.imx_ic_priv*)*, i32 (%struct.imx_ic_priv*)** %147, align 8
  %149 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %150 = call i32 %148(%struct.imx_ic_priv* %149)
  %151 = load i32, i32* %11, align 4
  %152 = call %struct.v4l2_subdev* @ERR_PTR(i32 %151)
  store %struct.v4l2_subdev* %152, %struct.v4l2_subdev** %5, align 8
  br label %156

153:                                              ; preds = %133
  %154 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %155 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %154, i32 0, i32 1
  store %struct.v4l2_subdev* %155, %struct.v4l2_subdev** %5, align 8
  br label %156

156:                                              ; preds = %153, %140, %130, %41, %17
  %157 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  ret %struct.v4l2_subdev* %157
}

declare dso_local %struct.imx_ic_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.v4l2_subdev* @ERR_PTR(i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.imx_ic_priv*) #1

declare dso_local i32 @imx_media_grp_id_to_sd_name(i32, i32, i32, i32) #1

declare dso_local i32 @ipu_get_num(%struct.ipu_soc*) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
