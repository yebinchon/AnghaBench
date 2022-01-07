; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.zs_port = type { i32*, i32, %struct.zs_scc* }
%struct.zs_scc = type { i32, %struct.zs_port* }

@ZS_CHAN_A = common dso_local global i64 0, align 8
@RxNBITS_MASK = common dso_local global i32 0, align 4
@TxNBITS_MASK = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@Rx5 = common dso_local global i32 0, align 4
@Tx5 = common dso_local global i32 0, align 4
@Rx6 = common dso_local global i32 0, align 4
@Tx6 = common dso_local global i32 0, align 4
@Rx7 = common dso_local global i32 0, align 4
@Tx7 = common dso_local global i32 0, align 4
@Rx8 = common dso_local global i32 0, align 4
@Tx8 = common dso_local global i32 0, align 4
@XCLK_MASK = common dso_local global i32 0, align 4
@SB_MASK = common dso_local global i32 0, align 4
@PAR_ENA = common dso_local global i32 0, align 4
@PAR_EVEN = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@SB2 = common dso_local global i32 0, align 4
@SB1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@X64CLK = common dso_local global i32 0, align 4
@X32CLK = common dso_local global i32 0, align 4
@X16CLK = common dso_local global i32 0, align 4
@X1CLK = common dso_local global i32 0, align 4
@Rx_OVR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@FRM_ERR = common dso_local global i32 0, align 4
@PAR_ERR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@Rx_BRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@RxENABLE = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@DCDIE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CTSIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @zs_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.zs_port*, align 8
  %8 = alloca %struct.zs_scc*, align 8
  %9 = alloca %struct.zs_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = call %struct.zs_port* @to_zport(%struct.uart_port* %14)
  store %struct.zs_port* %15, %struct.zs_port** %7, align 8
  %16 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %17 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %16, i32 0, i32 2
  %18 = load %struct.zs_scc*, %struct.zs_scc** %17, align 8
  store %struct.zs_scc* %18, %struct.zs_scc** %8, align 8
  %19 = load %struct.zs_scc*, %struct.zs_scc** %8, align 8
  %20 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %19, i32 0, i32 1
  %21 = load %struct.zs_port*, %struct.zs_port** %20, align 8
  %22 = load i64, i64* @ZS_CHAN_A, align 8
  %23 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %21, i64 %22
  store %struct.zs_port* %23, %struct.zs_port** %9, align 8
  %24 = load %struct.zs_scc*, %struct.zs_scc** %8, align 8
  %25 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %24, i32 0, i32 0
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @irqs_disabled_flags(i64 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @RxNBITS_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %36 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %34
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @TxNBITS_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %44 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %50 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CSIZE, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %100 [
    i32 131, label %54
    i32 130, label %69
    i32 129, label %84
    i32 128, label %99
  ]

54:                                               ; preds = %3
  %55 = load i32, i32* @Rx5, align 4
  %56 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %57 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @Tx5, align 4
  %63 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %64 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  br label %115

69:                                               ; preds = %3
  %70 = load i32, i32* @Rx6, align 4
  %71 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %72 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @Tx6, align 4
  %78 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %79 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 4
  br label %115

84:                                               ; preds = %3
  %85 = load i32, i32* @Rx7, align 4
  %86 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %87 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @Tx7, align 4
  %93 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %94 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %92
  store i32 %98, i32* %96, align 4
  br label %115

99:                                               ; preds = %3
  br label %100

100:                                              ; preds = %3, %99
  %101 = load i32, i32* @Rx8, align 4
  %102 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %103 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %101
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* @Tx8, align 4
  %109 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %110 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %100, %84, %69, %54
  %116 = load i32, i32* @XCLK_MASK, align 4
  %117 = load i32, i32* @SB_MASK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @PAR_ENA, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @PAR_EVEN, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %125 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %123
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %131 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CSTOPB, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %115
  %137 = load i32, i32* @SB2, align 4
  %138 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %139 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %137
  store i32 %143, i32* %141, align 4
  br label %152

144:                                              ; preds = %115
  %145 = load i32, i32* @SB1, align 4
  %146 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %147 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %144, %136
  %153 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %154 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PARENB, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load i32, i32* @PAR_ENA, align 4
  %161 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %162 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %160
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %159, %152
  %168 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %169 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PARODD, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @PAR_EVEN, align 4
  %176 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %177 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 4
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %175
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %174, %167
  %183 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %184 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  switch i32 %185, label %218 [
    i32 64, label %186
    i32 32, label %194
    i32 16, label %202
    i32 1, label %210
  ]

186:                                              ; preds = %182
  %187 = load i32, i32* @X64CLK, align 4
  %188 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %189 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 4
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %187
  store i32 %193, i32* %191, align 4
  br label %220

194:                                              ; preds = %182
  %195 = load i32, i32* @X32CLK, align 4
  %196 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %197 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 4
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 4
  br label %220

202:                                              ; preds = %182
  %203 = load i32, i32* @X16CLK, align 4
  %204 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %205 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %203
  store i32 %209, i32* %207, align 4
  br label %220

210:                                              ; preds = %182
  %211 = load i32, i32* @X1CLK, align 4
  %212 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %213 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 4
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %211
  store i32 %217, i32* %215, align 4
  br label %220

218:                                              ; preds = %182
  %219 = call i32 (...) @BUG()
  br label %220

220:                                              ; preds = %218, %210, %202, %194, %186
  %221 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %222 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %223 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %224 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %225 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %228 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = sdiv i32 %226, %229
  %231 = sdiv i32 %230, 4
  %232 = call i32 @uart_get_baud_rate(%struct.uart_port* %221, %struct.ktermios* %222, %struct.ktermios* %223, i32 0, i32 %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %235 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %238 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = sdiv i32 %236, %239
  %241 = call i32 @ZS_BPS_TO_BRG(i32 %233, i32 %240)
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* %12, align 4
  %243 = and i32 %242, 255
  %244 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %245 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 12
  store i32 %243, i32* %247, align 4
  %248 = load i32, i32* %12, align 4
  %249 = lshr i32 %248, 8
  %250 = and i32 %249, 255
  %251 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %252 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 13
  store i32 %250, i32* %254, align 4
  %255 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %256 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %257 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %11, align 4
  %260 = call i32 @uart_update_timeout(%struct.uart_port* %255, i32 %258, i32 %259)
  %261 = load i32, i32* @Rx_OVR, align 4
  %262 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %263 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %265 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @INPCK, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %220
  %271 = load i32, i32* @FRM_ERR, align 4
  %272 = load i32, i32* @PAR_ERR, align 4
  %273 = or i32 %271, %272
  %274 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %275 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %270, %220
  %279 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %280 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @IGNBRK, align 4
  %283 = load i32, i32* @BRKINT, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @PARMRK, align 4
  %286 = or i32 %284, %285
  %287 = and i32 %281, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %278
  %290 = load i32, i32* @Rx_BRK, align 4
  %291 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %292 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %289, %278
  %296 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %297 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %296, i32 0, i32 2
  store i32 0, i32* %297, align 4
  %298 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %299 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @IGNPAR, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %295
  %305 = load i32, i32* @FRM_ERR, align 4
  %306 = load i32, i32* @PAR_ERR, align 4
  %307 = or i32 %305, %306
  %308 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %309 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = or i32 %310, %307
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %304, %295
  %313 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %314 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @IGNBRK, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %338

319:                                              ; preds = %312
  %320 = load i32, i32* @Rx_BRK, align 4
  %321 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %322 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  %325 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %326 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @IGNPAR, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %319
  %332 = load i32, i32* @Rx_OVR, align 4
  %333 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %334 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 4
  br label %337

337:                                              ; preds = %331, %319
  br label %338

338:                                              ; preds = %337, %312
  %339 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %340 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @CREAD, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %338
  %346 = load i32, i32* @RxENABLE, align 4
  %347 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %348 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 3
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %346
  store i32 %352, i32* %350, align 4
  br label %362

353:                                              ; preds = %338
  %354 = load i32, i32* @RxENABLE, align 4
  %355 = xor i32 %354, -1
  %356 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %357 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 3
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, %355
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %353, %345
  %363 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %364 = load %struct.zs_port*, %struct.zs_port** %9, align 8
  %365 = icmp ne %struct.zs_port* %363, %364
  br i1 %365, label %366, label %417

366:                                              ; preds = %362
  %367 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %368 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @CLOCAL, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %381, label %373

373:                                              ; preds = %366
  %374 = load i32, i32* @DCDIE, align 4
  %375 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %376 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 15
  %379 = load i32, i32* %378, align 4
  %380 = or i32 %379, %374
  store i32 %380, i32* %378, align 4
  br label %390

381:                                              ; preds = %366
  %382 = load i32, i32* @DCDIE, align 4
  %383 = xor i32 %382, -1
  %384 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %385 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %384, i32 0, i32 0
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 15
  %388 = load i32, i32* %387, align 4
  %389 = and i32 %388, %383
  store i32 %389, i32* %387, align 4
  br label %390

390:                                              ; preds = %381, %373
  %391 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %392 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* @CRTSCTS, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %405

397:                                              ; preds = %390
  %398 = load i32, i32* @CTSIE, align 4
  %399 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %400 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %399, i32 0, i32 0
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 15
  %403 = load i32, i32* %402, align 4
  %404 = or i32 %403, %398
  store i32 %404, i32* %402, align 4
  br label %414

405:                                              ; preds = %390
  %406 = load i32, i32* @CTSIE, align 4
  %407 = xor i32 %406, -1
  %408 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %409 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 15
  %412 = load i32, i32* %411, align 4
  %413 = and i32 %412, %407
  store i32 %413, i32* %411, align 4
  br label %414

414:                                              ; preds = %405, %397
  %415 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %416 = call i32 @zs_raw_xor_mctrl(%struct.zs_port* %415)
  br label %417

417:                                              ; preds = %414, %362
  %418 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %419 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %420 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %419, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %10, align 4
  %423 = call i32 @load_zsregs(%struct.zs_port* %418, i32* %421, i32 %422)
  %424 = load %struct.zs_scc*, %struct.zs_scc** %8, align 8
  %425 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %424, i32 0, i32 0
  %426 = load i64, i64* %13, align 8
  %427 = call i32 @spin_unlock_irqrestore(i32* %425, i64 %426)
  ret void
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @irqs_disabled_flags(i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @ZS_BPS_TO_BRG(i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @zs_raw_xor_mctrl(%struct.zs_port*) #1

declare dso_local i32 @load_zsregs(%struct.zs_port*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
