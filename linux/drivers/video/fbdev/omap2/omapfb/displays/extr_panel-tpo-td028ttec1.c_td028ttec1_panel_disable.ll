; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td028ttec1.c_td028ttec1_panel_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td028ttec1.c_td028ttec1_panel_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*)* }
%struct.panel_drv_data = type { %struct.omap_dss_device* }

@.str = private unnamed_addr constant [28 x i8] c"td028ttec1_panel_disable()\0A\00", align 1
@JBT_REG_DISPLAY_OFF = common dso_local global i32 0, align 4
@JBT_REG_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_IN = common dso_local global i32 0, align 4
@JBT_REG_POWER_ON_OFF = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @td028ttec1_panel_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td028ttec1_panel_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %6 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %5)
  store %struct.panel_drv_data* %6, %struct.panel_drv_data** %3, align 8
  %7 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %8 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %7, i32 0, i32 0
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  store %struct.omap_dss_device* %9, %struct.omap_dss_device** %4, align 8
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %11 = call i32 @omapdss_device_is_enabled(%struct.omap_dss_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %16 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %20 = load i32, i32* @JBT_REG_DISPLAY_OFF, align 4
  %21 = call i32 @jbt_ret_write_0(%struct.panel_drv_data* %19, i32 %20)
  %22 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %23 = load i32, i32* @JBT_REG_OUTPUT_CONTROL, align 4
  %24 = call i32 @jbt_reg_write_2(%struct.panel_drv_data* %22, i32 %23, i32 32770)
  %25 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %26 = load i32, i32* @JBT_REG_SLEEP_IN, align 4
  %27 = call i32 @jbt_ret_write_0(%struct.panel_drv_data* %25, i32 %26)
  %28 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %29 = load i32, i32* @JBT_REG_POWER_ON_OFF, align 4
  %30 = call i32 @jbt_reg_write_1(%struct.panel_drv_data* %28, i32 %29, i32 0)
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %32 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %35, align 8
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %38 = call i32 %36(%struct.omap_dss_device* %37)
  %39 = load i32, i32* @OMAP_DSS_DISPLAY_DISABLED, align 4
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %41 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @jbt_ret_write_0(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @jbt_reg_write_2(%struct.panel_drv_data*, i32, i32) #1

declare dso_local i32 @jbt_reg_write_1(%struct.panel_drv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
