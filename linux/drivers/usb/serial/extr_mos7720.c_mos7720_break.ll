; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos7720_break.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos7720_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.moschip_port = type { i8 }

@UART_LCR_SBC = common dso_local global i8 0, align 1
@MOS7720_LCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @mos7720_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos7720_break(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.moschip_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %5, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 1
  %14 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  store %struct.usb_serial* %14, %struct.usb_serial** %7, align 8
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %16 = call %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port* %15)
  store %struct.moschip_port* %16, %struct.moschip_port** %8, align 8
  %17 = load %struct.moschip_port*, %struct.moschip_port** %8, align 8
  %18 = icmp eq %struct.moschip_port* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %55

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.moschip_port*, %struct.moschip_port** %8, align 8
  %25 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @UART_LCR_SBC, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %6, align 1
  br label %42

32:                                               ; preds = %20
  %33 = load %struct.moschip_port*, %struct.moschip_port** %8, align 8
  %34 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @UART_LCR_SBC, align 1
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %6, align 1
  br label %42

42:                                               ; preds = %32, %23
  %43 = load i8, i8* %6, align 1
  %44 = load %struct.moschip_port*, %struct.moschip_port** %8, align 8
  %45 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %44, i32 0, i32 0
  store i8 %43, i8* %45, align 1
  %46 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %47 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %48 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MOS7720_LCR, align 4
  %51 = load %struct.moschip_port*, %struct.moschip_port** %8, align 8
  %52 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @write_mos_reg(%struct.usb_serial* %46, i32 %49, i32 %50, i8 zeroext %53)
  br label %55

55:                                               ; preds = %42, %19
  ret void
}

declare dso_local %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @write_mos_reg(%struct.usb_serial*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
