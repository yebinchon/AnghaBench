; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, i64, %struct.media_entity* }
%struct.v4l2_subdev = type { i32, i32 }
%struct.vdic_priv = type { i32, i64, i32, %struct.media_entity*, %struct.imx_media_video_dev*, %struct.v4l2_subdev*, i32 }
%struct.imx_media_video_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: link setup %s -> %s\00", align 1
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VDIC_SINK_PAD_IDMAC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IMX_MEDIA_GRP_ID_IPU_CSI = common dso_local global i32 0, align 4
@CSI_SRC_PAD_DIRECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @vdic_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdic_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_pad*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.vdic_priv*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.imx_media_video_dev*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store %struct.media_pad* %1, %struct.media_pad** %6, align 8
  store %struct.media_pad* %2, %struct.media_pad** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %15 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %14)
  store %struct.v4l2_subdev* %15, %struct.v4l2_subdev** %9, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %17 = call %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %16)
  store %struct.vdic_priv* %17, %struct.vdic_priv** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %19 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %25 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %24, i32 0, i32 2
  %26 = load %struct.media_entity*, %struct.media_entity** %25, align 8
  %27 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %30 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %29, i32 0, i32 2
  %31 = load %struct.media_entity*, %struct.media_entity** %30, align 8
  %32 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28, i32 %33)
  %35 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %36 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %35, i32 0, i32 2
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %39 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %4
  %45 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %46 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %45, i32 0, i32 2
  %47 = load %struct.media_entity*, %struct.media_entity** %46, align 8
  %48 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %12, align 4
  br label %165

53:                                               ; preds = %44
  %54 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %55 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %54, i32 0, i32 2
  %56 = load %struct.media_entity*, %struct.media_entity** %55, align 8
  %57 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %56)
  store %struct.v4l2_subdev* %57, %struct.v4l2_subdev** %11, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %64 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %63, i32 0, i32 5
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %64, align 8
  %66 = icmp ne %struct.v4l2_subdev* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %165

70:                                               ; preds = %62
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %72 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %73 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %72, i32 0, i32 5
  store %struct.v4l2_subdev* %71, %struct.v4l2_subdev** %73, align 8
  br label %77

74:                                               ; preds = %53
  %75 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %76 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %75, i32 0, i32 5
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %76, align 8
  br label %77

77:                                               ; preds = %74, %70
  br label %165

78:                                               ; preds = %4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %85 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %84, i32 0, i32 3
  %86 = load %struct.media_entity*, %struct.media_entity** %85, align 8
  %87 = icmp ne %struct.media_entity* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  br label %165

91:                                               ; preds = %83
  br label %95

92:                                               ; preds = %78
  %93 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %94 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %93, i32 0, i32 3
  store %struct.media_entity* null, %struct.media_entity** %94, align 8
  br label %165

95:                                               ; preds = %91
  %96 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %97 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @VDIC_SINK_PAD_IDMAC, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %95
  %102 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %103 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %102, i32 0, i32 4
  %104 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %103, align 8
  store %struct.imx_media_video_dev* %104, %struct.imx_media_video_dev** %13, align 8
  %105 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %106 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %105, i32 0, i32 2
  %107 = load %struct.media_entity*, %struct.media_entity** %106, align 8
  %108 = call i32 @is_media_entity_v4l2_video_device(%struct.media_entity* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %165

113:                                              ; preds = %101
  %114 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %13, align 8
  %115 = icmp ne %struct.imx_media_video_dev* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %12, align 4
  br label %165

119:                                              ; preds = %113
  %120 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %121 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %154

122:                                              ; preds = %95
  %123 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %124 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %123, i32 0, i32 2
  %125 = load %struct.media_entity*, %struct.media_entity** %124, align 8
  %126 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %12, align 4
  br label %165

131:                                              ; preds = %122
  %132 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %133 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %132, i32 0, i32 2
  %134 = load %struct.media_entity*, %struct.media_entity** %133, align 8
  %135 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %134)
  store %struct.v4l2_subdev* %135, %struct.v4l2_subdev** %11, align 8
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %137 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IMX_MEDIA_GRP_ID_IPU_CSI, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %131
  %143 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %144 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CSI_SRC_PAD_DIRECT, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142, %131
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %12, align 4
  br label %165

151:                                              ; preds = %142
  %152 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %153 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %119
  %155 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %156 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %155, i32 0, i32 2
  %157 = load %struct.media_entity*, %struct.media_entity** %156, align 8
  %158 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %159 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %158, i32 0, i32 3
  store %struct.media_entity* %157, %struct.media_entity** %159, align 8
  %160 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %161 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %164 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %154, %148, %128, %116, %110, %92, %88, %77, %67, %50
  %166 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %167 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %166, i32 0, i32 2
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32, i32* %12, align 4
  ret i32 %169
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

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
