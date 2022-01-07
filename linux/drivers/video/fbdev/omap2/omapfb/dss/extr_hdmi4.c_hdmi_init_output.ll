; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_init_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_init_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.omap_dss_device }
%struct.omap_dss_device = type { i8*, i32, %struct.TYPE_3__, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.platform_device = type { i32 }

@hdmi = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OMAP_DSS_OUTPUT_HDMI = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_HDMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"hdmi.0\00", align 1
@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@hdmi_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @hdmi_init_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_init_output(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omap_dss_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store %struct.omap_dss_device* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hdmi, i32 0, i32 0), %struct.omap_dss_device** %3, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %6, i32 0, i32 6
  store i32* %5, i32** %7, align 8
  %8 = load i32, i32* @OMAP_DSS_OUTPUT_HDMI, align 4
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %10 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @OMAP_DISPLAY_TYPE_HDMI, align 4
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %13 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %18 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %20 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* @hdmi_ops, i32** %21, align 8
  %22 = load i32, i32* @THIS_MODULE, align 4
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %24 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %26 = call i32 @omapdss_register_output(%struct.omap_dss_device* %25)
  ret void
}

declare dso_local i32 @omapdss_register_output(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
