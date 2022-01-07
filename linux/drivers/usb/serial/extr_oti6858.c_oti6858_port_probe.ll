; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_oti6858.c_oti6858_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_oti6858.c_oti6858_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.oti6858_private = type { i32, i32, %struct.usb_serial_port*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@setup_line = common dso_local global i32 0, align 4
@send_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @oti6858_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oti6858_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.oti6858_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.oti6858_private* @kzalloc(i32 24, i32 %5)
  store %struct.oti6858_private* %6, %struct.oti6858_private** %4, align 8
  %7 = load %struct.oti6858_private*, %struct.oti6858_private** %4, align 8
  %8 = icmp ne %struct.oti6858_private* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.oti6858_private*, %struct.oti6858_private** %4, align 8
  %14 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %17 = load %struct.oti6858_private*, %struct.oti6858_private** %4, align 8
  %18 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %17, i32 0, i32 2
  store %struct.usb_serial_port* %16, %struct.usb_serial_port** %18, align 8
  %19 = load %struct.oti6858_private*, %struct.oti6858_private** %4, align 8
  %20 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %19, i32 0, i32 1
  %21 = load i32, i32* @setup_line, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  %23 = load %struct.oti6858_private*, %struct.oti6858_private** %4, align 8
  %24 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %23, i32 0, i32 0
  %25 = load i32, i32* @send_data, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %28 = load %struct.oti6858_private*, %struct.oti6858_private** %4, align 8
  %29 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %27, %struct.oti6858_private* %28)
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %31 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 256, i32* %32, align 4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %12, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.oti6858_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.oti6858_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
