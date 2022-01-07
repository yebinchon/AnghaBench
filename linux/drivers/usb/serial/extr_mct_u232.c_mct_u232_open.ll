; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, %struct.usb_serial* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_serial = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mct_u232_private = type { i32, i32, i8, %struct.TYPE_9__*, i32 }

@MCT_U232_SITECOM_PID = common dso_local global i64 0, align 8
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@MCT_U232_DATA_BITS_8 = common dso_local global i32 0, align 4
@MCT_U232_PARITY_NONE = common dso_local global i32 0, align 4
@MCT_U232_STOP_BITS_1 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"usb_submit_urb(read) failed pipe 0x%x err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"usb_submit_urb(read int) failed pipe 0x%x err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @mct_u232_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca %struct.mct_u232_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %14 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %13, i32 0, i32 4
  %15 = load %struct.usb_serial*, %struct.usb_serial** %14, align 8
  store %struct.usb_serial* %15, %struct.usb_serial** %6, align 8
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %17 = call %struct.mct_u232_private* @usb_get_serial_port_data(%struct.usb_serial_port* %16)
  store %struct.mct_u232_private* %17, %struct.mct_u232_private** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le16_to_cpu(i32 %23)
  %25 = load i64, i64* @MCT_U232_SITECOM_PID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %29 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %28, i32 0, i32 0
  store i32 16, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %32 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %31, i32 0, i32 4
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = icmp ne %struct.tty_struct* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = call i64 @C_BAUD(%struct.tty_struct* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @TIOCM_DTR, align 4
  %43 = load i32, i32* @TIOCM_RTS, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %46 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %50

47:                                               ; preds = %37, %30
  %48 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %49 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* @MCT_U232_DATA_BITS_8, align 4
  %52 = load i32, i32* @MCT_U232_PARITY_NONE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MCT_U232_STOP_BITS_1, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %57 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %59 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %9, align 4
  %61 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %62 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %11, align 1
  %65 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %66 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %65, i32 0, i32 4
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @mct_u232_set_modem_ctrl(%struct.usb_serial_port* %69, i32 %70)
  %72 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %73 = load i8, i8* %11, align 1
  %74 = call i32 @mct_u232_set_line_ctrl(%struct.usb_serial_port* %72, i8 zeroext %73)
  %75 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %76 = call i32 @mct_u232_get_modem_stat(%struct.usb_serial_port* %75, i8* %12)
  %77 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %78 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %77, i32 0, i32 4
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load i8, i8* %12, align 1
  %82 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %83 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %82, i32 0, i32 2
  store i8 %81, i8* %83, align 8
  %84 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %85 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %86 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %85, i32 0, i32 0
  %87 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %88 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %87, i32 0, i32 2
  %89 = load i8, i8* %88, align 8
  %90 = call i32 @mct_u232_msr_to_state(%struct.usb_serial_port* %84, i32* %86, i8 zeroext %89)
  %91 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %92 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %91, i32 0, i32 4
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %96 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %95, i32 0, i32 3
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i32 @usb_submit_urb(%struct.TYPE_9__* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %50
  %103 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %104 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %103, i32 0, i32 2
  %105 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %106 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  br label %135

112:                                              ; preds = %50
  %113 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %114 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32 @usb_submit_urb(%struct.TYPE_9__* %115, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %112
  %121 = load %struct.mct_u232_private*, %struct.mct_u232_private** %7, align 8
  %122 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %121, i32 0, i32 3
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = call i32 @usb_kill_urb(%struct.TYPE_9__* %123)
  %125 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %126 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %125, i32 0, i32 2
  %127 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %128 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132)
  br label %135

134:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %137

135:                                              ; preds = %120, %102
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %134
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.mct_u232_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mct_u232_set_modem_ctrl(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @mct_u232_set_line_ctrl(%struct.usb_serial_port*, i8 zeroext) #1

declare dso_local i32 @mct_u232_get_modem_stat(%struct.usb_serial_port*, i8*) #1

declare dso_local i32 @mct_u232_msr_to_state(%struct.usb_serial_port*, i32*, i8 zeroext) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
