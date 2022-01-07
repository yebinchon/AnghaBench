; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_audio_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_audio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.omap_hdmi_audio_pdata = type { i32, i32*, i32, %struct.device* }

@hdmi_audio_ops = common dso_local global i32 0, align 4
@hdmi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"omap-hdmi-audio\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hdmi_audio_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_audio_register(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.omap_hdmi_audio_pdata, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %3, i32 0, i32 0
  store i32 4, i32* %4, align 8
  %5 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %3, i32 0, i32 1
  store i32* @hdmi_audio_ops, i32** %5, align 8
  %6 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %3, i32 0, i32 2
  %7 = call i32 @hdmi_wp_get_audio_dma_addr(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 1))
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %3, i32 0, i32 3
  %9 = load %struct.device*, %struct.device** %2, align 8
  store %struct.device* %9, %struct.device** %8, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %12 = call i32 @platform_device_register_data(%struct.device* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11, %struct.omap_hdmi_audio_pdata* %3, i32 32)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 0), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 0), align 4
  %14 = call i32 @PTR_ERR_OR_ZERO(i32 %13)
  ret i32 %14
}

declare dso_local i32 @hdmi_wp_get_audio_dma_addr(i32*) #1

declare dso_local i32 @platform_device_register_data(%struct.device*, i8*, i32, %struct.omap_hdmi_audio_pdata*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
