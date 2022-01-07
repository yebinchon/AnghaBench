; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i64 }
%struct.ktermios = type { i32, i32 }

@CMSPAR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UA_CONFIG_CHAR_LEN = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UA_CONFIG_STOP_BITS = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UA_CONFIG_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UA_CONFIG_ODD_PARITY = common dso_local global i32 0, align 4
@UA_STATUS_OVERRUN_ERR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UA_STATUS_PARITY_ERR = common dso_local global i32 0, align 4
@UA_STATUS_FRAME_ERR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UA_CONFIG = common dso_local global i64 0, align 8
@UA_HBAUD_LO = common dso_local global i64 0, align 8
@UA_HBAUD_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @digicolor_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digicolor_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @CMSPAR, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %14 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @BRKINT, align 4
  %18 = load i32, i32* @IGNBRK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %22 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %26 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %27 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 1048576
  %32 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 256
  %36 = call i32 @uart_get_baud_rate(%struct.uart_port* %25, %struct.ktermios* %26, %struct.ktermios* %27, i32 %31, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @uart_get_divisor(%struct.uart_port* %37, i32 %38)
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CSIZE, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %48 [
    i32 129, label %46
    i32 128, label %47
  ]

46:                                               ; preds = %3
  br label %52

47:                                               ; preds = %3
  br label %48

48:                                               ; preds = %3, %47
  %49 = load i32, i32* @UA_CONFIG_CHAR_LEN, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %46
  %53 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %54 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CSTOPB, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @UA_CONFIG_STOP_BITS, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %52
  %64 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %65 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PARENB, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load i32, i32* @UA_CONFIG_PARITY, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %75 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PARODD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i32, i32* @UA_CONFIG_ODD_PARITY, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %70
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i32, i32* @UA_STATUS_OVERRUN_ERR, align 4
  %87 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %90 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @INPCK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load i32, i32* @UA_STATUS_PARITY_ERR, align 4
  %97 = load i32, i32* @UA_STATUS_FRAME_ERR, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %85
  %104 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %107 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CREAD, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* @UA_STATUS_OVERRUN_ERR, align 4
  %114 = load i32, i32* @UA_STATUS_PARITY_ERR, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @UA_STATUS_FRAME_ERR, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %112, %103
  %123 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %124 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %123, i32 0, i32 3
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %128 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %129 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @uart_update_timeout(%struct.uart_port* %127, i32 %130, i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %135 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @UA_CONFIG, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writeb_relaxed(i32 %133, i64 %138)
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, 255
  %142 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %143 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @UA_HBAUD_LO, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writeb_relaxed(i32 %141, i64 %146)
  %148 = load i32, i32* %8, align 4
  %149 = lshr i32 %148, 8
  %150 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %151 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @UA_HBAUD_HI, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writeb_relaxed(i32 %149, i64 %154)
  %156 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %157 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %156, i32 0, i32 3
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
