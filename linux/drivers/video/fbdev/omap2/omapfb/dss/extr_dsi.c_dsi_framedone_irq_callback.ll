; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_framedone_irq_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_framedone_irq_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dsi_framedone_irq_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_framedone_irq_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.platform_device*
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %7)
  store %struct.dsi_data* %8, %struct.dsi_data** %4, align 8
  %9 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %10 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %9, i32 0, i32 0
  %11 = call i32 @cancel_delayed_work(i32* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @dsi_handle_framedone(%struct.platform_device* %12, i32 0)
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @dsi_handle_framedone(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
