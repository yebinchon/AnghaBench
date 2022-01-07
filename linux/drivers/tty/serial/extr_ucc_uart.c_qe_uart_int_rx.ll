; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_qe_uart_int_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_qe_uart_int_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_qe_port = type { %struct.qe_bd*, %struct.qe_bd*, %struct.uart_port }
%struct.qe_bd = type { i32, i32, i32 }
%struct.uart_port = type { i32, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@BD_SC_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ucc-uart: no room in RX buffer\0A\00", align 1
@TTY_NORMAL = common dso_local global i32 0, align 4
@BD_SC_BR = common dso_local global i32 0, align 4
@BD_SC_FR = common dso_local global i32 0, align 4
@BD_SC_PR = common dso_local global i32 0, align 4
@BD_SC_OV = common dso_local global i32 0, align 4
@BD_SC_ID = common dso_local global i32 0, align 4
@BD_SC_WRAP = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_qe_port*)* @qe_uart_int_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_uart_int_rx(%struct.uart_qe_port* %0) #0 {
  %2 = alloca %struct.uart_qe_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca %struct.qe_bd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_qe_port* %0, %struct.uart_qe_port** %2, align 8
  %11 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %11, i32 0, i32 2
  store %struct.uart_port* %12, %struct.uart_port** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.tty_port* %16, %struct.tty_port** %7, align 8
  %17 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %17, i32 0, i32 0
  %19 = load %struct.qe_bd*, %struct.qe_bd** %18, align 8
  store %struct.qe_bd* %19, %struct.qe_bd** %8, align 8
  br label %20

20:                                               ; preds = %1, %116
  %21 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %22 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %21, i32 0, i32 0
  %23 = call i32 @in_be16(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @BD_SC_EMPTY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %117

29:                                               ; preds = %20
  %30 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %31 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %30, i32 0, i32 2
  %32 = call i32 @in_be16(i32* %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @tty_buffer_request_room(%struct.tty_port* %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %205

43:                                               ; preds = %29
  %44 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %45 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %48 = call i8* @qe2cpu_addr(i32 %46, %struct.uart_qe_port* %47)
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %84, %82, %43
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %3, align 4
  %52 = icmp sgt i32 %50, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  %56 = load i8, i8* %54, align 1
  store i8 %56, i8* %4, align 1
  %57 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @BD_SC_BR, align 4
  %68 = load i32, i32* @BD_SC_FR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @BD_SC_PR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @BD_SC_OV, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %66, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %123

77:                                               ; preds = %65, %53
  %78 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %79 = load i8, i8* %4, align 1
  %80 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %78, i8 zeroext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %49

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %204, %83
  %85 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %86 = load i8, i8* %4, align 1
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @tty_insert_flip_char(%struct.tty_port* %85, i8 zeroext %86, i32 %87)
  br label %49

89:                                               ; preds = %49
  %90 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %91 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %90, i32 0, i32 0
  %92 = load i32, i32* @BD_SC_BR, align 4
  %93 = load i32, i32* @BD_SC_FR, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @BD_SC_PR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @BD_SC_OV, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @BD_SC_ID, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @BD_SC_EMPTY, align 4
  %102 = call i32 @clrsetbits_be16(i32* %91, i32 %100, i32 %101)
  %103 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %104 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %103, i32 0, i32 0
  %105 = call i32 @in_be16(i32* %104)
  %106 = load i32, i32* @BD_SC_WRAP, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %89
  %110 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %111 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %110, i32 0, i32 1
  %112 = load %struct.qe_bd*, %struct.qe_bd** %111, align 8
  store %struct.qe_bd* %112, %struct.qe_bd** %8, align 8
  br label %116

113:                                              ; preds = %89
  %114 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %115 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %114, i32 1
  store %struct.qe_bd* %115, %struct.qe_bd** %8, align 8
  br label %116

116:                                              ; preds = %113, %109
  br label %20

117:                                              ; preds = %28
  %118 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %119 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %120 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %119, i32 0, i32 0
  store %struct.qe_bd* %118, %struct.qe_bd** %120, align 8
  %121 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %122 = call i32 @tty_flip_buffer_push(%struct.tty_port* %121)
  br label %205

123:                                              ; preds = %76
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @BD_SC_BR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %130 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %123
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @BD_SC_PR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %134
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @BD_SC_FR, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %145
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @BD_SC_OV, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %163 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %161, %156
  %168 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %169 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @BD_SC_BR, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = load i32, i32* @TTY_BREAK, align 4
  store i32 %178, i32* %10, align 4
  br label %195

179:                                              ; preds = %167
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @BD_SC_PR, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @TTY_PARITY, align 4
  store i32 %185, i32* %10, align 4
  br label %194

186:                                              ; preds = %179
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @BD_SC_FR, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @TTY_FRAME, align 4
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %191, %186
  br label %194

194:                                              ; preds = %193, %184
  br label %195

195:                                              ; preds = %194, %177
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @BD_SC_OV, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %202 = load i32, i32* @TTY_OVERRUN, align 4
  %203 = call i32 @tty_insert_flip_char(%struct.tty_port* %201, i8 zeroext 0, i32 %202)
  br label %204

204:                                              ; preds = %200, %195
  br label %84

205:                                              ; preds = %117, %38
  ret void
}

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @tty_buffer_request_room(%struct.tty_port*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i8* @qe2cpu_addr(i32, %struct.uart_qe_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i32) #1

declare dso_local i32 @clrsetbits_be16(i32*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
