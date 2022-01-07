; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_pll.c_hdmi_pll_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_pll.c_hdmi_pll_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_pll_data = type { %struct.dss_pll }
%struct.dss_pll = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_pll_uninit(%struct.hdmi_pll_data* %0) #0 {
  %2 = alloca %struct.hdmi_pll_data*, align 8
  %3 = alloca %struct.dss_pll*, align 8
  store %struct.hdmi_pll_data* %0, %struct.hdmi_pll_data** %2, align 8
  %4 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %2, align 8
  %5 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %4, i32 0, i32 0
  store %struct.dss_pll* %5, %struct.dss_pll** %3, align 8
  %6 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %7 = call i32 @dss_pll_unregister(%struct.dss_pll* %6)
  ret void
}

declare dso_local i32 @dss_pll_unregister(%struct.dss_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
