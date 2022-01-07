; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_audio_infoframe_check_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_audio_infoframe_check_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_audio_infoframe = type { i64, i32, i64 }

@HDMI_INFOFRAME_TYPE_AUDIO = common dso_local global i64 0, align 8
@HDMI_AUDIO_INFOFRAME_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_audio_infoframe*)* @hdmi_audio_infoframe_check_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_audio_infoframe_check_only(%struct.hdmi_audio_infoframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_audio_infoframe*, align 8
  store %struct.hdmi_audio_infoframe* %0, %struct.hdmi_audio_infoframe** %3, align 8
  %4 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %3, align 8
  %5 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HDMI_INFOFRAME_TYPE_AUDIO, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %3, align 8
  %16 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HDMI_AUDIO_INFOFRAME_SIZE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %9, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
