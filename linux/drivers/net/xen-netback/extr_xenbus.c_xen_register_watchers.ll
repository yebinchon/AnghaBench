; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_register_watchers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_register_watchers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xenvif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, %struct.xenvif*)* @xen_register_watchers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_register_watchers(%struct.xenbus_device* %0, %struct.xenvif* %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.xenvif*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store %struct.xenvif* %1, %struct.xenvif** %4, align 8
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %6 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %7 = call i32 @xen_register_credit_watch(%struct.xenbus_device* %5, %struct.xenvif* %6)
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %9 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %10 = call i32 @xen_register_mcast_ctrl_watch(%struct.xenbus_device* %8, %struct.xenvif* %9)
  ret void
}

declare dso_local i32 @xen_register_credit_watch(%struct.xenbus_device*, %struct.xenvif*) #1

declare dso_local i32 @xen_register_mcast_ctrl_watch(%struct.xenbus_device*, %struct.xenvif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
