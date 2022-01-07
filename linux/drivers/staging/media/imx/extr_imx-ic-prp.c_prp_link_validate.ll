; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_link_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_link_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_link = type { i32 }
%struct.v4l2_subdev_format = type { i32 }
%struct.imx_ic_priv = type { %struct.TYPE_3__, %struct.prp_priv* }
%struct.TYPE_3__ = type { i32 }
%struct.prp_priv = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IMX_MEDIA_GRP_ID_IPU_CSI = common dso_local global i32 0, align 4
@IMX_MEDIA_GRP_ID_IPU_VDIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)* @prp_link_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_link_validate(%struct.v4l2_subdev* %0, %struct.media_link* %1, %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_link*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.v4l2_subdev_format*, align 8
  %10 = alloca %struct.imx_ic_priv*, align 8
  %11 = alloca %struct.prp_priv*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.media_link* %1, %struct.media_link** %7, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %8, align 8
  store %struct.v4l2_subdev_format* %3, %struct.v4l2_subdev_format** %9, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = call %struct.imx_ic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.imx_ic_priv* %15, %struct.imx_ic_priv** %10, align 8
  %16 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %17 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %16, i32 0, i32 1
  %18 = load %struct.prp_priv*, %struct.prp_priv** %17, align 8
  store %struct.prp_priv* %18, %struct.prp_priv** %11, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %20 = load %struct.media_link*, %struct.media_link** %7, align 8
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %22 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %23 = call i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev* %19, %struct.media_link* %20, %struct.v4l2_subdev_format* %21, %struct.v4l2_subdev_format* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %5, align 4
  br label %92

28:                                               ; preds = %4
  %29 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %30 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* @IMX_MEDIA_GRP_ID_IPU_CSI, align 4
  %33 = call %struct.v4l2_subdev* @imx_media_pipeline_subdev(i32* %31, i32 %32, i32 1)
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %12, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %35 = call i64 @IS_ERR(%struct.v4l2_subdev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %12, align 8
  br label %38

38:                                               ; preds = %37, %28
  %39 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %40 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %43 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IMX_MEDIA_GRP_ID_IPU_VDIC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %52 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %87

58:                                               ; preds = %50
  br label %66

59:                                               ; preds = %38
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %61 = icmp ne %struct.v4l2_subdev* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  br label %87

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %58
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %68 = icmp ne %struct.v4l2_subdev* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %79 [
    i32 129, label %73
    i32 128, label %76
  ]

73:                                               ; preds = %69
  %74 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %75 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %82

76:                                               ; preds = %69
  %77 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %78 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %82

79:                                               ; preds = %69
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %79, %76, %73
  br label %86

83:                                               ; preds = %66
  %84 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %85 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %82
  br label %87

87:                                               ; preds = %86, %62, %55
  %88 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %89 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %26
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.imx_ic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.v4l2_subdev* @imx_media_pipeline_subdev(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
