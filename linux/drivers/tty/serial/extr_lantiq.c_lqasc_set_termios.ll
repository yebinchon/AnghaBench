; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i64 }
%struct.ktermios = type { i32, i32 }
%struct.ltq_uart_port = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@ASCCON_M_7ASYNC = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@ASCCON_M_8ASYNC = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@ASCCON_STP = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@ASCCON_ODD = common dso_local global i32 0, align 4
@ASCSTATE_ROE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@ASCSTATE_FE = common dso_local global i32 0, align 4
@ASCSTATE_PE = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_DUMMY_UER_RX = common dso_local global i32 0, align 4
@ASCCON_FEN = common dso_local global i32 0, align 4
@ASCCON_TOEN = common dso_local global i32 0, align 4
@ASCCON_ROEN = common dso_local global i32 0, align 4
@LTQ_ASC_CON = common dso_local global i64 0, align 8
@ASCCON_R = common dso_local global i32 0, align 4
@ASCCON_FDE = common dso_local global i32 0, align 4
@ASCCON_BRS = common dso_local global i32 0, align 4
@LTQ_ASC_BG = common dso_local global i64 0, align 8
@ASCWHBSTATE_SETREN = common dso_local global i32 0, align 4
@LTQ_ASC_WHBSTATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @lqasc_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lqasc_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ltq_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = call %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port* %14)
  store %struct.ltq_uart_port* %15, %struct.ltq_uart_port** %13, align 8
  %16 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %17 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CSIZE, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %28 [
    i32 128, label %25
    i32 130, label %27
    i32 129, label %27
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* @ASCCON_M_7ASYNC, align 4
  store i32 %26, i32* %11, align 4
  br label %41

27:                                               ; preds = %3, %3
  br label %28

28:                                               ; preds = %3, %27
  %29 = load i32, i32* @CSIZE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @CS8, align 4
  %36 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %37 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @ASCCON_M_8ASYNC, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %28, %25
  %42 = load i32, i32* @CMSPAR, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @CSTOPB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @ASCCON_STP, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PARENB, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PARODD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ASCCON_ODD, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @ASCCON_ODD, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32, i32* @ASCSTATE_ROE, align 4
  %76 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @INPCK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load i32, i32* @ASCSTATE_FE, align 4
  %84 = load i32, i32* @ASCSTATE_PE, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %82, %74
  %91 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @IGNPAR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load i32, i32* @ASCSTATE_FE, align 4
  %99 = load i32, i32* @ASCSTATE_PE, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %97, %90
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @IGNBRK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @IGNPAR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i32, i32* @ASCSTATE_ROE, align 4
  %117 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %118 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %110
  br label %122

122:                                              ; preds = %121, %105
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @CREAD, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32, i32* @UART_DUMMY_UER_RX, align 4
  %129 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %130 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %122
  %134 = load i32, i32* @ASCCON_FEN, align 4
  %135 = load i32, i32* @ASCCON_TOEN, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @ASCCON_ROEN, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %11, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %11, align 4
  %141 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %13, align 8
  %142 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %141, i32 0, i32 0
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @spin_lock_irqsave(i32* %142, i64 %143)
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %147 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @LTQ_ASC_CON, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @asc_update_bits(i32 0, i32 %145, i64 %150)
  %152 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %153 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %154 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %155 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %157, 16
  %159 = call i32 @uart_get_baud_rate(%struct.uart_port* %152, %struct.ktermios* %153, %struct.ktermios* %154, i32 0, i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @uart_get_divisor(%struct.uart_port* %160, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = udiv i32 %163, 2
  %165 = sub i32 %164, 1
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* @ASCCON_R, align 4
  %167 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %168 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @LTQ_ASC_CON, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @asc_update_bits(i32 %166, i32 0, i64 %171)
  %173 = load i32, i32* @ASCCON_FDE, align 4
  %174 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %175 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @LTQ_ASC_CON, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @asc_update_bits(i32 %173, i32 0, i64 %178)
  %180 = load i32, i32* @ASCCON_BRS, align 4
  %181 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %182 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @LTQ_ASC_CON, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @asc_update_bits(i32 %180, i32 0, i64 %185)
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %189 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @LTQ_ASC_BG, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @__raw_writel(i32 %187, i64 %192)
  %194 = load i32, i32* @ASCCON_R, align 4
  %195 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %196 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @LTQ_ASC_CON, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @asc_update_bits(i32 0, i32 %194, i64 %199)
  %201 = load i32, i32* @ASCWHBSTATE_SETREN, align 4
  %202 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %203 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @LTQ_ASC_WHBSTATE, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @__raw_writel(i32 %201, i64 %206)
  %208 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %13, align 8
  %209 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %208, i32 0, i32 0
  %210 = load i64, i64* %12, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  %212 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %213 = call i64 @tty_termios_baud_rate(%struct.ktermios* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %133
  %216 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %215, %133
  %221 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @uart_update_timeout(%struct.uart_port* %221, i32 %222, i32 %223)
  ret void
}

declare dso_local %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asc_update_bits(i32, i32, i64) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
