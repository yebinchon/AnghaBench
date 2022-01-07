; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.ftdi_private = type { i32 }

@FTDI_SIO_DSR_MASK = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@FTDI_SIO_CTS_MASK = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@FTDI_SIO_RI_MASK = common dso_local global i8 0, align 1
@TIOCM_RI = common dso_local global i32 0, align 4
@FTDI_SIO_RLSD_MASK = common dso_local global i8 0, align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @ftdi_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.ftdi_private*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %9, align 8
  store %struct.usb_serial_port* %10, %struct.usb_serial_port** %4, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %12 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.ftdi_private* %12, %struct.ftdi_private** %5, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %15 = call i32 @ftdi_get_modem_status(%struct.usb_serial_port* %13, i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %77

20:                                               ; preds = %1
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @FTDI_SIO_DSR_MASK, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @TIOCM_DSR, align 4
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @FTDI_SIO_CTS_MASK, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @TIOCM_CTS, align 4
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %32, %44
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @FTDI_SIO_RI_MASK, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @TIOCM_RI, align 4
  br label %56

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = or i32 %45, %57
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @FTDI_SIO_RLSD_MASK, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @TIOCM_CD, align 4
  br label %69

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = or i32 %58, %70
  %72 = load %struct.ftdi_private*, %struct.ftdi_private** %5, align 8
  %73 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %69, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @ftdi_get_modem_status(%struct.usb_serial_port*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
