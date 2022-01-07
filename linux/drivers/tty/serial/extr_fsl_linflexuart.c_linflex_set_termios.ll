; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i64, i32 }
%struct.ktermios = type { i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@UARTCR = common dso_local global i64 0, align 8
@LINCR1 = common dso_local global i64 0, align 8
@LINFLEXD_LINCR1_INIT = common dso_local global i64 0, align 8
@LINSR = common dso_local global i64 0, align 8
@LINFLEXD_LINSR_LINS_MASK = common dso_local global i64 0, align 8
@LINFLEXD_LINSR_LINS_INITMODE = common dso_local global i64 0, align 8
@CS7 = common dso_local global i32 0, align 4
@LINFLEXD_UARTCR_WL1 = common dso_local global i64 0, align 8
@LINFLEXD_UARTCR_WL0 = common dso_local global i64 0, align 8
@CMSPAR = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@LINFLEXD_UARTCR_PCE = common dso_local global i64 0, align 8
@PARODD = common dso_local global i32 0, align 4
@LINFLEXD_UARTCR_PC0 = common dso_local global i64 0, align 8
@LINFLEXD_UARTCR_PC1 = common dso_local global i64 0, align 8
@INPCK = common dso_local global i32 0, align 4
@LINFLEXD_UARTSR_FEF = common dso_local global i32 0, align 4
@LINFLEXD_UARTSR_PE0 = common dso_local global i32 0, align 4
@LINFLEXD_UARTSR_PE1 = common dso_local global i32 0, align 4
@LINFLEXD_UARTSR_PE2 = common dso_local global i32 0, align 4
@LINFLEXD_UARTSR_PE3 = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@LINFLEXD_UARTSR_PE = common dso_local global i32 0, align 4
@LINFLEXD_UARTSR_BOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @linflex_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linflex_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %13 = icmp ne %struct.ktermios* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %16 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CSIZE, align 4
  %19 = and i32 %17, %18
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @CS8, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %19, %14 ], [ %21, %20 ]
  store i32 %23, i32* %11, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UARTCR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @readl(i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LINCR1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @readl(i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* @LINFLEXD_LINCR1_INIT, align 8
  %38 = load i64, i64* %10, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LINCR1, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i64 %40, i64 %45)
  br label %47

47:                                               ; preds = %58, %22
  %48 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LINSR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i64 @readl(i64 %52)
  %54 = load i64, i64* @LINFLEXD_LINSR_LINS_MASK, align 8
  %55 = and i64 %53, %54
  %56 = load i64, i64* @LINFLEXD_LINSR_LINS_INITMODE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %47

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %78, %59
  %61 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CSIZE, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @CS8, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %70 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CSIZE, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @CS7, align 4
  %75 = icmp ne i32 %73, %74
  br label %76

76:                                               ; preds = %68, %60
  %77 = phi i1 [ false, %60 ], [ %75, %68 ]
  br i1 %77, label %78, label %91

78:                                               ; preds = %76
  %79 = load i32, i32* @CSIZE, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %82 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %87 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @CS8, align 4
  store i32 %90, i32* %11, align 4
  br label %60

91:                                               ; preds = %76
  %92 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %93 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CSIZE, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @CS7, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %91
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @LINFLEXD_UARTCR_WL1, align 8
  %102 = xor i64 %101, -1
  %103 = and i64 %100, %102
  %104 = load i64, i64* @LINFLEXD_UARTCR_WL0, align 8
  %105 = xor i64 %104, -1
  %106 = and i64 %103, %105
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %99, %91
  %108 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %109 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CSIZE, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @CS8, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %107
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @LINFLEXD_UARTCR_WL0, align 8
  %118 = or i64 %116, %117
  %119 = load i64, i64* @LINFLEXD_UARTCR_WL1, align 8
  %120 = xor i64 %119, -1
  %121 = and i64 %118, %120
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %115, %107
  %123 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %124 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CMSPAR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %122
  %130 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %131 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CSIZE, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @CS8, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %129
  %138 = load i32, i32* @CSIZE, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %141 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* @CS8, align 4
  %145 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %146 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %137, %129
  %150 = load i64, i64* @LINFLEXD_UARTCR_WL0, align 8
  %151 = load i64, i64* %8, align 8
  %152 = or i64 %151, %150
  store i64 %152, i64* %8, align 8
  br label %153

153:                                              ; preds = %149, %122
  %154 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %155 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @CSTOPB, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %153
  %161 = load i32, i32* @CSTOPB, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %164 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %160, %153
  %168 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %169 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CSIZE, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @CS7, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load i32, i32* @PARENB, align 4
  %177 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %178 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %175, %167
  %182 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %183 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @PARENB, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %214

188:                                              ; preds = %181
  %189 = load i64, i64* @LINFLEXD_UARTCR_PCE, align 8
  %190 = load i64, i64* %8, align 8
  %191 = or i64 %190, %189
  store i64 %191, i64* %8, align 8
  %192 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %193 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @PARODD, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %188
  %199 = load i64, i64* %8, align 8
  %200 = load i64, i64* @LINFLEXD_UARTCR_PC0, align 8
  %201 = or i64 %199, %200
  %202 = load i64, i64* @LINFLEXD_UARTCR_PC1, align 8
  %203 = xor i64 %202, -1
  %204 = and i64 %201, %203
  store i64 %204, i64* %8, align 8
  br label %213

205:                                              ; preds = %188
  %206 = load i64, i64* %8, align 8
  %207 = load i64, i64* @LINFLEXD_UARTCR_PC1, align 8
  %208 = xor i64 %207, -1
  %209 = load i64, i64* @LINFLEXD_UARTCR_PC0, align 8
  %210 = xor i64 %209, -1
  %211 = and i64 %208, %210
  %212 = and i64 %206, %211
  store i64 %212, i64* %8, align 8
  br label %213

213:                                              ; preds = %205, %198
  br label %219

214:                                              ; preds = %181
  %215 = load i64, i64* @LINFLEXD_UARTCR_PCE, align 8
  %216 = xor i64 %215, -1
  %217 = load i64, i64* %8, align 8
  %218 = and i64 %217, %216
  store i64 %218, i64* %8, align 8
  br label %219

219:                                              ; preds = %214, %213
  %220 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %221 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %220, i32 0, i32 1
  %222 = load i64, i64* %7, align 8
  %223 = call i32 @spin_lock_irqsave(i32* %221, i64 %222)
  %224 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %225 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %224, i32 0, i32 0
  store i32 0, i32* %225, align 8
  %226 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %227 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @INPCK, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %246

232:                                              ; preds = %219
  %233 = load i32, i32* @LINFLEXD_UARTSR_FEF, align 4
  %234 = load i32, i32* @LINFLEXD_UARTSR_PE0, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @LINFLEXD_UARTSR_PE1, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @LINFLEXD_UARTSR_PE2, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @LINFLEXD_UARTSR_PE3, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %243 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %232, %219
  %247 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %248 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @IGNBRK, align 4
  %251 = load i32, i32* @BRKINT, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @PARMRK, align 4
  %254 = or i32 %252, %253
  %255 = and i32 %249, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %246
  %258 = load i32, i32* @LINFLEXD_UARTSR_FEF, align 4
  %259 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %260 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %257, %246
  %264 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %265 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %264, i32 0, i32 3
  store i32 0, i32* %265, align 8
  %266 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %267 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @IGNPAR, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %263
  %273 = load i32, i32* @LINFLEXD_UARTSR_PE, align 4
  %274 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %275 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %272, %263
  %279 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %280 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @IGNBRK, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %304

285:                                              ; preds = %278
  %286 = load i32, i32* @LINFLEXD_UARTSR_PE, align 4
  %287 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %288 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 8
  %291 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %292 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @IGNPAR, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %285
  %298 = load i32, i32* @LINFLEXD_UARTSR_BOF, align 4
  %299 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %300 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %297, %285
  br label %304

304:                                              ; preds = %303, %278
  %305 = load i64, i64* %8, align 8
  %306 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %307 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @UARTCR, align 8
  %310 = add nsw i64 %308, %309
  %311 = call i32 @writel(i64 %305, i64 %310)
  %312 = load i64, i64* @LINFLEXD_LINCR1_INIT, align 8
  %313 = xor i64 %312, -1
  %314 = load i64, i64* %10, align 8
  %315 = and i64 %314, %313
  store i64 %315, i64* %10, align 8
  %316 = load i64, i64* %10, align 8
  %317 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %318 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @LINCR1, align 8
  %321 = add nsw i64 %319, %320
  %322 = call i32 @writel(i64 %316, i64 %321)
  %323 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %324 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %323, i32 0, i32 1
  %325 = load i64, i64* %7, align 8
  %326 = call i32 @spin_unlock_irqrestore(i32* %324, i64 %325)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
