; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mtk.c_mtk8250_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mtk.c_mtk8250_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_8250_port = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@__const.mtk8250_set_termios.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 1, i16 5, i16 21, i16 85, i16 87, i16 87, i16 119, i16 127, i16 255, i16 255], align 16
@__const.mtk8250_set_termios.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 3], align 16
@UART_DIV_MAX = common dso_local global i32 0, align 4
@MTK_UART_HIGHS = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@MTK_UART_SAMPLE_COUNT = common dso_local global i32 0, align 4
@MTK_UART_SAMPLE_POINT = common dso_local global i32 0, align 4
@MTK_UART_FRACDIV_L = common dso_local global i32 0, align 4
@MTK_UART_FRACDIV_M = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@MTK_UART_FC_HW = common dso_local global i32 0, align 4
@MTK_UART_FC_SW = common dso_local global i32 0, align 4
@MTK_UART_FC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @mtk8250_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk8250_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca [11 x i16], align 16
  %8 = alloca [11 x i16], align 16
  %9 = alloca %struct.uart_8250_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %16 = bitcast [11 x i16]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([11 x i16]* @__const.mtk8250_set_termios.fraction_L_mapping to i8*), i64 22, i1 false)
  %17 = bitcast [11 x i16]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([11 x i16]* @__const.mtk8250_set_termios.fraction_M_mapping to i8*), i64 22, i1 false)
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %18)
  store %struct.uart_8250_port* %19, %struct.uart_8250_port** %9, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %22 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %23 = call i32 @serial8250_do_set_termios(%struct.uart_port* %20, %struct.ktermios* %21, %struct.ktermios* %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %26 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 16
  %31 = load i32, i32* @UART_DIV_MAX, align 4
  %32 = sdiv i32 %30, %31
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @uart_get_baud_rate(%struct.uart_port* %24, %struct.ktermios* %25, %struct.ktermios* %26, i32 %32, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ult i32 %37, 115200
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %41 = load i32, i32* @MTK_UART_HIGHS, align 4
  %42 = call i32 @serial_port_out(%struct.uart_port* %40, i32 %41, i32 0)
  %43 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @uart_get_divisor(%struct.uart_port* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  br label %56

46:                                               ; preds = %3
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = load i32, i32* @MTK_UART_HIGHS, align 4
  %49 = call i32 @serial_port_out(%struct.uart_port* %47, i32 %48, i32 3)
  %50 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul i32 256, %53
  %55 = call i32 @DIV_ROUND_UP(i32 %52, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %46, %39
  %57 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 1
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %62 = load i32, i32* @UART_LCR, align 4
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %9, align 8
  %64 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @UART_LCR_DLAB, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @serial_port_out(%struct.uart_port* %61, i32 %62, i32 %67)
  %69 = load %struct.uart_8250_port*, %struct.uart_8250_port** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @serial_dl_write(%struct.uart_8250_port* %69, i32 %70)
  %72 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %73 = load i32, i32* @UART_LCR, align 4
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %9, align 8
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @serial_port_out(%struct.uart_port* %72, i32 %73, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp uge i32 %78, 115200
  br i1 %79, label %80, label %126

80:                                               ; preds = %56
  %81 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = mul i32 %84, %85
  %87 = udiv i32 %83, %86
  %88 = sub i32 %87, 1
  store i32 %88, i32* %15, align 4
  %89 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %90 = load i32, i32* @MTK_UART_SAMPLE_COUNT, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @serial_port_out(%struct.uart_port* %89, i32 %90, i32 %91)
  %93 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %94 = load i32, i32* @MTK_UART_SAMPLE_POINT, align 4
  %95 = load i32, i32* %15, align 4
  %96 = lshr i32 %95, 1
  %97 = sub i32 %96, 1
  %98 = call i32 @serial_port_out(%struct.uart_port* %93, i32 %94, i32 %97)
  %99 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 100
  %103 = load i32, i32* %10, align 4
  %104 = udiv i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = udiv i32 %104, %105
  %107 = urem i32 %106, 100
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @DIV_ROUND_CLOSEST(i32 %108, i32 10)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %111 = load i32, i32* @MTK_UART_FRACDIV_L, align 4
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [11 x i16], [11 x i16]* %7, i64 0, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  %117 = call i32 @serial_port_out(%struct.uart_port* %110, i32 %111, i32 %116)
  %118 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %119 = load i32, i32* @MTK_UART_FRACDIV_M, align 4
  %120 = load i32, i32* %12, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [11 x i16], [11 x i16]* %8, i64 0, i64 %121
  %123 = load i16, i16* %122, align 2
  %124 = zext i16 %123 to i32
  %125 = call i32 @serial_port_out(%struct.uart_port* %118, i32 %119, i32 %124)
  br label %139

126:                                              ; preds = %56
  %127 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %128 = load i32, i32* @MTK_UART_SAMPLE_COUNT, align 4
  %129 = call i32 @serial_port_out(%struct.uart_port* %127, i32 %128, i32 0)
  %130 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %131 = load i32, i32* @MTK_UART_SAMPLE_POINT, align 4
  %132 = call i32 @serial_port_out(%struct.uart_port* %130, i32 %131, i32 255)
  %133 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %134 = load i32, i32* @MTK_UART_FRACDIV_L, align 4
  %135 = call i32 @serial_port_out(%struct.uart_port* %133, i32 %134, i32 0)
  %136 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %137 = load i32, i32* @MTK_UART_FRACDIV_M, align 4
  %138 = call i32 @serial_port_out(%struct.uart_port* %136, i32 %137, i32 0)
  br label %139

139:                                              ; preds = %126, %80
  %140 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %141 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CRTSCTS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %139
  %147 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %148 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CRTSCTS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* @MTK_UART_FC_HW, align 4
  store i32 %154, i32* %14, align 4
  br label %167

155:                                              ; preds = %146, %139
  %156 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %157 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @CRTSCTS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @MTK_UART_FC_SW, align 4
  store i32 %163, i32* %14, align 4
  br label %166

164:                                              ; preds = %155
  %165 = load i32, i32* @MTK_UART_FC_NONE, align 4
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %164, %162
  br label %167

167:                                              ; preds = %166, %153
  %168 = load %struct.uart_8250_port*, %struct.uart_8250_port** %9, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @mtk8250_set_flow_ctrl(%struct.uart_8250_port* %168, i32 %169)
  %171 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %172 = call i64 @uart_console(%struct.uart_port* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %167
  %175 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %176 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.uart_8250_port*, %struct.uart_8250_port** %9, align 8
  %179 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  store i32 %177, i32* %182, align 4
  br label %183

183:                                              ; preds = %174, %167
  %184 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %185 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %184, i32 0, i32 1
  %186 = load i64, i64* %13, align 8
  %187 = call i32 @spin_unlock_irqrestore(i32* %185, i64 %186)
  %188 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %189 = call i64 @tty_termios_baud_rate(%struct.ktermios* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %183
  %192 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %191, %183
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #2

declare dso_local i32 @serial8250_do_set_termios(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*) #2

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #2

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #2

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @serial_dl_write(%struct.uart_8250_port*, i32) #2

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #2

declare dso_local i32 @mtk8250_set_flow_ctrl(%struct.uart_8250_port*, i32) #2

declare dso_local i64 @uart_console(%struct.uart_port*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #2

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
