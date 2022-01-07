; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsab.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsab.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32 }
%struct.uart_sunsab_port = type { %struct.TYPE_17__, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { %struct.tty_port }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32 }
%union.sab82532_irq_status = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@SAB82532_ISR0_RPF = common dso_local global i32 0, align 4
@SAB82532_RECV_FIFO_SIZE = common dso_local global i32 0, align 4
@SAB82532_ISR0_TCD = common dso_local global i32 0, align 4
@SAB82532_ISR0_TIME = common dso_local global i32 0, align 4
@SAB82532_CMDR_RFRD = common dso_local global i32 0, align 4
@SAB82532_ISR0_RFO = common dso_local global i32 0, align 4
@SAB82532_CMDR_RMC = common dso_local global i32 0, align 4
@SAB82532_ISR1_BRK = common dso_local global i32 0, align 4
@SAB82532_ISR0_PERR = common dso_local global i32 0, align 4
@SAB82532_ISR0_FERR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_port* (%struct.uart_sunsab_port*, %union.sab82532_irq_status*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_port* @receive_chars(%struct.uart_sunsab_port* %0, %union.sab82532_irq_status* %1) #0 {
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca %struct.uart_sunsab_port*, align 8
  %5 = alloca %union.sab82532_irq_status*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.uart_sunsab_port* %0, %struct.uart_sunsab_port** %4, align 8
  store %union.sab82532_irq_status* %1, %union.sab82532_irq_status** %5, align 8
  store %struct.tty_port* null, %struct.tty_port** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %15 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %21 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store %struct.tty_port* %24, %struct.tty_port** %6, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %27 = bitcast %union.sab82532_irq_status* %26 to %struct.TYPE_16__*
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SAB82532_ISR0_RPF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @SAB82532_RECV_FIFO_SIZE, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %39 = bitcast %union.sab82532_irq_status* %38 to %struct.TYPE_16__*
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SAB82532_ISR0_TCD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = call i32 @readb(i32* %50)
  %52 = load i32, i32* @SAB82532_RECV_FIFO_SIZE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %51, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %45, %37
  %58 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %59 = bitcast %union.sab82532_irq_status* %58 to %struct.TYPE_16__*
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SAB82532_ISR0_TIME, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %67 = call i32 @sunsab_cec_wait(%struct.uart_sunsab_port* %66)
  %68 = load i32, i32* @SAB82532_CMDR_RFRD, align 4
  %69 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %70 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = call i32 @writeb(i32 %68, i32* %73)
  %75 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  store %struct.tty_port* %75, %struct.tty_port** %3, align 8
  br label %408

76:                                               ; preds = %57
  %77 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %78 = bitcast %union.sab82532_irq_status* %77 to %struct.TYPE_16__*
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %76
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %107, %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %88
  %93 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %94 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @readb(i32* %101)
  %103 = trunc i32 %102 to i8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %105
  store i8 %103, i8* %106, align 1
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %88

110:                                              ; preds = %88
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %115 = call i32 @sunsab_cec_wait(%struct.uart_sunsab_port* %114)
  %116 = load i32, i32* @SAB82532_CMDR_RMC, align 4
  %117 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %118 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %117, i32 0, i32 1
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = call i32 @writeb(i32 %116, i32* %121)
  br label %123

123:                                              ; preds = %113, %110
  %124 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %125 = bitcast %union.sab82532_irq_status* %124 to %struct.TYPE_16__*
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %123
  %132 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %133 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %137 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %135, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  store i32 1, i32* %8, align 4
  br label %144

144:                                              ; preds = %143, %131, %123
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %144
  %148 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %149 = bitcast %union.sab82532_irq_status* %148 to %struct.TYPE_16__*
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %153 = and i32 %151, %152
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %147
  %157 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %158 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %162 = bitcast %union.sab82532_irq_status* %161 to %struct.TYPE_16__*
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, %160
  store i32 %165, i32* %163, align 4
  %166 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %167 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %173 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %172, i32 0, i32 0
  %174 = call i64 @uart_handle_break(%struct.TYPE_17__* %173)
  br label %175

175:                                              ; preds = %156, %147
  br label %176

176:                                              ; preds = %175, %144
  store i32 0, i32* %11, align 4
  br label %177

177:                                              ; preds = %398, %176
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %401

181:                                              ; preds = %177
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  store i8 %185, i8* %12, align 1
  %186 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %186, i8* %13, align 1
  %187 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %188 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %194 = bitcast %union.sab82532_irq_status* %193 to %struct.TYPE_16__*
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %198 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %196, %201
  %203 = call i64 @unlikely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %181
  %206 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %207 = bitcast %union.sab82532_irq_status* %206 to %struct.TYPE_16__*
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %211 = and i32 %209, %210
  %212 = call i64 @unlikely(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %345

214:                                              ; preds = %205, %181
  %215 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %216 = bitcast %union.sab82532_irq_status* %215 to %struct.TYPE_16__*
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %244

222:                                              ; preds = %214
  %223 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %224 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %225 = or i32 %223, %224
  %226 = xor i32 %225, -1
  %227 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %228 = bitcast %union.sab82532_irq_status* %227 to %struct.TYPE_16__*
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, %226
  store i32 %231, i32* %229, align 4
  %232 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %233 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  %238 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %239 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %238, i32 0, i32 0
  %240 = call i64 @uart_handle_break(%struct.TYPE_17__* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %222
  br label %398

243:                                              ; preds = %222
  br label %276

244:                                              ; preds = %214
  %245 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %246 = bitcast %union.sab82532_irq_status* %245 to %struct.TYPE_16__*
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %244
  %253 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %254 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 8
  br label %275

259:                                              ; preds = %244
  %260 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %261 = bitcast %union.sab82532_irq_status* %260 to %struct.TYPE_16__*
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %259
  %268 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %269 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %267, %259
  br label %275

275:                                              ; preds = %274, %252
  br label %276

276:                                              ; preds = %275, %243
  %277 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %278 = bitcast %union.sab82532_irq_status* %277 to %struct.TYPE_16__*
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %276
  %285 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %286 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 8
  br label %291

291:                                              ; preds = %284, %276
  %292 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %293 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = and i32 %295, 255
  %297 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %298 = bitcast %union.sab82532_irq_status* %297 to %struct.TYPE_16__*
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, %296
  store i32 %301, i32* %299, align 4
  %302 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %303 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = ashr i32 %305, 8
  %307 = and i32 %306, 255
  %308 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %309 = bitcast %union.sab82532_irq_status* %308 to %struct.TYPE_16__*
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, %307
  store i32 %312, i32* %310, align 4
  %313 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %314 = bitcast %union.sab82532_irq_status* %313 to %struct.TYPE_16__*
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %291
  %321 = load i8, i8* @TTY_BREAK, align 1
  store i8 %321, i8* %13, align 1
  br label %344

322:                                              ; preds = %291
  %323 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %324 = bitcast %union.sab82532_irq_status* %323 to %struct.TYPE_16__*
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %322
  %331 = load i8, i8* @TTY_PARITY, align 1
  store i8 %331, i8* %13, align 1
  br label %343

332:                                              ; preds = %322
  %333 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %334 = bitcast %union.sab82532_irq_status* %333 to %struct.TYPE_16__*
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %332
  %341 = load i8, i8* @TTY_FRAME, align 1
  store i8 %341, i8* %13, align 1
  br label %342

342:                                              ; preds = %340, %332
  br label %343

343:                                              ; preds = %342, %330
  br label %344

344:                                              ; preds = %343, %320
  br label %345

345:                                              ; preds = %344, %205
  %346 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %347 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %346, i32 0, i32 0
  %348 = load i8, i8* %12, align 1
  %349 = call i64 @uart_handle_sysrq_char(%struct.TYPE_17__* %347, i8 zeroext %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %345
  %352 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %353 = icmp ne %struct.tty_port* %352, null
  br i1 %353, label %355, label %354

354:                                              ; preds = %351, %345
  br label %398

355:                                              ; preds = %351
  %356 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %357 = bitcast %union.sab82532_irq_status* %356 to %struct.TYPE_16__*
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %361 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = and i32 %363, 255
  %365 = and i32 %359, %364
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %385

367:                                              ; preds = %355
  %368 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %369 = bitcast %union.sab82532_irq_status* %368 to %struct.TYPE_16__*
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %373 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = ashr i32 %375, 8
  %377 = and i32 %376, 255
  %378 = and i32 %371, %377
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %367
  %381 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %382 = load i8, i8* %12, align 1
  %383 = load i8, i8* %13, align 1
  %384 = call i32 @tty_insert_flip_char(%struct.tty_port* %381, i8 zeroext %382, i8 zeroext %383)
  br label %385

385:                                              ; preds = %380, %367, %355
  %386 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %387 = bitcast %union.sab82532_irq_status* %386 to %struct.TYPE_16__*
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %385
  %394 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %395 = load i8, i8* @TTY_OVERRUN, align 1
  %396 = call i32 @tty_insert_flip_char(%struct.tty_port* %394, i8 zeroext 0, i8 zeroext %395)
  br label %397

397:                                              ; preds = %393, %385
  br label %398

398:                                              ; preds = %397, %354, %242
  %399 = load i32, i32* %11, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %11, align 4
  br label %177

401:                                              ; preds = %177
  %402 = load i32, i32* %8, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %401
  %405 = call i32 (...) @sun_do_break()
  br label %406

406:                                              ; preds = %404, %401
  %407 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  store %struct.tty_port* %407, %struct.tty_port** %3, align 8
  br label %408

408:                                              ; preds = %406, %65
  %409 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  ret %struct.tty_port* %409
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @sunsab_cec_wait(%struct.uart_sunsab_port*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_17__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_17__*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @sun_do_break(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
