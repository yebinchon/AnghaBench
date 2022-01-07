; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_pipeline_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_pipeline_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_pipeline = type { i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.iss_device*, %struct.TYPE_5__ }
%struct.iss_device = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.TYPE_6__ = type { %struct.v4l2_subdev }
%struct.TYPE_5__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }

@EIO = common dso_local global i32 0, align 4
@ISS_PIPELINE_IDLE_INPUT = common dso_local global i32 0, align 4
@ISS_PIPELINE_IDLE_OUTPUT = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_pipeline*, i32)* @iss_pipeline_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_pipeline_enable(%struct.iss_pipeline* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iss_pipeline*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iss_device*, align 8
  %7 = alloca %struct.media_entity*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iss_pipeline* %0, %struct.iss_pipeline** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %13 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.iss_device*, %struct.iss_device** %15, align 8
  store %struct.iss_device* %16, %struct.iss_device** %6, align 8
  %17 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %18 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %17, i32 0, i32 4
  %19 = load %struct.iss_device*, %struct.iss_device** %6, align 8
  %20 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %19, i32 0, i32 2
  %21 = call i64 @media_entity_enum_intersects(i32* %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %120

26:                                               ; preds = %2
  %27 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %28 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %27, i32 0, i32 3
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* @ISS_PIPELINE_IDLE_INPUT, align 4
  %32 = load i32, i32* @ISS_PIPELINE_IDLE_OUTPUT, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %36 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %40 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %39, i32 0, i32 3
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %44 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %46 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store %struct.media_entity* %49, %struct.media_entity** %7, align 8
  br label %50

50:                                               ; preds = %26, %112
  %51 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %52 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %51, i32 0, i32 0
  %53 = load %struct.media_pad*, %struct.media_pad** %52, align 8
  %54 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %53, i64 0
  store %struct.media_pad* %54, %struct.media_pad** %8, align 8
  %55 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %56 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %113

62:                                               ; preds = %50
  %63 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %64 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %63)
  store %struct.media_pad* %64, %struct.media_pad** %8, align 8
  %65 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %66 = icmp ne %struct.media_pad* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %69 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %68, i32 0, i32 1
  %70 = load %struct.media_entity*, %struct.media_entity** %69, align 8
  %71 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67, %62
  br label %113

74:                                               ; preds = %67
  %75 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %76 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %75, i32 0, i32 1
  %77 = load %struct.media_entity*, %struct.media_entity** %76, align 8
  store %struct.media_entity* %77, %struct.media_entity** %7, align 8
  %78 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %79 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %78)
  store %struct.v4l2_subdev* %79, %struct.v4l2_subdev** %9, align 8
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %81 = load i32, i32* @video, align 4
  %82 = load i32, i32* @s_stream, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %74
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @ENOIOCTLCMD, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %94 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %95 = call i32 @iss_pipeline_disable(%struct.iss_pipeline* %93, %struct.media_entity* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %3, align 4
  br label %120

97:                                               ; preds = %87, %74
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %99 = load %struct.iss_device*, %struct.iss_device** %6, align 8
  %100 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = icmp eq %struct.v4l2_subdev* %98, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %105 = load %struct.iss_device*, %struct.iss_device** %6, align 8
  %106 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = icmp eq %struct.v4l2_subdev* %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103, %97
  %110 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %111 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %103
  br label %50

113:                                              ; preds = %73, %61
  %114 = load %struct.iss_pipeline*, %struct.iss_pipeline** %4, align 8
  %115 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.iss_device*, %struct.iss_device** %117, align 8
  %119 = call i32 @iss_print_status(%struct.iss_device* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %113, %92, %23
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @media_entity_enum_intersects(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @iss_pipeline_disable(%struct.iss_pipeline*, %struct.media_entity*) #1

declare dso_local i32 @iss_print_status(%struct.iss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
