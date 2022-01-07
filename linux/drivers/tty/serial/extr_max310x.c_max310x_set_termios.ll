; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32* }

@CMSPAR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@MAX310X_LCR_LENGTH0_BIT = common dso_local global i32 0, align 4
@MAX310X_LCR_LENGTH1_BIT = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@MAX310X_LCR_PARITY_BIT = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@MAX310X_LCR_EVENPARITY_BIT = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@MAX310X_LCR_STOPLEN_BIT = common dso_local global i32 0, align 4
@MAX310X_LCR_REG = common dso_local global i32 0, align 4
@MAX310X_LSR_RXOVR_BIT = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@MAX310X_LSR_RXPAR_BIT = common dso_local global i32 0, align 4
@MAX310X_LSR_FRERR_BIT = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@MAX310X_LSR_RXBRK_BIT = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@MAX310X_XON1_REG = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@MAX310X_XOFF1_REG = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@MAX310X_MODE1_REG = common dso_local global i32 0, align 4
@MAX310X_MODE1_TXDIS_BIT = common dso_local global i32 0, align 4
@UPSTAT_AUTOCTS = common dso_local global i32 0, align 4
@UPSTAT_AUTORTS = common dso_local global i32 0, align 4
@UPSTAT_AUTOXOFF = common dso_local global i32 0, align 4
@MAX310X_FLOWCTRL_AUTOCTS_BIT = common dso_local global i32 0, align 4
@MAX310X_FLOWCTRL_AUTORTS_BIT = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@MAX310X_FLOWCTRL_SWFLOW3_BIT = common dso_local global i32 0, align 4
@MAX310X_FLOWCTRL_SWFLOWEN_BIT = common dso_local global i32 0, align 4
@MAX310X_FLOWCTRL_SWFLOW1_BIT = common dso_local global i32 0, align 4
@MAX310X_FLOWCTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @max310x_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max310x_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @CMSPAR, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %13 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %17 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CSIZE, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %27 [
    i32 131, label %21
    i32 130, label %22
    i32 129, label %24
    i32 128, label %26
  ]

21:                                               ; preds = %3
  br label %31

22:                                               ; preds = %3
  %23 = load i32, i32* @MAX310X_LCR_LENGTH0_BIT, align 4
  store i32 %23, i32* %7, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @MAX310X_LCR_LENGTH1_BIT, align 4
  store i32 %25, i32* %7, align 4
  br label %31

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %3, %26
  %28 = load i32, i32* @MAX310X_LCR_LENGTH1_BIT, align 4
  %29 = load i32, i32* @MAX310X_LCR_LENGTH0_BIT, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %24, %22, %21
  %32 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %33 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PARENB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load i32, i32* @MAX310X_LCR_PARITY_BIT, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %43 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PARODD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @MAX310X_LCR_EVENPARITY_BIT, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %38
  br label %53

53:                                               ; preds = %52, %31
  %54 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CSTOPB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @MAX310X_LCR_STOPLEN_BIT, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %66 = load i32, i32* @MAX310X_LCR_REG, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @max310x_port_write(%struct.uart_port* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @MAX310X_LSR_RXOVR_BIT, align 4
  %70 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %73 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @INPCK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load i32, i32* @MAX310X_LSR_RXPAR_BIT, align 4
  %80 = load i32, i32* @MAX310X_LSR_FRERR_BIT, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %64
  %87 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %88 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IGNBRK, align 4
  %91 = load i32, i32* @BRKINT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @PARMRK, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %89, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load i32, i32* @MAX310X_LSR_RXBRK_BIT, align 4
  %99 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %86
  %104 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %107 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IGNBRK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %103
  %113 = load i32, i32* @MAX310X_LSR_RXBRK_BIT, align 4
  %114 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %103
  %119 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %120 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CREAD, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* @MAX310X_LSR_RXPAR_BIT, align 4
  %127 = load i32, i32* @MAX310X_LSR_RXOVR_BIT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @MAX310X_LSR_FRERR_BIT, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @MAX310X_LSR_RXBRK_BIT, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %134 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %125, %118
  %138 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %139 = load i32, i32* @MAX310X_XON1_REG, align 4
  %140 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %141 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @VSTART, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @max310x_port_write(%struct.uart_port* %138, i32 %139, i32 %145)
  %147 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %148 = load i32, i32* @MAX310X_XOFF1_REG, align 4
  %149 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %150 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @VSTOP, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @max310x_port_write(%struct.uart_port* %147, i32 %148, i32 %154)
  %156 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %157 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CRTSCTS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %137
  %163 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %164 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IXOFF, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %162, %137
  %170 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %171 = load i32, i32* @MAX310X_MODE1_REG, align 4
  %172 = load i32, i32* @MAX310X_MODE1_TXDIS_BIT, align 4
  %173 = load i32, i32* @MAX310X_MODE1_TXDIS_BIT, align 4
  %174 = call i32 @max310x_port_update(%struct.uart_port* %170, i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %169, %162
  %176 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %177 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @UPSTAT_AUTOXOFF, align 4
  %180 = or i32 %178, %179
  %181 = xor i32 %180, -1
  %182 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %183 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %187 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @CRTSCTS, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %175
  %193 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %194 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %197 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* @MAX310X_FLOWCTRL_AUTOCTS_BIT, align 4
  %201 = load i32, i32* @MAX310X_FLOWCTRL_AUTORTS_BIT, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %8, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %192, %175
  %206 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %207 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @IXON, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = load i32, i32* @MAX310X_FLOWCTRL_SWFLOW3_BIT, align 4
  %214 = load i32, i32* @MAX310X_FLOWCTRL_SWFLOWEN_BIT, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* %8, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %8, align 4
  br label %218

218:                                              ; preds = %212, %205
  %219 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %220 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @IXOFF, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %218
  %226 = load i32, i32* @UPSTAT_AUTOXOFF, align 4
  %227 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %228 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load i32, i32* @MAX310X_FLOWCTRL_SWFLOW1_BIT, align 4
  %232 = load i32, i32* @MAX310X_FLOWCTRL_SWFLOWEN_BIT, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* %8, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %225, %218
  %237 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %238 = load i32, i32* @MAX310X_FLOWCTRL_REG, align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @max310x_port_write(%struct.uart_port* %237, i32 %238, i32 %239)
  %241 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %242 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @CRTSCTS, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %259, label %247

247:                                              ; preds = %236
  %248 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %249 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @IXOFF, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %247
  %255 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %256 = load i32, i32* @MAX310X_MODE1_REG, align 4
  %257 = load i32, i32* @MAX310X_MODE1_TXDIS_BIT, align 4
  %258 = call i32 @max310x_port_update(%struct.uart_port* %255, i32 %256, i32 %257, i32 0)
  br label %259

259:                                              ; preds = %254, %247, %236
  %260 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %261 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %262 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %263 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %264 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = sdiv i32 %265, 16
  %267 = sdiv i32 %266, 65535
  %268 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %269 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = sdiv i32 %270, 4
  %272 = call i32 @uart_get_baud_rate(%struct.uart_port* %260, %struct.ktermios* %261, %struct.ktermios* %262, i32 %267, i32 %271)
  store i32 %272, i32* %9, align 4
  %273 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @max310x_set_baud(%struct.uart_port* %273, i32 %274)
  store i32 %275, i32* %9, align 4
  %276 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %277 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %278 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = call i32 @uart_update_timeout(%struct.uart_port* %276, i32 %279, i32 %280)
  ret void
}

declare dso_local i32 @max310x_port_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @max310x_port_update(%struct.uart_port*, i32, i32, i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @max310x_set_baud(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
