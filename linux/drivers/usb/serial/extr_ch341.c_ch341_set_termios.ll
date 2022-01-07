; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ktermios = type { i32 }
%struct.ch341_private = type { i32, i32, i32, i32 }

@CH341_LCR_ENABLE_RX = common dso_local global i32 0, align 4
@CH341_LCR_ENABLE_TX = common dso_local global i32 0, align 4
@CH341_LCR_CS5 = common dso_local global i32 0, align 4
@CH341_LCR_CS6 = common dso_local global i32 0, align 4
@CH341_LCR_CS7 = common dso_local global i32 0, align 4
@CH341_LCR_CS8 = common dso_local global i32 0, align 4
@CH341_LCR_ENABLE_PAR = common dso_local global i32 0, align 4
@CH341_LCR_PAR_EVEN = common dso_local global i32 0, align 4
@CH341_LCR_MARK_SPACE = common dso_local global i32 0, align 4
@CH341_LCR_STOP_BITS_2 = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@CH341_BIT_DTR = common dso_local global i32 0, align 4
@CH341_BIT_RTS = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @ch341_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch341_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.ch341_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %13 = call %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.ch341_private* %13, %struct.ch341_private** %7, align 8
  %14 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %15 = icmp ne %struct.ktermios* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 0
  %19 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %20 = call i32 @tty_termios_hw_change(i32* %18, %struct.ktermios* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %169

23:                                               ; preds = %16, %3
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = call i32 @tty_get_baud_rate(%struct.tty_struct* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @CH341_LCR_ENABLE_RX, align 4
  %27 = load i32, i32* @CH341_LCR_ENABLE_TX, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = call i32 @C_CSIZE(%struct.tty_struct* %29)
  switch i32 %30, label %47 [
    i32 131, label %31
    i32 130, label %35
    i32 129, label %39
    i32 128, label %43
  ]

31:                                               ; preds = %23
  %32 = load i32, i32* @CH341_LCR_CS5, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %47

35:                                               ; preds = %23
  %36 = load i32, i32* @CH341_LCR_CS6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %47

39:                                               ; preds = %23
  %40 = load i32, i32* @CH341_LCR_CS7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %47

43:                                               ; preds = %23
  %44 = load i32, i32* @CH341_LCR_CS8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %23, %43, %39, %35, %31
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = call i64 @C_PARENB(%struct.tty_struct* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load i32, i32* @CH341_LCR_ENABLE_PAR, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %56 = call i64 @C_PARODD(%struct.tty_struct* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @CH341_LCR_PAR_EVEN, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %64 = call i64 @C_CMSPAR(%struct.tty_struct* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @CH341_LCR_MARK_SPACE, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %47
  %72 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %73 = call i64 @C_CSTOPB(%struct.tty_struct* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @CH341_LCR_STOP_BITS_2, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %85 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %87 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @ch341_set_baudrate_lcr(i32 %90, %struct.ch341_private* %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %82
  %97 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %98 = icmp ne %struct.ktermios* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %101 = call i32 @tty_termios_baud_rate(%struct.ktermios* %100)
  %102 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %103 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %105 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %104, i32 0, i32 0
  %106 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %107 = call i32 @tty_termios_copy_hw(i32* %105, %struct.ktermios* %106)
  br label %116

108:                                              ; preds = %96, %82
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %114 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %115, %99
  br label %117

117:                                              ; preds = %116, %79
  %118 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %119 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %118, i32 0, i32 3
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @spin_lock_irqsave(i32* %119, i64 %120)
  %122 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %123 = call i32 @C_BAUD(%struct.tty_struct* %122)
  %124 = load i32, i32* @B0, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %117
  %127 = load i32, i32* @CH341_BIT_DTR, align 4
  %128 = load i32, i32* @CH341_BIT_RTS, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %132 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %155

135:                                              ; preds = %117
  %136 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %137 = icmp ne %struct.ktermios* %136, null
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %140 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @CBAUD, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @B0, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %138
  %147 = load i32, i32* @CH341_BIT_DTR, align 4
  %148 = load i32, i32* @CH341_BIT_RTS, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %151 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %146, %138, %135
  br label %155

155:                                              ; preds = %154, %126
  %156 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %157 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %156, i32 0, i32 3
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %161 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %166 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ch341_set_handshake(i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %155, %22
  ret void
}

declare dso_local %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @tty_termios_hw_change(i32*, %struct.ktermios*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @C_CSIZE(%struct.tty_struct*) #1

declare dso_local i64 @C_PARENB(%struct.tty_struct*) #1

declare dso_local i64 @C_PARODD(%struct.tty_struct*) #1

declare dso_local i64 @C_CMSPAR(%struct.tty_struct*) #1

declare dso_local i64 @C_CSTOPB(%struct.tty_struct*) #1

declare dso_local i32 @ch341_set_baudrate_lcr(i32, %struct.ch341_private*, i32) #1

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_copy_hw(i32*, %struct.ktermios*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ch341_set_handshake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
