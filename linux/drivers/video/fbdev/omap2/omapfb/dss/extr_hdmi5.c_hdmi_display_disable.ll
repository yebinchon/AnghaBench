; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi_display_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi_display_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.omap_dss_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Enter hdmi_display_disable\0A\00", align 1
@hdmi = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @hdmi_display_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_display_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca i64, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %4 = call i32 @DSSDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hdmi, i32 0, i32 1))
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hdmi, i32 0, i32 2), i64 %6)
  %8 = call i32 @hdmi_stop_audio_stream(%struct.TYPE_3__* @hdmi)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hdmi, i32 0, i32 0), align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hdmi, i32 0, i32 2), i64 %9)
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %12 = call i32 @hdmi_power_off_full(%struct.omap_dss_device* %11)
  %13 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hdmi, i32 0, i32 1))
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_stop_audio_stream(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hdmi_power_off_full(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
