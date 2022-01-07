; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ir-usb.c_ir_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ir-usb.c_ir_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @ir_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_2__** %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %6
  %14 = load i32, i32* @URB_ZERO_PACKET, align 4
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %14, i32* %22, align 4
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %29 = call i32 @usb_serial_generic_open(%struct.tty_struct* %27, %struct.usb_serial_port* %28)
  ret i32 %29
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__**) #1

declare dso_local i32 @usb_serial_generic_open(%struct.tty_struct*, %struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
