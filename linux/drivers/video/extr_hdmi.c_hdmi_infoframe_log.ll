; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_infoframe_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_infoframe_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.hdmi_infoframe = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_infoframe_log(i8* %0, %struct.device* %1, %union.hdmi_infoframe* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %union.hdmi_infoframe*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %union.hdmi_infoframe* %2, %union.hdmi_infoframe** %6, align 8
  %7 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %6, align 8
  %8 = bitcast %union.hdmi_infoframe* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %41 [
    i32 131, label %11
    i32 129, label %17
    i32 132, label %23
    i32 128, label %29
    i32 130, label %35
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %6, align 8
  %15 = bitcast %union.hdmi_infoframe* %14 to i32*
  %16 = call i32 @hdmi_avi_infoframe_log(i8* %12, %struct.device* %13, i32* %15)
  br label %41

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %6, align 8
  %21 = bitcast %union.hdmi_infoframe* %20 to i32*
  %22 = call i32 @hdmi_spd_infoframe_log(i8* %18, %struct.device* %19, i32* %21)
  br label %41

23:                                               ; preds = %3
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %6, align 8
  %27 = bitcast %union.hdmi_infoframe* %26 to i32*
  %28 = call i32 @hdmi_audio_infoframe_log(i8* %24, %struct.device* %25, i32* %27)
  br label %41

29:                                               ; preds = %3
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %6, align 8
  %33 = bitcast %union.hdmi_infoframe* %32 to i32*
  %34 = call i32 @hdmi_vendor_any_infoframe_log(i8* %30, %struct.device* %31, i32* %33)
  br label %41

35:                                               ; preds = %3
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %6, align 8
  %39 = bitcast %union.hdmi_infoframe* %38 to i32*
  %40 = call i32 @hdmi_drm_infoframe_log(i8* %36, %struct.device* %37, i32* %39)
  br label %41

41:                                               ; preds = %3, %35, %29, %23, %17, %11
  ret void
}

declare dso_local i32 @hdmi_avi_infoframe_log(i8*, %struct.device*, i32*) #1

declare dso_local i32 @hdmi_spd_infoframe_log(i8*, %struct.device*, i32*) #1

declare dso_local i32 @hdmi_audio_infoframe_log(i8*, %struct.device*, i32*) #1

declare dso_local i32 @hdmi_vendor_any_infoframe_log(i8*, %struct.device*, i32*) #1

declare dso_local i32 @hdmi_drm_infoframe_log(i8*, %struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
