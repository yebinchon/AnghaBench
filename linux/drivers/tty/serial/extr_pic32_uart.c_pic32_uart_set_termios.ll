; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.ktermios = type { i32 }
%struct.pic32_sport = type { i64 }

@CSTOPB = common dso_local global i32 0, align 4
@PIC32_UART_MODE = common dso_local global i32 0, align 4
@PIC32_UART_MODE_STSEL = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PIC32_UART_MODE_PDSEL1 = common dso_local global i32 0, align 4
@PIC32_UART_MODE_PDSEL0 = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@PIC32_UART_MODE_UEN1 = common dso_local global i32 0, align 4
@PIC32_UART_MODE_UEN0 = common dso_local global i32 0, align 4
@PIC32_UART_MODE_RTSMD = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PIC32_UART_BRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @pic32_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.pic32_sport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = call %struct.pic32_sport* @to_pic32_sport(%struct.uart_port* %11)
  store %struct.pic32_sport* %12, %struct.pic32_sport** %7, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 1
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = call i32 @pic32_uart_dsbl_and_mask(%struct.uart_port* %17)
  %19 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CSTOPB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %27 = load i32, i32* @PIC32_UART_MODE, align 4
  %28 = call i32 @PIC32_SET(i32 %27)
  %29 = load i32, i32* @PIC32_UART_MODE_STSEL, align 4
  %30 = call i32 @pic32_uart_writel(%struct.pic32_sport* %26, i32 %28, i32 %29)
  br label %37

31:                                               ; preds = %3
  %32 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %33 = load i32, i32* @PIC32_UART_MODE, align 4
  %34 = call i32 @PIC32_CLR(i32 %33)
  %35 = load i32, i32* @PIC32_UART_MODE_STSEL, align 4
  %36 = call i32 @pic32_uart_writel(%struct.pic32_sport* %32, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %39 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PARENB, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %37
  %45 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %46 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PARODD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %53 = load i32, i32* @PIC32_UART_MODE, align 4
  %54 = call i32 @PIC32_SET(i32 %53)
  %55 = load i32, i32* @PIC32_UART_MODE_PDSEL1, align 4
  %56 = call i32 @pic32_uart_writel(%struct.pic32_sport* %52, i32 %54, i32 %55)
  %57 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %58 = load i32, i32* @PIC32_UART_MODE, align 4
  %59 = call i32 @PIC32_CLR(i32 %58)
  %60 = load i32, i32* @PIC32_UART_MODE_PDSEL0, align 4
  %61 = call i32 @pic32_uart_writel(%struct.pic32_sport* %57, i32 %59, i32 %60)
  br label %73

62:                                               ; preds = %44
  %63 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %64 = load i32, i32* @PIC32_UART_MODE, align 4
  %65 = call i32 @PIC32_SET(i32 %64)
  %66 = load i32, i32* @PIC32_UART_MODE_PDSEL0, align 4
  %67 = call i32 @pic32_uart_writel(%struct.pic32_sport* %63, i32 %65, i32 %66)
  %68 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %69 = load i32, i32* @PIC32_UART_MODE, align 4
  %70 = call i32 @PIC32_CLR(i32 %69)
  %71 = load i32, i32* @PIC32_UART_MODE_PDSEL1, align 4
  %72 = call i32 @pic32_uart_writel(%struct.pic32_sport* %68, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %62, %51
  br label %82

74:                                               ; preds = %37
  %75 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %76 = load i32, i32* @PIC32_UART_MODE, align 4
  %77 = call i32 @PIC32_CLR(i32 %76)
  %78 = load i32, i32* @PIC32_UART_MODE_PDSEL1, align 4
  %79 = load i32, i32* @PIC32_UART_MODE_PDSEL0, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @pic32_uart_writel(%struct.pic32_sport* %75, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %74, %73
  %83 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %84 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CRTSCTS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %82
  %90 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %91 = getelementptr inbounds %struct.pic32_sport, %struct.pic32_sport* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %96 = load i32, i32* @PIC32_UART_MODE, align 4
  %97 = call i32 @PIC32_SET(i32 %96)
  %98 = load i32, i32* @PIC32_UART_MODE_UEN1, align 4
  %99 = call i32 @pic32_uart_writel(%struct.pic32_sport* %95, i32 %97, i32 %98)
  %100 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %101 = load i32, i32* @PIC32_UART_MODE, align 4
  %102 = call i32 @PIC32_CLR(i32 %101)
  %103 = load i32, i32* @PIC32_UART_MODE_UEN0, align 4
  %104 = call i32 @pic32_uart_writel(%struct.pic32_sport* %100, i32 %102, i32 %103)
  %105 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %106 = load i32, i32* @PIC32_UART_MODE, align 4
  %107 = call i32 @PIC32_CLR(i32 %106)
  %108 = load i32, i32* @PIC32_UART_MODE_RTSMD, align 4
  %109 = call i32 @pic32_uart_writel(%struct.pic32_sport* %105, i32 %107, i32 %108)
  br label %126

110:                                              ; preds = %89, %82
  %111 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %112 = load i32, i32* @PIC32_UART_MODE, align 4
  %113 = call i32 @PIC32_CLR(i32 %112)
  %114 = load i32, i32* @PIC32_UART_MODE_UEN1, align 4
  %115 = call i32 @pic32_uart_writel(%struct.pic32_sport* %111, i32 %113, i32 %114)
  %116 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %117 = load i32, i32* @PIC32_UART_MODE, align 4
  %118 = call i32 @PIC32_CLR(i32 %117)
  %119 = load i32, i32* @PIC32_UART_MODE_UEN0, align 4
  %120 = call i32 @pic32_uart_writel(%struct.pic32_sport* %116, i32 %118, i32 %119)
  %121 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %122 = load i32, i32* @PIC32_UART_MODE, align 4
  %123 = call i32 @PIC32_CLR(i32 %122)
  %124 = load i32, i32* @PIC32_UART_MODE_RTSMD, align 4
  %125 = call i32 @pic32_uart_writel(%struct.pic32_sport* %121, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %110, %94
  %127 = load i32, i32* @CS8, align 4
  %128 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %129 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @CMSPAR, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %135 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %139 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %140 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %141 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %142 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %143, 16
  %145 = call i32 @uart_get_baud_rate(%struct.uart_port* %138, %struct.ktermios* %139, %struct.ktermios* %140, i32 0, i32 %144)
  store i32 %145, i32* %8, align 4
  %146 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @uart_get_divisor(%struct.uart_port* %146, i32 %147)
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  %150 = load %struct.pic32_sport*, %struct.pic32_sport** %7, align 8
  %151 = load i32, i32* @PIC32_UART_BRG, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @pic32_uart_writel(%struct.pic32_sport* %150, i32 %151, i32 %152)
  %154 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %155 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %156 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @uart_update_timeout(%struct.uart_port* %154, i32 %157, i32 %158)
  %160 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %161 = call i64 @tty_termios_baud_rate(%struct.ktermios* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %126
  %164 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %126
  %169 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %170 = call i32 @pic32_uart_en_and_unmask(%struct.uart_port* %169)
  %171 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %172 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %171, i32 0, i32 1
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* %172, i64 %173)
  ret void
}

declare dso_local %struct.pic32_sport* @to_pic32_sport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pic32_uart_dsbl_and_mask(%struct.uart_port*) #1

declare dso_local i32 @pic32_uart_writel(%struct.pic32_sport*, i32, i32) #1

declare dso_local i32 @PIC32_SET(i32) #1

declare dso_local i32 @PIC32_CLR(i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @pic32_uart_en_and_unmask(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
