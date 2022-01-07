; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_outdat_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_outdat_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_wwan_port_private = type { i32, %struct.urb** }
%struct.usb_wwan_intf_private = type { i32, i32 }

@N_OUT_URB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb_wwan_outdat_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_wwan_outdat_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_wwan_port_private*, align 8
  %5 = alloca %struct.usb_wwan_intf_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %9, align 8
  store %struct.usb_serial_port* %10, %struct.usb_serial_port** %3, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call %struct.usb_wwan_intf_private* @usb_get_serial_data(%struct.TYPE_2__* %13)
  store %struct.usb_wwan_intf_private* %14, %struct.usb_wwan_intf_private** %5, align 8
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %16 = call i32 @usb_serial_port_softint(%struct.usb_serial_port* %15)
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %18 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_autopm_put_interface_async(i32 %21)
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %24 = call %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %23)
  store %struct.usb_wwan_port_private* %24, %struct.usb_wwan_port_private** %4, align 8
  %25 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %5, align 8
  %26 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %5, align 8
  %30 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %5, align 8
  %34 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %58, %1
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @N_OUT_URB, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %43 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %42, i32 0, i32 1
  %44 = load %struct.urb**, %struct.urb*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.urb*, %struct.urb** %44, i64 %46
  %48 = load %struct.urb*, %struct.urb** %47, align 8
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = icmp eq %struct.urb* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = call i32 (...) @smp_mb__before_atomic()
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %55 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %54, i32 0, i32 0
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  br label %61

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %37

61:                                               ; preds = %51, %37
  ret void
}

declare dso_local %struct.usb_wwan_intf_private* @usb_get_serial_data(%struct.TYPE_2__*) #1

declare dso_local i32 @usb_serial_port_softint(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

declare dso_local %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
