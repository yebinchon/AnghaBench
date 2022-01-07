; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_register_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_register_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { %struct.TYPE_11__, i32, %struct.TYPE_12__, %struct.TYPE_12__, i32, i32, i32, %struct.TYPE_13__, i32, %struct.iss_platform_data* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.media_entity }
%struct.media_entity = type { i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32 }
%struct.iss_platform_data = type { %struct.iss_v4l2_subdevs_group* }
%struct.iss_v4l2_subdevs_group = type { i32, i64 }
%struct.v4l2_subdev = type { i32, %struct.iss_v4l2_subdevs_group* }

@.str = private unnamed_addr constant [13 x i8] c"TI OMAP4 ISS\00", align 1
@iss_media_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Media device registration failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"V4L2 device registration failed (%d)\0A\00", align 1
@CSI2_PAD_SINK = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid interface type %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_device*)* @iss_register_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_register_entities(%struct.iss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca %struct.iss_platform_data*, align 8
  %5 = alloca %struct.iss_v4l2_subdevs_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.media_entity*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %3, align 8
  %11 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %12 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %11, i32 0, i32 9
  %13 = load %struct.iss_platform_data*, %struct.iss_platform_data** %12, align 8
  store %struct.iss_platform_data* %13, %struct.iss_platform_data** %4, align 8
  %14 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %15 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %18 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %21 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strscpy(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %26 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %29 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %32 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32* @iss_media_ops, i32** %33, align 8
  %34 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %35 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %34, i32 0, i32 7
  %36 = call i32 @media_device_register(%struct.TYPE_13__* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %41 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %195

46:                                               ; preds = %1
  %47 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %48 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %47, i32 0, i32 7
  %49 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %50 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %51, align 8
  %52 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %53 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %56 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %55, i32 0, i32 0
  %57 = call i32 @v4l2_device_register(i32 %54, %struct.TYPE_11__* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %62 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %187

66:                                               ; preds = %46
  %67 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %68 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %67, i32 0, i32 3
  %69 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %70 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %69, i32 0, i32 0
  %71 = call i32 @omap4iss_csi2_register_entities(%struct.TYPE_12__* %68, %struct.TYPE_11__* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %187

75:                                               ; preds = %66
  %76 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %77 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %76, i32 0, i32 2
  %78 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %79 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %78, i32 0, i32 0
  %80 = call i32 @omap4iss_csi2_register_entities(%struct.TYPE_12__* %77, %struct.TYPE_11__* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %187

84:                                               ; preds = %75
  %85 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %86 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %85, i32 0, i32 6
  %87 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %88 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %87, i32 0, i32 0
  %89 = call i32 @omap4iss_ipipeif_register_entities(i32* %86, %struct.TYPE_11__* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %187

93:                                               ; preds = %84
  %94 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %95 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %94, i32 0, i32 5
  %96 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %97 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %96, i32 0, i32 0
  %98 = call i32 @omap4iss_ipipe_register_entities(i32* %95, %struct.TYPE_11__* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %187

102:                                              ; preds = %93
  %103 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %104 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %103, i32 0, i32 4
  %105 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %106 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %105, i32 0, i32 0
  %107 = call i32 @omap4iss_resizer_register_entities(i32* %104, %struct.TYPE_11__* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %187

111:                                              ; preds = %102
  %112 = load %struct.iss_platform_data*, %struct.iss_platform_data** %4, align 8
  %113 = getelementptr inbounds %struct.iss_platform_data, %struct.iss_platform_data* %112, i32 0, i32 0
  %114 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %113, align 8
  store %struct.iss_v4l2_subdevs_group* %114, %struct.iss_v4l2_subdevs_group** %5, align 8
  br label %115

115:                                              ; preds = %180, %111
  %116 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %5, align 8
  %117 = icmp ne %struct.iss_v4l2_subdevs_group* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %5, align 8
  %120 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi i1 [ false, %115 ], [ %122, %118 ]
  br i1 %124, label %125, label %183

125:                                              ; preds = %123
  %126 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %127 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %5, align 8
  %128 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call %struct.v4l2_subdev* @iss_register_subdev_group(%struct.iss_device* %126, i64 %129)
  store %struct.v4l2_subdev* %130, %struct.v4l2_subdev** %7, align 8
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %132 = icmp ne %struct.v4l2_subdev* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  br label %180

134:                                              ; preds = %125
  %135 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %5, align 8
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %136, i32 0, i32 1
  store %struct.iss_v4l2_subdevs_group* %135, %struct.iss_v4l2_subdevs_group** %137, align 8
  %138 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %5, align 8
  %139 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %159 [
    i32 129, label %141
    i32 128, label %150
  ]

141:                                              ; preds = %134
  %142 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %143 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store %struct.media_entity* %145, %struct.media_entity** %8, align 8
  %146 = load i32, i32* @CSI2_PAD_SINK, align 4
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %148 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %9, align 4
  br label %169

150:                                              ; preds = %134
  %151 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %152 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  store %struct.media_entity* %154, %struct.media_entity** %8, align 8
  %155 = load i32, i32* @CSI2_PAD_SINK, align 4
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %157 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %158 = or i32 %156, %157
  store i32 %158, i32* %9, align 4
  br label %169

159:                                              ; preds = %134
  %160 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %161 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %5, align 8
  %164 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @dev_err(i32 %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %6, align 4
  br label %187

169:                                              ; preds = %150, %141
  %170 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %171 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %170, i32 0, i32 0
  %172 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @media_create_pad_link(i32* %171, i32 0, %struct.media_entity* %172, i32 %173, i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %187

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179, %133
  %181 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %5, align 8
  %182 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %181, i32 1
  store %struct.iss_v4l2_subdevs_group* %182, %struct.iss_v4l2_subdevs_group** %5, align 8
  br label %115

183:                                              ; preds = %123
  %184 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %185 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %184, i32 0, i32 0
  %186 = call i32 @v4l2_device_register_subdev_nodes(%struct.TYPE_11__* %185)
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %183, %178, %159, %110, %101, %92, %83, %74, %60
  %188 = load i32, i32* %6, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %192 = call i32 @iss_unregister_entities(%struct.iss_device* %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* %6, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %193, %39
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @media_device_register(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @v4l2_device_register(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @omap4iss_csi2_register_entities(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @omap4iss_ipipeif_register_entities(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @omap4iss_ipipe_register_entities(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @omap4iss_resizer_register_entities(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.v4l2_subdev* @iss_register_subdev_group(%struct.iss_device*, i64) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, %struct.media_entity*, i32, i32) #1

declare dso_local i32 @v4l2_device_register_subdev_nodes(%struct.TYPE_11__*) #1

declare dso_local i32 @iss_unregister_entities(%struct.iss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
