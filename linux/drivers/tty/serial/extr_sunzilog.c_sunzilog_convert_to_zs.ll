; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunzilog.c_sunzilog_convert_to_zs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunzilog.c_sunzilog_convert_to_zs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunzilog_port = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NRZ = common dso_local global i32 0, align 4
@R10 = common dso_local global i64 0, align 8
@TCBR = common dso_local global i32 0, align 4
@RCBR = common dso_local global i32 0, align 4
@R11 = common dso_local global i64 0, align 8
@XCLK_MASK = common dso_local global i32 0, align 4
@R4 = common dso_local global i64 0, align 8
@X16CLK = common dso_local global i32 0, align 4
@R12 = common dso_local global i64 0, align 8
@R13 = common dso_local global i64 0, align 8
@BRSRC = common dso_local global i32 0, align 4
@BRENAB = common dso_local global i32 0, align 4
@R14 = common dso_local global i64 0, align 8
@RxN_MASK = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8
@TxN_MASK = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@CSIZE = common dso_local global i32 0, align 4
@Rx5 = common dso_local global i32 0, align 4
@Tx5 = common dso_local global i32 0, align 4
@Rx6 = common dso_local global i32 0, align 4
@Tx6 = common dso_local global i32 0, align 4
@Rx7 = common dso_local global i32 0, align 4
@Tx7 = common dso_local global i32 0, align 4
@Rx8 = common dso_local global i32 0, align 4
@Tx8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@SB2 = common dso_local global i32 0, align 4
@SB1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PAR_ENAB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PAR_EVEN = common dso_local global i32 0, align 4
@Rx_OVR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@CRC_ERR = common dso_local global i32 0, align 4
@PAR_ERR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@BRK_ABRT = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunzilog_port*, i32, i32, i32)* @sunzilog_convert_to_zs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunzilog_convert_to_zs(%struct.uart_sunzilog_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uart_sunzilog_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_sunzilog_port* %0, %struct.uart_sunzilog_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @NRZ, align 4
  %10 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @R10, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @TCBR, align 4
  %16 = load i32, i32* @RCBR, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @R11, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %17, i32* %22, align 4
  %23 = load i32, i32* @XCLK_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %26 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @R4, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %24
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @X16CLK, align 4
  %33 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %34 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @R4, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %32
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 255
  %42 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %43 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @R12, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %51 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @R13, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load i32, i32* @BRSRC, align 4
  %56 = load i32, i32* @BRENAB, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %59 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @R14, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* @RxN_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %66 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @R3, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %64
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @TxN_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %75 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @R5, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %73
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @CSIZE, align 4
  %83 = and i32 %81, %82
  switch i32 %83, label %142 [
    i32 131, label %84
    i32 130, label %103
    i32 129, label %122
    i32 128, label %141
  ]

84:                                               ; preds = %4
  %85 = load i32, i32* @Rx5, align 4
  %86 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %87 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @R3, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %85
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @Tx5, align 4
  %94 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %95 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @R5, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %93
  store i32 %100, i32* %98, align 4
  %101 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %102 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %101, i32 0, i32 1
  store i32 31, i32* %102, align 8
  br label %161

103:                                              ; preds = %4
  %104 = load i32, i32* @Rx6, align 4
  %105 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %106 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @R3, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %104
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @Tx6, align 4
  %113 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %114 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @R5, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %112
  store i32 %119, i32* %117, align 4
  %120 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %121 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %120, i32 0, i32 1
  store i32 63, i32* %121, align 8
  br label %161

122:                                              ; preds = %4
  %123 = load i32, i32* @Rx7, align 4
  %124 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %125 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @R3, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %123
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @Tx7, align 4
  %132 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %133 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @R5, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %131
  store i32 %138, i32* %136, align 4
  %139 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %140 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %139, i32 0, i32 1
  store i32 127, i32* %140, align 8
  br label %161

141:                                              ; preds = %4
  br label %142

142:                                              ; preds = %4, %141
  %143 = load i32, i32* @Rx8, align 4
  %144 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %145 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @R3, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %143
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @Tx8, align 4
  %152 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %153 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @R5, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %151
  store i32 %158, i32* %156, align 4
  %159 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %160 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %159, i32 0, i32 1
  store i32 255, i32* %160, align 8
  br label %161

161:                                              ; preds = %142, %122, %103, %84
  %162 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %163 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @R4, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, -13
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @CSTOPB, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %161
  %174 = load i32, i32* @SB2, align 4
  %175 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %176 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @R4, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %174
  store i32 %181, i32* %179, align 4
  br label %191

182:                                              ; preds = %161
  %183 = load i32, i32* @SB1, align 4
  %184 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %185 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @R4, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %183
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %182, %173
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @PARENB, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load i32, i32* @PAR_ENAB, align 4
  %198 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %199 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @R4, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %197
  store i32 %204, i32* %202, align 4
  br label %215

205:                                              ; preds = %191
  %206 = load i32, i32* @PAR_ENAB, align 4
  %207 = xor i32 %206, -1
  %208 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %209 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* @R4, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, %207
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %205, %196
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @PARODD, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %215
  %221 = load i32, i32* @PAR_EVEN, align 4
  %222 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %223 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* @R4, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %221
  store i32 %228, i32* %226, align 4
  br label %239

229:                                              ; preds = %215
  %230 = load i32, i32* @PAR_EVEN, align 4
  %231 = xor i32 %230, -1
  %232 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %233 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @R4, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, %231
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %229, %220
  %240 = load i32, i32* @Rx_OVR, align 4
  %241 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %242 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 4
  %244 = load i32, i32* %7, align 4
  %245 = load i32, i32* @INPCK, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %239
  %249 = load i32, i32* @CRC_ERR, align 4
  %250 = load i32, i32* @PAR_ERR, align 4
  %251 = or i32 %249, %250
  %252 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %253 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %251
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %248, %239
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @IGNBRK, align 4
  %260 = load i32, i32* @BRKINT, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @PARMRK, align 4
  %263 = or i32 %261, %262
  %264 = and i32 %258, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %257
  %267 = load i32, i32* @BRK_ABRT, align 4
  %268 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %269 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %267
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %266, %257
  %274 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %275 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 1
  store i32 0, i32* %276, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @IGNPAR, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %273
  %282 = load i32, i32* @CRC_ERR, align 4
  %283 = load i32, i32* @PAR_ERR, align 4
  %284 = or i32 %282, %283
  %285 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %286 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %284
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %281, %273
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @IGNBRK, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %314

295:                                              ; preds = %290
  %296 = load i32, i32* @BRK_ABRT, align 4
  %297 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %298 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %296
  store i32 %301, i32* %299, align 4
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* @IGNPAR, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %295
  %307 = load i32, i32* @Rx_OVR, align 4
  %308 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %309 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %307
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %306, %295
  br label %314

314:                                              ; preds = %313, %290
  %315 = load i32, i32* %6, align 4
  %316 = load i32, i32* @CREAD, align 4
  %317 = and i32 %315, %316
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %5, align 8
  %321 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 1
  store i32 255, i32* %322, align 4
  br label %323

323:                                              ; preds = %319, %314
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
