; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }
%struct.imx_ic_priv = type { %struct.TYPE_2__, i32, %struct.prp_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.prp_priv = type { i32, %struct.media_entity*, %struct.v4l2_subdev* }

@.str = private unnamed_addr constant [24 x i8] c"%s: link setup %s -> %s\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @prp_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_pad*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.imx_ic_priv*, align 8
  %11 = alloca %struct.prp_priv*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store %struct.media_pad* %1, %struct.media_pad** %6, align 8
  store %struct.media_pad* %2, %struct.media_pad** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %15 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %14)
  store %struct.v4l2_subdev* %15, %struct.v4l2_subdev** %9, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %17 = call %struct.imx_ic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %16)
  store %struct.imx_ic_priv* %17, %struct.imx_ic_priv** %10, align 8
  %18 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %19 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %18, i32 0, i32 2
  %20 = load %struct.prp_priv*, %struct.prp_priv** %19, align 8
  store %struct.prp_priv* %20, %struct.prp_priv** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %22 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %25 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %29 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %28, i32 0, i32 1
  %30 = load %struct.media_entity*, %struct.media_entity** %29, align 8
  %31 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %34 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %33, i32 0, i32 1
  %35 = load %struct.media_entity*, %struct.media_entity** %34, align 8
  %36 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32, i32 %37)
  %39 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %40 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %43 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %4
  %49 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %50 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %49, i32 0, i32 1
  %51 = load %struct.media_entity*, %struct.media_entity** %50, align 8
  %52 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %114

57:                                               ; preds = %48
  %58 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %59 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %58, i32 0, i32 1
  %60 = load %struct.media_entity*, %struct.media_entity** %59, align 8
  %61 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %60)
  store %struct.v4l2_subdev* %61, %struct.v4l2_subdev** %12, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %68 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %67, i32 0, i32 2
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %68, align 8
  %70 = icmp ne %struct.v4l2_subdev* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %114

74:                                               ; preds = %66
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %76 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %77 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %76, i32 0, i32 2
  store %struct.v4l2_subdev* %75, %struct.v4l2_subdev** %77, align 8
  br label %81

78:                                               ; preds = %57
  %79 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %80 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %79, i32 0, i32 2
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %80, align 8
  br label %81

81:                                               ; preds = %78, %74
  br label %114

82:                                               ; preds = %4
  %83 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %84 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %83, i32 0, i32 1
  %85 = load %struct.media_entity*, %struct.media_entity** %84, align 8
  %86 = call i32 @is_media_entity_v4l2_video_device(%struct.media_entity* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %114

91:                                               ; preds = %82
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %98 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %97, i32 0, i32 1
  %99 = load %struct.media_entity*, %struct.media_entity** %98, align 8
  %100 = icmp ne %struct.media_entity* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %13, align 4
  br label %114

104:                                              ; preds = %96
  br label %108

105:                                              ; preds = %91
  %106 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %107 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %106, i32 0, i32 1
  store %struct.media_entity* null, %struct.media_entity** %107, align 8
  br label %114

108:                                              ; preds = %104
  %109 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %110 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %109, i32 0, i32 1
  %111 = load %struct.media_entity*, %struct.media_entity** %110, align 8
  %112 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %113 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %112, i32 0, i32 1
  store %struct.media_entity* %111, %struct.media_entity** %113, align 8
  br label %114

114:                                              ; preds = %108, %105, %101, %88, %81, %71, %54
  %115 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %116 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %115, i32 0, i32 0
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %13, align 4
  ret i32 %118
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.imx_ic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @is_media_entity_v4l2_video_device(%struct.media_entity*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
