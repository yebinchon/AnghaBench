; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.ktermios = type { i32 }
%struct.men_z135_port = type { i32 }

@MEN_Z135_CONF_REG = common dso_local global i64 0, align 8
@CSIZE = common dso_local global i32 0, align 4
@MEN_Z135_WL5 = common dso_local global i32 0, align 4
@MEN_Z135_WL6 = common dso_local global i32 0, align 4
@MEN_Z135_WL7 = common dso_local global i32 0, align 4
@MEN_Z135_WL8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@MEN_Z135_NSTB2 = common dso_local global i32 0, align 4
@MEN_Z135_STB_SHIFT = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@MEN_Z135_PAR_ENA = common dso_local global i32 0, align 4
@MEN_Z135_PEN_SHIFT = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@MEN_Z135_PTY_ODD = common dso_local global i32 0, align 4
@MEN_Z135_PTY_SHIFT = common dso_local global i32 0, align 4
@MEN_Z135_PTY_EVN = common dso_local global i32 0, align 4
@MEN_Z135_PAR_DIS = common dso_local global i32 0, align 4
@MEN_Z135_IER_MSIEN = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@MEN_Z135_MCR_RCFC = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@MEN_Z135_LCR_SHIFT = common dso_local global i32 0, align 4
@MEN_Z135_UART_FREQ = common dso_local global i64 0, align 8
@MEN_Z135_BASECLK = common dso_local global i32 0, align 4
@MEN_Z135_BAUD_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @men_z135_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @men_z135_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.men_z135_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = call %struct.men_z135_port* @to_men_z135(%struct.uart_port* %13)
  store %struct.men_z135_port* %14, %struct.men_z135_port** %7, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MEN_Z135_CONF_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @LCR(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %24 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CSIZE, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %44 [
    i32 131, label %28
    i32 130, label %32
    i32 129, label %36
    i32 128, label %40
  ]

28:                                               ; preds = %3
  %29 = load i32, i32* @MEN_Z135_WL5, align 4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %44

32:                                               ; preds = %3
  %33 = load i32, i32* @MEN_Z135_WL6, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load i32, i32* @MEN_Z135_WL7, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  br label %44

40:                                               ; preds = %3
  %41 = load i32, i32* @MEN_Z135_WL8, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %3, %40, %36, %32, %28
  %45 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %46 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CSTOPB, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @MEN_Z135_NSTB2, align 4
  %53 = load i32, i32* @MEN_Z135_STB_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %59 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PARENB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load i32, i32* @MEN_Z135_PAR_ENA, align 4
  %66 = load i32, i32* @MEN_Z135_PEN_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %71 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PARODD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = load i32, i32* @MEN_Z135_PTY_ODD, align 4
  %78 = load i32, i32* @MEN_Z135_PTY_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %88

82:                                               ; preds = %64
  %83 = load i32, i32* @MEN_Z135_PTY_EVN, align 4
  %84 = load i32, i32* @MEN_Z135_PTY_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %82, %76
  br label %95

89:                                               ; preds = %57
  %90 = load i32, i32* @MEN_Z135_PAR_DIS, align 4
  %91 = load i32, i32* @MEN_Z135_PEN_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %89, %88
  %96 = load i32, i32* @MEN_Z135_IER_MSIEN, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %100 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CRTSCTS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %95
  %106 = load i32, i32* @MEN_Z135_MCR_RCFC, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load %struct.men_z135_port*, %struct.men_z135_port** %7, align 8
  %110 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* @CLOCAL, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %114 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %124

117:                                              ; preds = %95
  %118 = load i32, i32* @MEN_Z135_MCR_RCFC, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.men_z135_port*, %struct.men_z135_port** %7, align 8
  %123 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %105
  %125 = load i32, i32* @CMSPAR, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %128 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @MEN_Z135_LCR_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %138 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @MEN_Z135_CONF_REG, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @iowrite32(i32 %136, i64 %141)
  %143 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %144 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MEN_Z135_UART_FREQ, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @ioread32(i64 %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %124
  %152 = load i32, i32* @MEN_Z135_BASECLK, align 4
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %151, %124
  %154 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %155 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %156 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sdiv i32 %157, 16
  %159 = call i32 @uart_get_baud_rate(%struct.uart_port* %154, %struct.ktermios* %155, %struct.ktermios* %156, i32 0, i32 %158)
  store i32 %159, i32* %8, align 4
  %160 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %161 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %160, i32 0, i32 0
  %162 = call i32 @spin_lock_irq(i32* %161)
  %163 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %164 = call i64 @tty_termios_baud_rate(%struct.ktermios* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %153
  %167 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %166, %153
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %8, align 4
  %174 = mul i32 4, %173
  %175 = udiv i32 %172, %174
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %178 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @MEN_Z135_BAUD_REG, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @iowrite32(i32 %176, i64 %181)
  %183 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %184 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %185 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @uart_update_timeout(%struct.uart_port* %183, i32 %186, i32 %187)
  %189 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %190 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %189, i32 0, i32 0
  %191 = call i32 @spin_unlock_irq(i32* %190)
  ret void
}

declare dso_local %struct.men_z135_port* @to_men_z135(%struct.uart_port*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @LCR(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
