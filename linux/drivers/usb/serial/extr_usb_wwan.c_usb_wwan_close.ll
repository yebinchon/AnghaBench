; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.usb_wwan_port_private = type { i32*, i32*, i32 }
%struct.usb_wwan_intf_private = type { i64, i32 }
%struct.urb = type { i32 }

@N_IN_URB = common dso_local global i32 0, align 4
@N_OUT_URB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_wwan_close(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_wwan_port_private*, align 8
  %6 = alloca %struct.usb_wwan_intf_private*, align 8
  %7 = alloca %struct.urb*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 1
  %10 = load %struct.usb_serial*, %struct.usb_serial** %9, align 8
  store %struct.usb_serial* %10, %struct.usb_serial** %4, align 8
  %11 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %12 = call %struct.usb_wwan_intf_private* @usb_get_serial_data(%struct.usb_serial* %11)
  store %struct.usb_wwan_intf_private* %12, %struct.usb_wwan_intf_private** %6, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %14 = call %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %13)
  store %struct.usb_wwan_port_private* %14, %struct.usb_wwan_port_private** %5, align 8
  %15 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %6, align 8
  %16 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %6, align 8
  %19 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %25 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %6, align 8
  %30 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_irq(i32* %30)
  br label %32

32:                                               ; preds = %39, %28
  %33 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %5, align 8
  %34 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %33, i32 0, i32 2
  %35 = call %struct.urb* @usb_get_from_anchor(i32* %34)
  store %struct.urb* %35, %struct.urb** %7, align 8
  %36 = load %struct.urb*, %struct.urb** %7, align 8
  %37 = icmp ne %struct.urb* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %47

39:                                               ; preds = %32
  %40 = load %struct.urb*, %struct.urb** %7, align 8
  %41 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %5, align 8
  %42 = call i32 @unbusy_queued_urb(%struct.urb* %40, %struct.usb_wwan_port_private* %41)
  %43 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %44 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i32 @usb_autopm_put_interface_async(%struct.TYPE_3__* %45)
  br label %32

47:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @N_IN_URB, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %5, align 8
  %54 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_kill_urb(i32 %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %48

64:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %78, %64
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @N_OUT_URB, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %5, align 8
  %71 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usb_kill_urb(i32 %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %65

81:                                               ; preds = %65
  %82 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %83 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @usb_kill_urb(i32 %84)
  %86 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %87 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = call i32 @usb_autopm_get_interface_no_resume(%struct.TYPE_3__* %88)
  ret void
}

declare dso_local %struct.usb_wwan_intf_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @unbusy_queued_urb(%struct.urb*, %struct.usb_wwan_port_private*) #1

declare dso_local i32 @usb_autopm_put_interface_async(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_autopm_get_interface_no_resume(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
