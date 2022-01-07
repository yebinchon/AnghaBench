; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_update_line_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_update_line_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.usb_serial* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.usb_serial = type { i32 }
%struct.pl2303_serial_private = type { i32 }
%struct.pl2303_private = type { i32, i32 }
%struct.tty_struct = type { i32 }

@UART_STATE_INDEX = common dso_local global i32 0, align 4
@PL2303_QUIRK_UART_STATE_IDX0 = common dso_local global i32 0, align 4
@UART_BREAK_ERROR = common dso_local global i32 0, align 4
@UART_STATE_MSR_MASK = common dso_local global i32 0, align 4
@UART_CTS = common dso_local global i32 0, align 4
@UART_DSR = common dso_local global i32 0, align 4
@UART_RING = common dso_local global i32 0, align 4
@UART_DCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i8*, i32)* @pl2303_update_line_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl2303_update_line_status(%struct.usb_serial_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.pl2303_serial_private*, align 8
  %9 = alloca %struct.pl2303_private*, align 8
  %10 = alloca %struct.tty_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 2
  %17 = load %struct.usb_serial*, %struct.usb_serial** %16, align 8
  store %struct.usb_serial* %17, %struct.usb_serial** %7, align 8
  %18 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %19 = call %struct.pl2303_serial_private* @usb_get_serial_data(%struct.usb_serial* %18)
  store %struct.pl2303_serial_private* %19, %struct.pl2303_serial_private** %8, align 8
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %21 = call %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port* %20)
  store %struct.pl2303_private* %21, %struct.pl2303_private** %9, align 8
  %22 = load i32, i32* @UART_STATE_INDEX, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.pl2303_serial_private*, %struct.pl2303_serial_private** %8, align 8
  %24 = getelementptr inbounds %struct.pl2303_serial_private, %struct.pl2303_serial_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PL2303_QUIRK_UART_STATE_IDX0, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %12, align 4
  %33 = add i32 %32, 1
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %135

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %44 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %43, i32 0, i32 1
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %48 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = xor i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %54 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %56 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %55, i32 0, i32 1
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @UART_BREAK_ERROR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %36
  %64 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %65 = call i32 @usb_serial_handle_break(%struct.usb_serial_port* %64)
  br label %66

66:                                               ; preds = %63, %36
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @UART_STATE_MSR_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %135

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @UART_CTS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %78 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @UART_DSR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %89 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @UART_RING, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %100 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %93
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @UART_DCD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %111 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %116 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %115, i32 0, i32 0
  %117 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__* %116)
  store %struct.tty_struct* %117, %struct.tty_struct** %10, align 8
  %118 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %119 = icmp ne %struct.tty_struct* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %109
  %121 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %122 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @UART_DCD, align 4
  %125 = and i32 %123, %124
  %126 = call i32 @usb_serial_handle_dcd_change(%struct.usb_serial_port* %121, %struct.tty_struct* %122, i32 %125)
  %127 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %128 = call i32 @tty_kref_put(%struct.tty_struct* %127)
  br label %129

129:                                              ; preds = %120, %109
  br label %130

130:                                              ; preds = %129, %104
  %131 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %132 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = call i32 @wake_up_interruptible(i32* %133)
  br label %135

135:                                              ; preds = %35, %130, %66
  ret void
}

declare dso_local %struct.pl2303_serial_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_serial_handle_break(%struct.usb_serial_port*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_serial_handle_dcd_change(%struct.usb_serial_port*, %struct.tty_struct*, i32) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
