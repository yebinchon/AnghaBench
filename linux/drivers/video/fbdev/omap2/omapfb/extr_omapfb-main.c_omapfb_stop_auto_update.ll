; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_stop_auto_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_stop_auto_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32 }
%struct.omap_dss_device = type { i32 }
%struct.omapfb_display_data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omapfb_stop_auto_update(%struct.omapfb2_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca %struct.omapfb2_device*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omapfb_display_data*, align 8
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %3, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %4, align 8
  %6 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %8 = call %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device* %6, %struct.omap_dss_device* %7)
  store %struct.omapfb_display_data* %8, %struct.omapfb_display_data** %5, align 8
  %9 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %5, align 8
  %10 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %9, i32 0, i32 1
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  %12 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %5, align 8
  %13 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  ret void
}

declare dso_local %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
