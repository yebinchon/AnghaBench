; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pxa_port = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@UART_IER_RTOIE = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pxa_port*, i32*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_pxa_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_pxa_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_pxa_port* %0, %struct.uart_pxa_port** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 256, i32* %7, align 4
  br label %8

8:                                                ; preds = %177, %2
  %9 = load i32, i32* @UART_IER_RTOIE, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %16 = load i32, i32* @UART_IER, align 4
  %17 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @serial_out(%struct.uart_pxa_port* %15, i32 %16, i32 %19)
  %21 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %22 = load i32, i32* @UART_RX, align 4
  %23 = call i8* @serial_in(%struct.uart_pxa_port* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UART_LSR_BI, align 4
  %35 = load i32, i32* @UART_LSR_PE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @UART_LSR_FE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UART_LSR_OE, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %33, %40
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %145

44:                                               ; preds = %8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UART_LSR_BI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i32, i32* @UART_LSR_FE, align 4
  %52 = load i32, i32* @UART_LSR_PE, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %64, i32 0, i32 2
  %66 = call i64 @uart_handle_break(%struct.TYPE_10__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %161

69:                                               ; preds = %50
  br label %98

70:                                               ; preds = %44
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @UART_LSR_PE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %78 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %97

83:                                               ; preds = %70
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @UART_LSR_FE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %91 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %83
  br label %97

97:                                               ; preds = %96, %76
  br label %98

98:                                               ; preds = %97, %69
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @UART_LSR_OE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %106 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %98
  %112 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %113 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %115
  store i32 %118, i32* %116, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @UART_LSR_BI, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i32, i32* @TTY_BREAK, align 4
  store i32 %125, i32* %6, align 4
  br label %144

126:                                              ; preds = %111
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @UART_LSR_PE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @TTY_PARITY, align 4
  store i32 %133, i32* %6, align 4
  br label %143

134:                                              ; preds = %126
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @UART_LSR_FE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @TTY_FRAME, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %140, %134
  br label %143

143:                                              ; preds = %142, %132
  br label %144

144:                                              ; preds = %143, %124
  br label %145

145:                                              ; preds = %144, %8
  %146 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %147 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %146, i32 0, i32 2
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @uart_handle_sysrq_char(%struct.TYPE_10__* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %161

152:                                              ; preds = %145
  %153 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %154 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %153, i32 0, i32 2
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @UART_LSR_OE, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @uart_insert_char(%struct.TYPE_10__* %154, i32 %156, i32 %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %152, %151, %68
  %162 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %163 = load i32, i32* @UART_LSR, align 4
  %164 = call i8* @serial_in(%struct.uart_pxa_port* %162, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32*, i32** %4, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %161
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @UART_LSR_DR, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %7, align 4
  %176 = icmp sgt i32 %174, 0
  br label %177

177:                                              ; preds = %173, %167
  %178 = phi i1 [ false, %167 ], [ %176, %173 ]
  br i1 %178, label %8, label %179

179:                                              ; preds = %177
  %180 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %181 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = call i32 @tty_flip_buffer_push(i32* %184)
  %186 = load i32, i32* @UART_IER_RTOIE, align 4
  %187 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %188 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %192 = load i32, i32* @UART_IER, align 4
  %193 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %194 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @serial_out(%struct.uart_pxa_port* %191, i32 %192, i32 %195)
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_pxa_port*, i32, i32) #1

declare dso_local i8* @serial_in(%struct.uart_pxa_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_10__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
