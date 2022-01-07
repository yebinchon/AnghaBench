; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c__omap_dsi_set_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c__omap_dsi_set_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DSI_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@DSI_IRQENABLE = common dso_local global i32 0, align 4
@DSI_IRQSTATUS = common dso_local global i32 0, align 4
@DSI_IRQ_TE_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @_omap_dsi_set_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap_dsi_set_irqs(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %5)
  store %struct.dsi_data* %6, %struct.dsi_data** %3, align 8
  %7 = load i32, i32* @DSI_IRQ_ERROR_MASK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %10 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DSI_IRQENABLE, align 4
  %20 = load i32, i32* @DSI_IRQSTATUS, align 4
  %21 = call i32 @_omap_dsi_configure_irqs(%struct.platform_device* %8, i32 %12, i32 %17, i32 %18, i32 %19, i32 %20)
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @_omap_dsi_configure_irqs(%struct.platform_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
