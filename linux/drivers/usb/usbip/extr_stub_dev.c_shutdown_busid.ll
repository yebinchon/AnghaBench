; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_shutdown_busid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_shutdown_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_id_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDEV_EVENT_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bus_id_priv*)* @shutdown_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_busid(%struct.bus_id_priv* %0) #0 {
  %2 = alloca %struct.bus_id_priv*, align 8
  store %struct.bus_id_priv* %0, %struct.bus_id_priv** %2, align 8
  %3 = load %struct.bus_id_priv*, %struct.bus_id_priv** %2, align 8
  %4 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* @SDEV_EVENT_REMOVED, align 4
  %8 = call i32 @usbip_event_add(i32* %6, i32 %7)
  %9 = load %struct.bus_id_priv*, %struct.bus_id_priv** %2, align 8
  %10 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @usbip_stop_eh(i32* %12)
  ret void
}

declare dso_local i32 @usbip_event_add(i32*, i32) #1

declare dso_local i32 @usbip_stop_eh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
