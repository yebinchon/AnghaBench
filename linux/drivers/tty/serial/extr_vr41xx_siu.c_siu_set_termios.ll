; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@UART_LCR_WLEN5 = common dso_local global i32 0, align 4
@UART_LCR_WLEN6 = common dso_local global i32 0, align 4
@UART_LCR_WLEN7 = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UART_LCR_STOP = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_R_TRIG_10 = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @siu_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siu_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %15 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %16 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CSIZE, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %27 [
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @UART_LCR_WLEN5, align 4
  store i32 %22, i32* %9, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @UART_LCR_WLEN6, align 4
  store i32 %24, i32* %9, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @UART_LCR_WLEN7, align 4
  store i32 %26, i32* %9, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @UART_LCR_WLEN8, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %25, %23, %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CSTOPB, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @UART_LCR_STOP, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PARENB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @UART_LCR_PARITY, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PARODD, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @PARODD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @UART_LCR_EPAR, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CMSPAR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @UART_LCR_SPAR, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %68 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %69 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %70 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 16
  %74 = call i32 @uart_get_baud_rate(%struct.uart_port* %67, %struct.ktermios* %68, %struct.ktermios* %69, i32 0, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @uart_get_divisor(%struct.uart_port* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %79 = load i32, i32* @UART_FCR_R_TRIG_10, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %10, align 4
  %81 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 3
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @uart_update_timeout(%struct.uart_port* %85, i32 %86, i32 %87)
  %89 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %90 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @UART_LSR_THRE, align 4
  %93 = load i32, i32* @UART_LSR_OE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @UART_LSR_DR, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @INPCK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %66
  %104 = load i32, i32* @UART_LSR_FE, align 4
  %105 = load i32, i32* @UART_LSR_PE, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %103, %66
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @IGNBRK, align 4
  %114 = load i32, i32* @BRKINT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @PARMRK, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %112, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load i32, i32* @UART_LSR_BI, align 4
  %122 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %123 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %111
  %127 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 2
  store i32 0, i32* %128, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @IGNPAR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load i32, i32* @UART_LSR_FE, align 4
  %135 = load i32, i32* @UART_LSR_PE, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %138 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %133, %126
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @IGNBRK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %141
  %147 = load i32, i32* @UART_LSR_BI, align 4
  %148 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %149 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @IGNPAR, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %146
  %157 = load i32, i32* @UART_LSR_OE, align 4
  %158 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %159 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %146
  br label %163

163:                                              ; preds = %162, %141
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @CREAD, align 4
  %166 = and i32 %164, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* @UART_LSR_DR, align 4
  %170 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %171 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %168, %163
  %175 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %176 = load i32, i32* @UART_IER, align 4
  %177 = call i32 @siu_read(%struct.uart_port* %175, i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* @UART_IER_MSI, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %11, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %11, align 4
  %182 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i64 @UART_ENABLE_MS(%struct.uart_port* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %174
  %187 = load i32, i32* @UART_IER_MSI, align 4
  %188 = load i32, i32* %11, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %186, %174
  %191 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %192 = load i32, i32* @UART_IER, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @siu_write(%struct.uart_port* %191, i32 %192, i32 %193)
  %195 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %196 = load i32, i32* @UART_LCR, align 4
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* @UART_LCR_DLAB, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @siu_write(%struct.uart_port* %195, i32 %196, i32 %199)
  %201 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %202 = load i32, i32* @UART_DLL, align 4
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @siu_write(%struct.uart_port* %201, i32 %202, i32 %203)
  %205 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %206 = load i32, i32* @UART_DLM, align 4
  %207 = load i32, i32* %13, align 4
  %208 = lshr i32 %207, 8
  %209 = call i32 @siu_write(%struct.uart_port* %205, i32 %206, i32 %208)
  %210 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %211 = load i32, i32* @UART_LCR, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @siu_write(%struct.uart_port* %210, i32 %211, i32 %212)
  %214 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %215 = load i32, i32* @UART_FCR, align 4
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @siu_write(%struct.uart_port* %214, i32 %215, i32 %216)
  %218 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %219 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %220 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @siu_set_mctrl(%struct.uart_port* %218, i32 %221)
  %223 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %224 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %223, i32 0, i32 3
  %225 = load i64, i64* %14, align 8
  %226 = call i32 @spin_unlock_irqrestore(i32* %224, i64 %225)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @siu_read(%struct.uart_port*, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @siu_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @siu_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
