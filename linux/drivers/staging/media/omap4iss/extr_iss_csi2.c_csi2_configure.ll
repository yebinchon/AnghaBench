; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, i64, i32*, %struct.iss_csi2_timing_cfg* }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.iss_csi2_timing_cfg = type { i32, i32, i32, i32 }
%struct.iss_v4l2_subdevs_group = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.v4l2_subdev = type { %struct.iss_v4l2_subdevs_group* }
%struct.media_pad = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CSI2_PAD_SINK = common dso_local global i64 0, align 8
@g_skip_frames = common dso_local global i32 0, align 4
@ISS_CSI2_FRAME_IMMEDIATE = common dso_local global i32 0, align 4
@CSI2_PAD_SOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_csi2_device*)* @csi2_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_configure(%struct.iss_csi2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca %struct.iss_v4l2_subdevs_group*, align 8
  %5 = alloca %struct.iss_csi2_timing_cfg*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_pad*, align 8
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  %8 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %9 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %8, i32 0, i32 7
  %10 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %9, align 8
  %11 = getelementptr inbounds %struct.iss_csi2_timing_cfg, %struct.iss_csi2_timing_cfg* %10, i64 0
  store %struct.iss_csi2_timing_cfg* %11, %struct.iss_csi2_timing_cfg** %5, align 8
  %12 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %13 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %21 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %158

28:                                               ; preds = %19
  %29 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %30 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @CSI2_PAD_SINK, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call %struct.media_pad* @media_entity_remote_pad(i32* %33)
  store %struct.media_pad* %34, %struct.media_pad** %7, align 8
  %35 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %36 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %37)
  store %struct.v4l2_subdev* %38, %struct.v4l2_subdev** %6, align 8
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %39, i32 0, i32 0
  %41 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %40, align 8
  store %struct.iss_v4l2_subdevs_group* %41, %struct.iss_v4l2_subdevs_group** %4, align 8
  %42 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %43 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %46 = load i32, i32* @g_skip_frames, align 4
  %47 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %48 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %47, i32 0, i32 5
  %49 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %44, %struct.v4l2_subdev* %45, i32 %46, i64* %48)
  %50 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %4, align 8
  %51 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %56 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @ISS_CSI2_FRAME_IMMEDIATE, align 4
  %59 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %60 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %4, align 8
  %63 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %68 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %5, align 8
  %71 = getelementptr inbounds %struct.iss_csi2_timing_cfg, %struct.iss_csi2_timing_cfg* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %5, align 8
  %73 = getelementptr inbounds %struct.iss_csi2_timing_cfg, %struct.iss_csi2_timing_cfg* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %5, align 8
  %75 = getelementptr inbounds %struct.iss_csi2_timing_cfg, %struct.iss_csi2_timing_cfg* %74, i32 0, i32 2
  store i32 1, i32* %75, align 4
  %76 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %5, align 8
  %77 = getelementptr inbounds %struct.iss_csi2_timing_cfg, %struct.iss_csi2_timing_cfg* %76, i32 0, i32 3
  store i32 511, i32* %77, align 4
  %78 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %79 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %78, i32 0, i32 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i64, i64* @CSI2_PAD_SINK, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %86 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %85, i32 0, i32 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i64, i64* @CSI2_PAD_SOURCE, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %84, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %28
  %94 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %95 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %99

96:                                               ; preds = %28
  %97 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %98 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %101 = call i32 @csi2_ctx_map_format(%struct.iss_csi2_device* %100)
  %102 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %103 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  store i32 %101, i32* %106, align 8
  %107 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %108 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %99
  %113 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %114 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  br label %128

118:                                              ; preds = %99
  %119 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %120 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %124 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  store i64 %122, i64* %127, align 8
  br label %128

128:                                              ; preds = %118, %112
  %129 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %130 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %135 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  %139 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %140 = call i32 @csi2_irq_complexio1_set(%struct.iss_csi2_device* %139, i32 1)
  %141 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %142 = call i32 @csi2_irq_ctx_set(%struct.iss_csi2_device* %141, i32 1)
  %143 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %144 = call i32 @csi2_irq_status_set(%struct.iss_csi2_device* %143, i32 1)
  %145 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %146 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %5, align 8
  %147 = call i32 @csi2_timing_config(%struct.iss_csi2_device* %145, %struct.iss_csi2_timing_cfg* %146)
  %148 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %149 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %150 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %149, i32 0, i32 2
  %151 = call i32 @csi2_recv_config(%struct.iss_csi2_device* %148, %struct.TYPE_11__* %150)
  %152 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %153 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %154 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %153, i32 0, i32 1
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 0
  %157 = call i32 @csi2_ctx_config(%struct.iss_csi2_device* %152, %struct.TYPE_12__* %156)
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %128, %25
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(i32*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, %struct.v4l2_subdev*, i32, i64*) #1

declare dso_local i32 @csi2_ctx_map_format(%struct.iss_csi2_device*) #1

declare dso_local i32 @csi2_irq_complexio1_set(%struct.iss_csi2_device*, i32) #1

declare dso_local i32 @csi2_irq_ctx_set(%struct.iss_csi2_device*, i32) #1

declare dso_local i32 @csi2_irq_status_set(%struct.iss_csi2_device*, i32) #1

declare dso_local i32 @csi2_timing_config(%struct.iss_csi2_device*, %struct.iss_csi2_timing_cfg*) #1

declare dso_local i32 @csi2_recv_config(%struct.iss_csi2_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @csi2_ctx_config(%struct.iss_csi2_device*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
