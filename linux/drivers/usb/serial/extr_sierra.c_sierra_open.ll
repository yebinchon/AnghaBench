; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sierra_port_private = type { i32, %struct.urb** }
%struct.urb = type { i32 }
%struct.sierra_intf_private = type { i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@IN_BUFLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sierra_indat_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @sierra_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sierra_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.sierra_port_private*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.sierra_intf_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.urb*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %14 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %13, i32 0, i32 1
  %15 = load %struct.usb_serial*, %struct.usb_serial** %14, align 8
  store %struct.usb_serial* %15, %struct.usb_serial** %7, align 8
  %16 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %17 = call %struct.sierra_intf_private* @usb_get_serial_data(%struct.usb_serial* %16)
  store %struct.sierra_intf_private* %17, %struct.sierra_intf_private** %8, align 8
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %19 = call %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %18)
  store %struct.sierra_port_private* %19, %struct.sierra_port_private** %6, align 8
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %45, %2
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.sierra_port_private*, %struct.sierra_port_private** %6, align 8
  %26 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @USB_DIR_IN, align 4
  %33 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %34 = load i32, i32* @IN_BUFLEN, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* @sierra_indat_callback, align 4
  %37 = call %struct.urb* @sierra_setup_urb(%struct.usb_serial* %30, i32 %31, i32 %32, %struct.usb_serial_port* %33, i32 %34, i32 %35, i32 %36)
  store %struct.urb* %37, %struct.urb** %12, align 8
  %38 = load %struct.urb*, %struct.urb** %12, align 8
  %39 = load %struct.sierra_port_private*, %struct.sierra_port_private** %6, align 8
  %40 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %39, i32 0, i32 1
  %41 = load %struct.urb**, %struct.urb*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.urb*, %struct.urb** %41, i64 %43
  store %struct.urb* %38, %struct.urb** %44, align 8
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %23

48:                                               ; preds = %23
  %49 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %50 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %53 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @usb_sndbulkpipe(i32 %54, i32 %55)
  %57 = load i32, i32* @USB_DIR_IN, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @usb_clear_halt(i32 %51, i32 %58)
  %60 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @sierra_submit_rx_urbs(%struct.usb_serial_port* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %88

66:                                               ; preds = %48
  %67 = load %struct.sierra_intf_private*, %struct.sierra_intf_private** %8, align 8
  %68 = getelementptr inbounds %struct.sierra_intf_private, %struct.sierra_intf_private* %67, i32 0, i32 1
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load %struct.sierra_intf_private*, %struct.sierra_intf_private** %8, align 8
  %71 = getelementptr inbounds %struct.sierra_intf_private, %struct.sierra_intf_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %77 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %66
  %81 = load %struct.sierra_intf_private*, %struct.sierra_intf_private** %8, align 8
  %82 = getelementptr inbounds %struct.sierra_intf_private, %struct.sierra_intf_private* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock_irq(i32* %82)
  %84 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %85 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = call i32 @usb_autopm_put_interface(%struct.TYPE_2__* %86)
  store i32 0, i32* %3, align 4
  br label %117

88:                                               ; preds = %65
  %89 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %90 = call i32 @sierra_stop_rx_urbs(%struct.usb_serial_port* %89)
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %112, %88
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.sierra_port_private*, %struct.sierra_port_private** %6, align 8
  %94 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = load %struct.sierra_port_private*, %struct.sierra_port_private** %6, align 8
  %99 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %98, i32 0, i32 1
  %100 = load %struct.urb**, %struct.urb*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.urb*, %struct.urb** %100, i64 %102
  %104 = load %struct.urb*, %struct.urb** %103, align 8
  %105 = call i32 @sierra_release_urb(%struct.urb* %104)
  %106 = load %struct.sierra_port_private*, %struct.sierra_port_private** %6, align 8
  %107 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %106, i32 0, i32 1
  %108 = load %struct.urb**, %struct.urb*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.urb*, %struct.urb** %108, i64 %110
  store %struct.urb* null, %struct.urb** %111, align 8
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %91

115:                                              ; preds = %91
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %80
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.sierra_intf_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local %struct.urb* @sierra_setup_urb(%struct.usb_serial*, i32, i32, %struct.usb_serial_port*, i32, i32, i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @sierra_submit_rx_urbs(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_2__*) #1

declare dso_local i32 @sierra_stop_rx_urbs(%struct.usb_serial_port*) #1

declare dso_local i32 @sierra_release_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
