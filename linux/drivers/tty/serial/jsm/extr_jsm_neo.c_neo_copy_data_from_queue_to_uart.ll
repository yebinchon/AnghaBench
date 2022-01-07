; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_copy_data_from_queue_to_uart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_copy_data_from_queue_to_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CH_STOP = common dso_local global i32 0, align 4
@CH_BREAK_SENDING = common dso_local global i32 0, align 4
@CH_FIFO_ENABLED = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Tx data: %x\0A\00", align 1
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@CH_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@CH_TX_FIFO_LWM = common dso_local global i32 0, align 4
@UART_17158_TX_FIFOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_copy_data_from_queue_to_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_copy_data_from_queue_to_uart(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.circ_buf*, align 8
  %10 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %12 = icmp ne %struct.jsm_channel* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %231

14:                                               ; preds = %1
  %15 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %16 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.circ_buf* %19, %struct.circ_buf** %9, align 8
  %20 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %21 = call i64 @uart_circ_empty(%struct.circ_buf* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %231

24:                                               ; preds = %14
  %25 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %26 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CH_STOP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %33 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CH_BREAK_SENDING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %24
  br label %231

39:                                               ; preds = %31
  %40 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %41 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CH_FIFO_ENABLED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %112, label %46

46:                                               ; preds = %39
  %47 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %48 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %47, i32 0, i32 5
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = call i32 @readb(i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %54 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %58 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @UART_LSR_THRE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %111

63:                                               ; preds = %46
  %64 = load i32, i32* @UART_LSR_THRE, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %67 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %74 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %79 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %78, i32 0, i32 5
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = call i32 @writeb(i32 %77, i32* %81)
  %83 = load i32, i32* @WRITE, align 4
  %84 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %85 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %84, i32 0, i32 6
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %89 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %92 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @jsm_dbg(i32 %83, i32* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %98 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  %101 = load i32, i32* @UART_XMIT_SIZE, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = and i64 %100, %103
  %105 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %106 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %108 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %63, %46
  br label %231

112:                                              ; preds = %39
  %113 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %114 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %117 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %112
  br label %231

122:                                              ; preds = %112
  %123 = load i32, i32* @UART_17158_TX_FIFOSIZE, align 4
  %124 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %125 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %123, %126
  store i32 %127, i32* %5, align 4
  %128 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %129 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @UART_XMIT_SIZE, align 4
  %132 = sub nsw i32 %131, 1
  %133 = and i32 %130, %132
  store i32 %133, i32* %3, align 4
  %134 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %135 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @UART_XMIT_SIZE, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = and i64 %136, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %4, align 4
  %142 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %143 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @min(i32 %144, i32 %145)
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %168, %122
  %148 = load i32, i32* %5, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %200

150:                                              ; preds = %147
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* %3, align 4
  br label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @UART_XMIT_SIZE, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = load i32, i32* %4, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @min(i32 %162, i32 %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp sle i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %200

168:                                              ; preds = %158
  %169 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %170 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %169, i32 0, i32 5
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %174 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @memcpy_toio(i32* %172, i32* %178, i32 %179)
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* @UART_XMIT_SIZE, align 4
  %185 = sub nsw i32 %184, 1
  %186 = and i32 %183, %185
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %5, align 4
  %189 = sub nsw i32 %188, %187
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %193 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, %191
  store i64 %195, i64* %193, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %8, align 8
  %199 = add nsw i64 %198, %197
  store i64 %199, i64* %8, align 8
  br label %147

200:                                              ; preds = %167, %147
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @UART_XMIT_SIZE, align 4
  %203 = sub nsw i32 %202, 1
  %204 = and i32 %201, %203
  %205 = sext i32 %204 to i64
  %206 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %207 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* %8, align 8
  %209 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %210 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = icmp sge i64 %208, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %200
  %215 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %216 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %217 = or i32 %215, %216
  %218 = xor i32 %217, -1
  %219 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %220 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %214, %200
  %224 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %225 = call i64 @uart_circ_empty(%struct.circ_buf* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %229 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %228, i32 0, i32 3
  %230 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %229)
  br label %231

231:                                              ; preds = %13, %23, %38, %111, %121, %227, %223
  ret void
}

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @jsm_dbg(i32, i32*, i8*, i32) #1

declare dso_local i32 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy_toio(i32*, i32*, i32) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
