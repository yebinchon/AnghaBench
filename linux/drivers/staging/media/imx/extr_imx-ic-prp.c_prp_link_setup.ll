; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }
%struct.imx_ic_priv = type { %struct.TYPE_2__, i32, %struct.prp_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.prp_priv = type { i32, %struct.v4l2_subdev*, %struct.v4l2_subdev*, %struct.v4l2_subdev* }

@.str = private unnamed_addr constant [24 x i8] c"%s: link setup %s -> %s\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IMX_MEDIA_GRP_ID_IPU_VDIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
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
  %29 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %28, i32 0, i32 2
  %30 = load %struct.media_entity*, %struct.media_entity** %29, align 8
  %31 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %34 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %33, i32 0, i32 2
  %35 = load %struct.media_entity*, %struct.media_entity** %34, align 8
  %36 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32, i32 %37)
  %39 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %40 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %39, i32 0, i32 2
  %41 = load %struct.media_entity*, %struct.media_entity** %40, align 8
  %42 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %41)
  store %struct.v4l2_subdev* %42, %struct.v4l2_subdev** %12, align 8
  %43 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %44 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %47 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %52
  %58 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %59 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %58, i32 0, i32 3
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %59, align 8
  %61 = icmp ne %struct.v4l2_subdev* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  br label %157

65:                                               ; preds = %57
  %66 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %67 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %66, i32 0, i32 2
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %67, align 8
  %69 = icmp ne %struct.v4l2_subdev* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IMX_MEDIA_GRP_ID_IPU_VDIC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %157

80:                                               ; preds = %70, %65
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %82 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %83 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %82, i32 0, i32 3
  store %struct.v4l2_subdev* %81, %struct.v4l2_subdev** %83, align 8
  br label %87

84:                                               ; preds = %52
  %85 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %86 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %85, i32 0, i32 3
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %86, align 8
  br label %87

87:                                               ; preds = %84, %80
  br label %157

88:                                               ; preds = %4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %142

93:                                               ; preds = %88
  %94 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %95 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %138 [
    i32 129, label %97
    i32 128, label %126
  ]

97:                                               ; preds = %93
  %98 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %99 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %98, i32 0, i32 2
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %99, align 8
  %101 = icmp ne %struct.v4l2_subdev* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %13, align 4
  br label %157

105:                                              ; preds = %97
  %106 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %107 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %106, i32 0, i32 3
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %107, align 8
  %109 = icmp ne %struct.v4l2_subdev* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %112 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %111, i32 0, i32 3
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %112, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IMX_MEDIA_GRP_ID_IPU_VDIC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %13, align 4
  br label %157

122:                                              ; preds = %110, %105
  %123 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %124 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %125 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %124, i32 0, i32 2
  store %struct.v4l2_subdev* %123, %struct.v4l2_subdev** %125, align 8
  br label %141

126:                                              ; preds = %93
  %127 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %128 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %127, i32 0, i32 1
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %128, align 8
  %130 = icmp ne %struct.v4l2_subdev* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %13, align 4
  br label %157

134:                                              ; preds = %126
  %135 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %136 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %137 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %136, i32 0, i32 1
  store %struct.v4l2_subdev* %135, %struct.v4l2_subdev** %137, align 8
  br label %141

138:                                              ; preds = %93
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %138, %134, %122
  br label %156

142:                                              ; preds = %88
  %143 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %144 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %152 [
    i32 129, label %146
    i32 128, label %149
  ]

146:                                              ; preds = %142
  %147 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %148 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %147, i32 0, i32 2
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %148, align 8
  br label %155

149:                                              ; preds = %142
  %150 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %151 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %150, i32 0, i32 1
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %151, align 8
  br label %155

152:                                              ; preds = %142
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %152, %149, %146
  br label %156

156:                                              ; preds = %155, %141
  br label %157

157:                                              ; preds = %156, %131, %119, %102, %87, %77, %62
  %158 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  %159 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %13, align 4
  ret i32 %161
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.imx_ic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
