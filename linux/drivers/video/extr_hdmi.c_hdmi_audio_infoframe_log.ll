; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_audio_infoframe_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_audio_infoframe_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_audio_infoframe = type { i8*, i8*, i8*, i64, i32, i32, i32, i32 }
%struct.hdmi_any_infoframe = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"    channels: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"    channels: Refer to stream header\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"    coding type: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"    sample size: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"    sample frequency: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"    coding type ext: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"    channel allocation: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"    level shift value: %u dB\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"    downmix inhibit: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.device*, %struct.hdmi_audio_infoframe*)* @hdmi_audio_infoframe_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_audio_infoframe_log(i8* %0, %struct.device* %1, %struct.hdmi_audio_infoframe* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hdmi_audio_infoframe*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.hdmi_audio_infoframe* %2, %struct.hdmi_audio_infoframe** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %10 = bitcast %struct.hdmi_audio_infoframe* %9 to %struct.hdmi_any_infoframe*
  %11 = call i32 @hdmi_infoframe_log_header(i8* %7, %struct.device* %8, %struct.hdmi_any_infoframe* %10)
  %12 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %13 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %18 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  %21 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %24

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %16
  %25 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %26 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @hdmi_audio_coding_type_get_name(i32 %27)
  %29 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %31 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @hdmi_audio_sample_size_get_name(i32 %32)
  %34 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %36 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @hdmi_audio_sample_frequency_get_name(i32 %37)
  %39 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %41 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @hdmi_audio_coding_type_ext_get_name(i32 %42)
  %44 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  %45 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %46 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %50 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  %53 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %6, align 8
  %54 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %59 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %58)
  ret void
}

declare dso_local i32 @hdmi_infoframe_log_header(i8*, %struct.device*, %struct.hdmi_any_infoframe*) #1

declare dso_local i32 @hdmi_log(i8*, ...) #1

declare dso_local i8* @hdmi_audio_coding_type_get_name(i32) #1

declare dso_local i8* @hdmi_audio_sample_size_get_name(i32) #1

declare dso_local i8* @hdmi_audio_sample_frequency_get_name(i32) #1

declare dso_local i8* @hdmi_audio_coding_type_ext_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
