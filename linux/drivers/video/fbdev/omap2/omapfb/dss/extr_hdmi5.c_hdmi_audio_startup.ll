; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi_audio_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi_audio_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_hdmi = type { void (%struct.device.0*)*, i32, i32, i32 }
%struct.device.0 = type opaque

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, void (%struct.device*)*)* @hdmi_audio_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_audio_startup(%struct.device* %0, void (%struct.device*)* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca void (%struct.device*)*, align 8
  %5 = alloca %struct.omap_hdmi*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store void (%struct.device*)* %1, void (%struct.device*)** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.omap_hdmi* @dev_get_drvdata(%struct.device* %7)
  store %struct.omap_hdmi* %8, %struct.omap_hdmi** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %10 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %13 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %12, i32 0, i32 3
  %14 = call i32 @hdmi_mode_has_audio(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %18 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %16
  %25 = load void (%struct.device*)*, void (%struct.device*)** %4, align 8
  %26 = bitcast void (%struct.device*)* %25 to void (%struct.device.0*)*
  %27 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %28 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %27, i32 0, i32 0
  store void (%struct.device.0*)* %26, void (%struct.device.0*)** %28, align 8
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %31 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.omap_hdmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdmi_mode_has_audio(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
