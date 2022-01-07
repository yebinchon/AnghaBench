; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kl5kusb105.c_klsi_105_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kl5kusb105.c_klsi_105_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.klsi_105_private = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kl5kusb105a_sio_b9600 = common dso_local global i32 0, align 4
@kl5kusb105a_dtb_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @klsi_105_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klsi_105_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.klsi_105_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.klsi_105_private* @kmalloc(i32 40, i32 %5)
  store %struct.klsi_105_private* %6, %struct.klsi_105_private** %4, align 8
  %7 = load %struct.klsi_105_private*, %struct.klsi_105_private** %4, align 8
  %8 = icmp ne %struct.klsi_105_private* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.klsi_105_private*, %struct.klsi_105_private** %4, align 8
  %14 = getelementptr inbounds %struct.klsi_105_private, %struct.klsi_105_private* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 5, i32* %15, align 8
  %16 = load i32, i32* @kl5kusb105a_sio_b9600, align 4
  %17 = load %struct.klsi_105_private*, %struct.klsi_105_private** %4, align 8
  %18 = getelementptr inbounds %struct.klsi_105_private, %struct.klsi_105_private* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @kl5kusb105a_dtb_8, align 4
  %21 = load %struct.klsi_105_private*, %struct.klsi_105_private** %4, align 8
  %22 = getelementptr inbounds %struct.klsi_105_private, %struct.klsi_105_private* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load %struct.klsi_105_private*, %struct.klsi_105_private** %4, align 8
  %25 = getelementptr inbounds %struct.klsi_105_private, %struct.klsi_105_private* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.klsi_105_private*, %struct.klsi_105_private** %4, align 8
  %28 = getelementptr inbounds %struct.klsi_105_private, %struct.klsi_105_private* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.klsi_105_private*, %struct.klsi_105_private** %4, align 8
  %31 = getelementptr inbounds %struct.klsi_105_private, %struct.klsi_105_private* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.klsi_105_private*, %struct.klsi_105_private** %4, align 8
  %33 = getelementptr inbounds %struct.klsi_105_private, %struct.klsi_105_private* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %36 = load %struct.klsi_105_private*, %struct.klsi_105_private** %4, align 8
  %37 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %35, %struct.klsi_105_private* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %12, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.klsi_105_private* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.klsi_105_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
