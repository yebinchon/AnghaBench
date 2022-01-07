; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_21285.c_serial21285_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_21285.c_serial21285_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i64 }
%struct.ktermios = type { i32, i32 }

@HUPCL = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@H_UBRLCR_STOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@H_UBRLCR_PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@H_UBRLCR_PAREVN = common dso_local global i32 0, align 4
@H_UBRLCR_FIFO = common dso_local global i32 0, align 4
@RXSTAT_OVERRUN = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@RXSTAT_FRAME = common dso_local global i32 0, align 4
@RXSTAT_PARITY = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@RXSTAT_DUMMY_READ = common dso_local global i32 0, align 4
@CSR_UARTCON = common dso_local global i32* null, align 8
@CSR_L_UBRLCR = common dso_local global i32* null, align 8
@CSR_M_UBRLCR = common dso_local global i32* null, align 8
@CSR_H_UBRLCR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial21285_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial21285_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load i32, i32* @HUPCL, align 4
  %13 = load i32, i32* @CRTSCTS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CMSPAR, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %19 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @CLOCAL, align 4
  %23 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %24 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @IGNBRK, align 4
  %28 = load i32, i32* @BRKINT, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %37 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 16
  %42 = call i32 @uart_get_baud_rate(%struct.uart_port* %35, %struct.ktermios* %36, %struct.ktermios* %37, i32 0, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @uart_get_divisor(%struct.uart_port* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = mul i32 16, %49
  %51 = udiv i32 %48, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %52, i32 %53, i32 %54)
  %56 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %57 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CSIZE, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %64 [
    i32 130, label %61
    i32 129, label %62
    i32 128, label %63
  ]

61:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %65

62:                                               ; preds = %3
  store i32 32, i32* %10, align 4
  br label %65

63:                                               ; preds = %3
  store i32 64, i32* %10, align 4
  br label %65

64:                                               ; preds = %3
  store i32 96, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %63, %62, %61
  %66 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %67 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CSTOPB, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @H_UBRLCR_STOPB, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %78 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PARENB, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %76
  %84 = load i32, i32* @H_UBRLCR_PARENB, align 4
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %88 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PARODD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* @H_UBRLCR_PAREVN, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %83
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @H_UBRLCR_FIFO, align 4
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 3
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %113 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %114 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @uart_update_timeout(%struct.uart_port* %112, i32 %115, i32 %116)
  %118 = load i32, i32* @RXSTAT_OVERRUN, align 4
  %119 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %120 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %122 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @INPCK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %107
  %128 = load i32, i32* @RXSTAT_FRAME, align 4
  %129 = load i32, i32* @RXSTAT_PARITY, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %127, %107
  %136 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %139 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IGNPAR, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %135
  %145 = load i32, i32* @RXSTAT_FRAME, align 4
  %146 = load i32, i32* @RXSTAT_PARITY, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %149 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %144, %135
  %153 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %154 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @IGNBRK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %152
  %160 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %161 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IGNPAR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i32, i32* @RXSTAT_OVERRUN, align 4
  %168 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %169 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %166, %159, %152
  %173 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %174 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @CREAD, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load i32, i32* @RXSTAT_DUMMY_READ, align 4
  %181 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %182 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %172
  %186 = load i32, i32* %9, align 4
  %187 = sub i32 %186, 1
  store i32 %187, i32* %9, align 4
  %188 = load i32*, i32** @CSR_UARTCON, align 8
  store i32 0, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = and i32 %189, 255
  %191 = load i32*, i32** @CSR_L_UBRLCR, align 8
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* %9, align 4
  %193 = lshr i32 %192, 8
  %194 = and i32 %193, 15
  %195 = load i32*, i32** @CSR_M_UBRLCR, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load i32*, i32** @CSR_H_UBRLCR, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32*, i32** @CSR_UARTCON, align 8
  store i32 1, i32* %198, align 4
  %199 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %200 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %199, i32 0, i32 3
  %201 = load i64, i64* %7, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
