; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_usb.c_gb_usb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_usb.c_gb_usb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32 }
%struct.gb_usb_device = type { %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.usb_hcd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbphy_device*)* @gb_usb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_usb_remove(%struct.gbphy_device* %0) #0 {
  %2 = alloca %struct.gbphy_device*, align 8
  %3 = alloca %struct.gb_usb_device*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  store %struct.gbphy_device* %0, %struct.gbphy_device** %2, align 8
  %6 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %7 = call %struct.gb_usb_device* @gb_gbphy_get_data(%struct.gbphy_device* %6)
  store %struct.gb_usb_device* %7, %struct.gb_usb_device** %3, align 8
  %8 = load %struct.gb_usb_device*, %struct.gb_usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.gb_usb_device, %struct.gb_usb_device* %8, i32 0, i32 0
  %10 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  store %struct.gb_connection* %10, %struct.gb_connection** %4, align 8
  %11 = load %struct.gb_usb_device*, %struct.gb_usb_device** %3, align 8
  %12 = call %struct.usb_hcd* @gb_usb_device_to_hcd(%struct.gb_usb_device* %11)
  store %struct.usb_hcd* %12, %struct.usb_hcd** %5, align 8
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %14 = call i32 @usb_remove_hcd(%struct.usb_hcd* %13)
  %15 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %16 = call i32 @gb_connection_disable(%struct.gb_connection* %15)
  %17 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %18 = call i32 @gb_connection_destroy(%struct.gb_connection* %17)
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %20 = call i32 @usb_put_hcd(%struct.usb_hcd* %19)
  ret void
}

declare dso_local %struct.gb_usb_device* @gb_gbphy_get_data(%struct.gbphy_device*) #1

declare dso_local %struct.usb_hcd* @gb_usb_device_to_hcd(%struct.gb_usb_device*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
