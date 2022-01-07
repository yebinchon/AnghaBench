; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_option.c_option_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_option.c_option_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_wwan_intf_private = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @option_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_attach(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_interface_descriptor*, align 8
  %5 = alloca %struct.usb_wwan_intf_private*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.usb_wwan_intf_private* @kzalloc(i32 8, i32 %7)
  store %struct.usb_wwan_intf_private* %8, %struct.usb_wwan_intf_private** %5, align 8
  %9 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %5, align 8
  %10 = icmp ne %struct.usb_wwan_intf_private* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %16 = call i64 @usb_get_serial_data(%struct.usb_serial* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %18 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.usb_interface_descriptor* %22, %struct.usb_interface_descriptor** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @NCTRL(i32 %26)
  %28 = and i64 %23, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %5, align 8
  %32 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %14
  %34 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %5, align 8
  %35 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %34, i32 0, i32 1
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %38 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %5, align 8
  %39 = call i32 @usb_set_serial_data(%struct.usb_serial* %37, %struct.usb_wwan_intf_private* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.usb_wwan_intf_private* @kzalloc(i32, i32) #1

declare dso_local i64 @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i64 @NCTRL(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, %struct.usb_wwan_intf_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
