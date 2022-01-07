; ModuleID = '/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3av_cmd.c_ps3av_cmd_set_av_video_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3av_cmd.c_ps3av_cmd_set_av_video_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3av_pkt_av_video_cs = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }

@PS3AV_CMD_VIDEO_VID_720P_60HZ = common dso_local global i32 0, align 4
@PS3AV_CMD_VIDEO_CS_YUV444_8 = common dso_local global i32 0, align 4
@PS3AV_CID_AV_VIDEO_CS = common dso_local global i32 0, align 4
@PS3AV_CMD_VIDEO_CS_RGB_8 = common dso_local global i32 0, align 4
@PS3AV_MODE_WHITE = common dso_local global i32 0, align 4
@PS3AV_CMD_AV_SUPER_WHITE_ON = common dso_local global i32 0, align 4
@PS3AV_CMD_AV_SUPER_WHITE_OFF = common dso_local global i32 0, align 4
@PS3AV_MODE_DITHER = common dso_local global i32 0, align 4
@PS3AV_CMD_AV_DITHER_ON = common dso_local global i32 0, align 4
@PS3AV_CMD_AV_DITHER_8BIT = common dso_local global i32 0, align 4
@PS3AV_CMD_AV_DITHER_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps3av_cmd_set_av_video_cs(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ps3av_pkt_av_video_cs*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.ps3av_pkt_av_video_cs*
  store %struct.ps3av_pkt_av_video_cs* %15, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @PS3AV_CMD_VIDEO_VID_720P_60HZ, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %18, %6
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @PS3AV_CMD_VIDEO_CS_YUV444_8, align 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %31 = call i32 @memset(%struct.ps3av_pkt_av_video_cs* %30, i32 0, i32 48)
  %32 = load i32, i32* @PS3AV_CID_AV_VIDEO_CS, align 4
  %33 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %34 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %33, i32 0, i32 8
  %35 = call i32 @ps3av_set_hdr(i32 %32, i32 48, i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %38 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ps3av_vid_video2av(i32 %39)
  %41 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %42 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @ps3av_cs_video2av(i32 %43)
  %45 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %46 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @PS3AV_CMD_VIDEO_CS_RGB_8, align 4
  %48 = call i8* @ps3av_cs_video2av(i32 %47)
  %49 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %50 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ps3av_cs_video2av_bitlen(i32 %51)
  %53 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %54 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @PS3AV_MODE_WHITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %29
  %60 = call i64 (...) @ps3av_hdmi_range()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @PS3AV_CMD_AV_SUPER_WHITE_ON, align 4
  %64 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %65 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %59, %29
  %67 = load i32, i32* @PS3AV_CMD_AV_SUPER_WHITE_OFF, align 4
  %68 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %69 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %73 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @PS3AV_MODE_DITHER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* @PS3AV_CMD_AV_DITHER_ON, align 4
  %80 = load i32, i32* @PS3AV_CMD_AV_DITHER_8BIT, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %83 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %88

84:                                               ; preds = %70
  %85 = load i32, i32* @PS3AV_CMD_AV_DITHER_OFF, align 4
  %86 = load %struct.ps3av_pkt_av_video_cs*, %struct.ps3av_pkt_av_video_cs** %13, align 8
  %87 = getelementptr inbounds %struct.ps3av_pkt_av_video_cs, %struct.ps3av_pkt_av_video_cs* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %78
  ret i32 48
}

declare dso_local i32 @memset(%struct.ps3av_pkt_av_video_cs*, i32, i32) #1

declare dso_local i32 @ps3av_set_hdr(i32, i32, i32*) #1

declare dso_local i32 @ps3av_vid_video2av(i32) #1

declare dso_local i8* @ps3av_cs_video2av(i32) #1

declare dso_local i32 @ps3av_cs_video2av_bitlen(i32) #1

declare dso_local i64 @ps3av_hdmi_range(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
