; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }
%struct.omap_dss_device = type { i32 }

@venc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VENC_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @venc_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venc_power_off(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.omap_overlay_manager*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %4 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 1, i32 0), align 8
  store %struct.omap_overlay_manager* %4, %struct.omap_overlay_manager** %3, align 8
  %5 = load i32, i32* @VENC_OUTPUT_CONTROL, align 4
  %6 = call i32 @venc_write_reg(i32 %5, i32 0)
  %7 = call i32 @dss_set_dac_pwrdn_bgz(i32 0)
  %8 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %9 = call i32 @dss_mgr_disable(%struct.omap_overlay_manager* %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 0), align 8
  %11 = call i32 @regulator_disable(i32 %10)
  %12 = call i32 (...) @venc_runtime_put()
  ret void
}

declare dso_local i32 @venc_write_reg(i32, i32) #1

declare dso_local i32 @dss_set_dac_pwrdn_bgz(i32) #1

declare dso_local i32 @dss_mgr_disable(%struct.omap_overlay_manager*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @venc_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
