; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_break_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.f81534_port_private = type { i32, i32 }

@UART_LCR_SBC = common dso_local global i32 0, align 4
@F81534_LINE_CONTROL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set break failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @f81534_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f81534_break_ctl(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.f81534_port_private*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %9, align 8
  store %struct.usb_serial_port* %10, %struct.usb_serial_port** %5, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %12 = call %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.f81534_port_private* %12, %struct.f81534_port_private** %6, align 8
  %13 = load %struct.f81534_port_private*, %struct.f81534_port_private** %6, align 8
  %14 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @UART_LCR_SBC, align 4
  %20 = load %struct.f81534_port_private*, %struct.f81534_port_private** %6, align 8
  %21 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @UART_LCR_SBC, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.f81534_port_private*, %struct.f81534_port_private** %6, align 8
  %28 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %33 = load i32, i32* @F81534_LINE_CONTROL_REG, align 4
  %34 = load %struct.f81534_port_private*, %struct.f81534_port_private** %6, align 8
  %35 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @f81534_set_port_register(%struct.usb_serial_port* %32, i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %42 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %41, i32 0, i32 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %31
  %46 = load %struct.f81534_port_private*, %struct.f81534_port_private** %6, align 8
  %47 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f81534_set_port_register(%struct.usb_serial_port*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
