; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_talk_to_otherend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_talk_to_otherend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xenbus_driver = type { i32 (%struct.xenbus_device.0*)* }
%struct.xenbus_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @talk_to_otherend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talk_to_otherend(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.xenbus_driver*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %5 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.xenbus_driver* @to_xenbus_driver(i32 %7)
  store %struct.xenbus_driver* %8, %struct.xenbus_driver** %3, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %10 = call i32 @free_otherend_watch(%struct.xenbus_device* %9)
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %12 = call i32 @free_otherend_details(%struct.xenbus_device* %11)
  %13 = load %struct.xenbus_driver*, %struct.xenbus_driver** %3, align 8
  %14 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %13, i32 0, i32 0
  %15 = load i32 (%struct.xenbus_device.0*)*, i32 (%struct.xenbus_device.0*)** %14, align 8
  %16 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %17 = bitcast %struct.xenbus_device* %16 to %struct.xenbus_device.0*
  %18 = call i32 %15(%struct.xenbus_device.0* %17)
  ret i32 %18
}

declare dso_local %struct.xenbus_driver* @to_xenbus_driver(i32) #1

declare dso_local i32 @free_otherend_watch(%struct.xenbus_device*) #1

declare dso_local i32 @free_otherend_details(%struct.xenbus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
