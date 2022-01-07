; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_txx9_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@TXX9_SIRFIFO = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@TXX9_SIDISR_RFDN_MASK = common dso_local global i32 0, align 4
@TXX9_SIDISR_UBRK = common dso_local global i32 0, align 4
@TXX9_SIDISR_UPER = common dso_local global i32 0, align 4
@TXX9_SIDISR_UFER = common dso_local global i32 0, align 4
@TXX9_SIDISR_UOER = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TXX9_SIDISR = common dso_local global i32 0, align 4
@TXX9_SIDISR_UVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_txx9_port*, i32*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_txx9_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_txx9_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.uart_txx9_port* %0, %struct.uart_txx9_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  store i32 256, i32* %7, align 4
  br label %12

12:                                               ; preds = %170, %2
  %13 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %14 = load i32, i32* @TXX9_SIRFIFO, align 4
  %15 = call i8* @sio_in(%struct.uart_txx9_port* %13, i32 %14)
  %16 = ptrtoint i8* %15 to i8
  store i8 %16, i8* %5, align 1
  %17 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %17, i8* %8, align 1
  %18 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TXX9_SIDISR_RFDN_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %33 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %31, %38
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %137

42:                                               ; preds = %12
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %49 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %55 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %61 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %60, i32 0, i32 0
  %62 = call i64 @uart_handle_break(%struct.TYPE_8__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %152

65:                                               ; preds = %47
  br label %92

66:                                               ; preds = %42
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %73 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %91

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %85 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %78
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %65
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %99 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @TXX9_SIDISR_RFDN_MASK, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %97, %92
  %108 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i8, i8* @TTY_BREAK, align 1
  store i8 %119, i8* %8, align 1
  br label %136

120:                                              ; preds = %107
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i8, i8* @TTY_PARITY, align 1
  store i8 %126, i8* %8, align 1
  br label %135

127:                                              ; preds = %120
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i8, i8* @TTY_FRAME, align 1
  store i8 %133, i8* %8, align 1
  br label %134

134:                                              ; preds = %132, %127
  br label %135

135:                                              ; preds = %134, %125
  br label %136

136:                                              ; preds = %135, %118
  br label %137

137:                                              ; preds = %136, %12
  %138 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %139 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %138, i32 0, i32 0
  %140 = load i8, i8* %5, align 1
  %141 = call i64 @uart_handle_sysrq_char(%struct.TYPE_8__* %139, i8 zeroext %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %152

144:                                              ; preds = %137
  %145 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %146 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %145, i32 0, i32 0
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %149 = load i8, i8* %5, align 1
  %150 = load i8, i8* %8, align 1
  %151 = call i32 @uart_insert_char(%struct.TYPE_8__* %146, i32 %147, i32 %148, i8 zeroext %149, i8 signext %150)
  br label %152

152:                                              ; preds = %144, %143, %64
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %155 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %158 = load i32, i32* @TXX9_SIDISR, align 4
  %159 = call i8* @sio_in(%struct.uart_txx9_port* %157, i32 %158)
  %160 = ptrtoint i8* %159 to i32
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %152
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @TXX9_SIDISR_UVALID, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %7, align 4
  %169 = icmp sgt i32 %167, 0
  br label %170

170:                                              ; preds = %166, %161
  %171 = phi i1 [ false, %161 ], [ %169, %166 ]
  br i1 %171, label %12, label %172

172:                                              ; preds = %170
  %173 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %174 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = call i32 @spin_unlock(i32* %175)
  %177 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %178 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = call i32 @tty_flip_buffer_push(i32* %181)
  %183 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %184 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = call i32 @spin_lock(i32* %185)
  %187 = load i32, i32* %6, align 4
  %188 = load i32*, i32** %4, align 8
  store i32 %187, i32* %188, align 4
  ret void
}

declare dso_local i8* @sio_in(%struct.uart_txx9_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_8__*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_8__*, i32, i32, i8 zeroext, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
