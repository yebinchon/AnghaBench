; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kobil_sct.c_kobil_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kobil_sct.c_kobil_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ktermios = type { i32 }
%struct.kobil_private = type { i64 }

@KOBIL_USBTWIN_PRODUCT_ID = common dso_local global i64 0, align 8
@KOBIL_KAAN_SIM_PRODUCT_ID = common dso_local global i64 0, align 8
@SUSBCR_SBR_1200 = common dso_local global i16 0, align 2
@SUSBCR_SBR_9600 = common dso_local global i16 0, align 2
@CSTOPB = common dso_local global i32 0, align 4
@SUSBCR_SPASB_2StopBits = common dso_local global i16 0, align 2
@SUSBCR_SPASB_1StopBit = common dso_local global i16 0, align 2
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@SUSBCR_SPASB_OddParity = common dso_local global i16 0, align 2
@SUSBCR_SPASB_EvenParity = common dso_local global i16 0, align 2
@SUSBCR_SPASB_NoParity = common dso_local global i16 0, align 2
@CMSPAR = common dso_local global i32 0, align 4
@SUSBCRequest_SetBaudRateParityAndStopBits = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@KOBIL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @kobil_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kobil_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.kobil_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i16 0, i16* %9, align 2
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %17 = call %struct.kobil_private* @usb_get_serial_port_data(%struct.usb_serial_port* %16)
  store %struct.kobil_private* %17, %struct.kobil_private** %7, align 8
  %18 = load %struct.kobil_private*, %struct.kobil_private** %7, align 8
  %19 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KOBIL_USBTWIN_PRODUCT_ID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.kobil_private*, %struct.kobil_private** %7, align 8
  %25 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KOBIL_KAAN_SIM_PRODUCT_ID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23, %3
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 0
  %32 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %33 = call i32 @tty_termios_copy_hw(%struct.TYPE_4__* %31, %struct.ktermios* %32)
  br label %123

34:                                               ; preds = %23
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = call i32 @tty_get_baud_rate(%struct.tty_struct* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %40 [
    i32 1200, label %38
    i32 9600, label %41
  ]

38:                                               ; preds = %34
  %39 = load i16, i16* @SUSBCR_SBR_1200, align 2
  store i16 %39, i16* %9, align 2
  br label %43

40:                                               ; preds = %34
  store i32 9600, i32* %11, align 4
  br label %41

41:                                               ; preds = %34, %40
  %42 = load i16, i16* @SUSBCR_SBR_9600, align 2
  store i16 %42, i16* %9, align 2
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @CSTOPB, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i16, i16* @SUSBCR_SPASB_2StopBits, align 2
  %50 = zext i16 %49 to i32
  br label %54

51:                                               ; preds = %43
  %52 = load i16, i16* @SUSBCR_SPASB_1StopBit, align 2
  %53 = zext i16 %52 to i32
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %53, %51 ]
  %56 = load i16, i16* %9, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %9, align 2
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @PARENB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @PARODD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i16, i16* @SUSBCR_SPASB_OddParity, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* %9, align 2
  %73 = zext i16 %72 to i32
  %74 = or i32 %73, %71
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %9, align 2
  br label %83

76:                                               ; preds = %64
  %77 = load i16, i16* @SUSBCR_SPASB_EvenParity, align 2
  %78 = zext i16 %77 to i32
  %79 = load i16, i16* %9, align 2
  %80 = zext i16 %79 to i32
  %81 = or i32 %80, %78
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %9, align 2
  br label %83

83:                                               ; preds = %76, %69
  br label %91

84:                                               ; preds = %54
  %85 = load i16, i16* @SUSBCR_SPASB_NoParity, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, i16* %9, align 2
  %88 = zext i16 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %9, align 2
  br label %91

91:                                               ; preds = %84, %83
  %92 = load i32, i32* @CMSPAR, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %95 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %99, i32 %100, i32 %101)
  %103 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %104 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %109 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @usb_sndctrlpipe(i32 %112, i32 0)
  %114 = load i32, i32* @SUSBCRequest_SetBaudRateParityAndStopBits, align 4
  %115 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %116 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @USB_DIR_OUT, align 4
  %119 = or i32 %117, %118
  %120 = load i16, i16* %9, align 2
  %121 = load i32, i32* @KOBIL_TIMEOUT, align 4
  %122 = call i32 @usb_control_msg(i32 %107, i32 %113, i32 %114, i32 %119, i16 zeroext %120, i32 0, i32* null, i32 0, i32 %121)
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %91, %29
  ret void
}

declare dso_local %struct.kobil_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @tty_termios_copy_hw(%struct.TYPE_4__*, %struct.ktermios*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i16 zeroext, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
