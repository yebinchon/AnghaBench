; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }
%struct.omap_dss_device = type { i32 }

@venc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OMAP_DSS_VENC_TYPE_COMPOSITE = common dso_local global i64 0, align 8
@VENC_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @venc_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_power_on(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.omap_overlay_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %7 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 4, i32 0), align 8
  store %struct.omap_overlay_manager* %7, %struct.omap_overlay_manager** %4, align 8
  %8 = call i32 (...) @venc_runtime_get()
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %60

12:                                               ; preds = %1
  %13 = call i32 (...) @venc_reset()
  %14 = call i32 @venc_timings_to_config(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 3))
  %15 = call i32 @venc_write_config(i32 %14)
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 0), align 8
  %17 = call i32 @dss_set_venc_output(i64 %16)
  %18 = call i32 @dss_set_dac_pwrdn_bgz(i32 1)
  store i32 0, i32* %5, align 4
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 0), align 8
  %20 = load i64, i64* @OMAP_DSS_VENC_TYPE_COMPOSITE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, 2
  store i32 %24, i32* %5, align 4
  br label %28

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, 5
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 1), align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, 8
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @VENC_OUTPUT_CONTROL, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @venc_write_reg(i32 %35, i32 %36)
  %38 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %39 = call i32 @dss_mgr_set_timings(%struct.omap_overlay_manager* %38, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 3))
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 2), align 4
  %41 = call i32 @regulator_enable(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %55

45:                                               ; preds = %34
  %46 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %47 = call i32 @dss_mgr_enable(%struct.omap_overlay_manager* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %62

52:                                               ; preds = %50
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @venc, i32 0, i32 2), align 4
  %54 = call i32 @regulator_disable(i32 %53)
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i32, i32* @VENC_OUTPUT_CONTROL, align 4
  %57 = call i32 @venc_write_reg(i32 %56, i32 0)
  %58 = call i32 @dss_set_dac_pwrdn_bgz(i32 0)
  %59 = call i32 (...) @venc_runtime_put()
  br label %60

60:                                               ; preds = %55, %11
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %51
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @venc_runtime_get(...) #1

declare dso_local i32 @venc_reset(...) #1

declare dso_local i32 @venc_write_config(i32) #1

declare dso_local i32 @venc_timings_to_config(i32*) #1

declare dso_local i32 @dss_set_venc_output(i64) #1

declare dso_local i32 @dss_set_dac_pwrdn_bgz(i32) #1

declare dso_local i32 @venc_write_reg(i32, i32) #1

declare dso_local i32 @dss_mgr_set_timings(%struct.omap_overlay_manager*, i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dss_mgr_enable(%struct.omap_overlay_manager*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @venc_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
