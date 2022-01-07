; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_set_default_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_set_default_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_channel = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ALLEGRO_WIDTH_DEFAULT = common dso_local global i32 0, align 4
@ALLEGRO_HEIGHT_DEFAULT = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@ALLEGRO_GOP_SIZE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.allegro_channel*)* @allegro_set_default_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_set_default_params(%struct.allegro_channel* %0) #0 {
  %2 = alloca %struct.allegro_channel*, align 8
  store %struct.allegro_channel* %0, %struct.allegro_channel** %2, align 8
  %3 = load i32, i32* @ALLEGRO_WIDTH_DEFAULT, align 4
  %4 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %5 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %4, i32 0, i32 9
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @ALLEGRO_HEIGHT_DEFAULT, align 4
  %7 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %8 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %10 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @round_up(i32 %11, i32 32)
  %13 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %14 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %16 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %17 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %16, i32 0, i32 17
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %19 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %20 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %19, i32 0, i32 16
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %22 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %23 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %22, i32 0, i32 15
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %25 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %26 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @V4L2_PIX_FMT_NV12, align 4
  %28 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %29 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 4
  %30 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %31 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %34 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = mul nsw i32 %36, 3
  %38 = sdiv i32 %37, 2
  %39 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %40 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @V4L2_PIX_FMT_H264, align 4
  %42 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %43 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %45 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %46 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %45, i32 0, i32 11
  store i32 %44, i32* %46, align 4
  %47 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %48 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %51 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @select_minimum_h264_level(i32 %49, i32 %52)
  %54 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %55 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %57 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %60 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @estimate_stream_size(i32 %58, i32 %61)
  %63 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %64 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %66 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %67 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  %68 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %69 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @maximum_bitrate(i32 %70)
  %72 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %73 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  %74 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %75 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @maximum_bitrate(i32 %76)
  %78 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %79 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %81 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @maximum_cpb_size(i32 %82)
  %84 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %85 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @ALLEGRO_GOP_SIZE_DEFAULT, align 4
  %87 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %88 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  ret void
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @select_minimum_h264_level(i32, i32) #1

declare dso_local i32 @estimate_stream_size(i32, i32) #1

declare dso_local i8* @maximum_bitrate(i32) #1

declare dso_local i32 @maximum_cpb_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
