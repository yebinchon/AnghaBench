; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, i64, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }
%struct.csi_priv = type { i64, i32, %struct.media_entity*, i32, i64, i32, %struct.v4l2_subdev*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"link setup %s -> %s\0A\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CSI_SRC_PAD_IDMAC = common dso_local global i64 0, align 8
@IPU_CSI_DEST_IDMAC = common dso_local global i32 0, align 4
@IPU_CSI_DEST_VDIC = common dso_local global i32 0, align 4
@IPU_CSI_DEST_IC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @csi_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_pad*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.csi_priv*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store %struct.media_pad* %1, %struct.media_pad** %6, align 8
  store %struct.media_pad* %2, %struct.media_pad** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %14 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %13)
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %9, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %16 = call %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.csi_priv* %16, %struct.csi_priv** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %18 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %21 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %20, i32 0, i32 2
  %22 = load %struct.media_entity*, %struct.media_entity** %21, align 8
  %23 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %26 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %25, i32 0, i32 2
  %27 = load %struct.media_entity*, %struct.media_entity** %26, align 8
  %28 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %32 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %35 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %4
  %41 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %42 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %41, i32 0, i32 2
  %43 = load %struct.media_entity*, %struct.media_entity** %42, align 8
  %44 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %173

49:                                               ; preds = %40
  %50 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %51 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %50, i32 0, i32 2
  %52 = load %struct.media_entity*, %struct.media_entity** %51, align 8
  %53 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %52)
  store %struct.v4l2_subdev* %53, %struct.v4l2_subdev** %11, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %60 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %59, i32 0, i32 6
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %60, align 8
  %62 = icmp ne %struct.v4l2_subdev* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %173

66:                                               ; preds = %58
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %68 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %69 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %68, i32 0, i32 6
  store %struct.v4l2_subdev* %67, %struct.v4l2_subdev** %69, align 8
  br label %73

70:                                               ; preds = %49
  %71 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %72 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %71, i32 0, i32 6
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %72, align 8
  br label %73

73:                                               ; preds = %70, %66
  br label %173

74:                                               ; preds = %4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %81 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %80, i32 0, i32 2
  %82 = load %struct.media_entity*, %struct.media_entity** %81, align 8
  %83 = icmp ne %struct.media_entity* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %173

87:                                               ; preds = %79
  br label %100

88:                                               ; preds = %74
  %89 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %90 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %89, i32 0, i32 5
  %91 = call i32 @v4l2_ctrl_handler_free(i32* %90)
  %92 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %93 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %92, i32 0, i32 5
  %94 = call i32 @v4l2_ctrl_handler_init(i32* %93, i32 0)
  %95 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %96 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %95, i32 0, i32 2
  store %struct.media_entity* null, %struct.media_entity** %96, align 8
  %97 = load i64, i64* @CSI_SRC_PAD_IDMAC, align 8
  %98 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %99 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %173

100:                                              ; preds = %87
  %101 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %102 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %105 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %107 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CSI_SRC_PAD_IDMAC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %100
  %112 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %113 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %112, i32 0, i32 2
  %114 = load %struct.media_entity*, %struct.media_entity** %113, align 8
  %115 = call i32 @is_media_entity_v4l2_video_device(%struct.media_entity* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  br label %173

120:                                              ; preds = %111
  %121 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %122 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %127 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @imx_media_fim_add_controls(i64 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %173

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %120
  %135 = load i32, i32* @IPU_CSI_DEST_IDMAC, align 4
  %136 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %137 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  br label %167

138:                                              ; preds = %100
  %139 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %140 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %139, i32 0, i32 2
  %141 = load %struct.media_entity*, %struct.media_entity** %140, align 8
  %142 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %12, align 4
  br label %173

147:                                              ; preds = %138
  %148 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %149 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %148, i32 0, i32 2
  %150 = load %struct.media_entity*, %struct.media_entity** %149, align 8
  %151 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %150)
  store %struct.v4l2_subdev* %151, %struct.v4l2_subdev** %11, align 8
  %152 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %153 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  switch i32 %154, label %163 [
    i32 128, label %155
    i32 129, label %159
  ]

155:                                              ; preds = %147
  %156 = load i32, i32* @IPU_CSI_DEST_VDIC, align 4
  %157 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %158 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  br label %166

159:                                              ; preds = %147
  %160 = load i32, i32* @IPU_CSI_DEST_IC, align 4
  %161 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %162 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  br label %166

163:                                              ; preds = %147
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %12, align 4
  br label %173

166:                                              ; preds = %159, %155
  br label %167

167:                                              ; preds = %166, %134
  %168 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %169 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %168, i32 0, i32 2
  %170 = load %struct.media_entity*, %struct.media_entity** %169, align 8
  %171 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %172 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %171, i32 0, i32 2
  store %struct.media_entity* %170, %struct.media_entity** %172, align 8
  br label %173

173:                                              ; preds = %167, %163, %144, %132, %117, %88, %84, %73, %63, %46
  %174 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %175 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %174, i32 0, i32 1
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i32, i32* %12, align 4
  ret i32 %177
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i32 @is_media_entity_v4l2_video_device(%struct.media_entity*) #1

declare dso_local i32 @imx_media_fim_add_controls(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
