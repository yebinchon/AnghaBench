; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.jsm_channel = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_10__*, %struct.jsm_board*, %struct.TYPE_9__, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.jsm_board = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CBAUD = common dso_local global i32 0, align 4
@CH_BAUD0 = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@baud_rates = common dso_local global %struct.TYPE_11__* null, align 8
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UART_LCR_STOP = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UART_LCR_WLEN5 = common dso_local global i32 0, align 4
@UART_LCR_WLEN6 = common dso_local global i32 0, align 4
@UART_LCR_WLEN7 = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@__DISABLED_CHAR = common dso_local global i64 0, align 8
@IXOFF = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @cls_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_param(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jsm_board*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 9600, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %12 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %11, i32 0, i32 7
  %13 = load %struct.jsm_board*, %struct.jsm_board** %12, align 8
  store %struct.jsm_board* %13, %struct.jsm_board** %8, align 8
  %14 = load %struct.jsm_board*, %struct.jsm_board** %8, align 8
  %15 = icmp ne %struct.jsm_board* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %328

17:                                               ; preds = %1
  %18 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %19 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CBAUD, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %26 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %25, i32 0, i32 12
  store i64 0, i64* %26, align 8
  %27 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %28 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  %29 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %30 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %32 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %34 = call i32 @cls_flush_uart_write(%struct.jsm_channel* %33)
  %35 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %36 = call i32 @cls_flush_uart_read(%struct.jsm_channel* %35)
  %37 = load i32, i32* @CH_BAUD0, align 4
  %38 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %39 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @UART_MCR_RTS, align 4
  %43 = load i32, i32* @UART_MCR_DTR, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %47 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %51 = call i32 @cls_assert_modem_signals(%struct.jsm_channel* %50)
  br label %328

52:                                               ; preds = %17
  %53 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %54 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %53, i32 0, i32 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @C_BAUD(i32 %59)
  store i32 %60, i32* %10, align 4
  store i32 9600, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %83, %52
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @baud_rates, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @baud_rates, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @baud_rates, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  br label %86

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %61

86:                                               ; preds = %75, %61
  %87 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %88 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CH_BAUD0, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i32, i32* @CH_BAUD0, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %97 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %86
  %101 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %102 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PARENB, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i32, i32* @UART_LCR_PARITY, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %100
  %112 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %113 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @PARODD, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* @UART_LCR_EPAR, align 4
  %120 = load i32, i32* %3, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %111
  %123 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %124 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CSTOPB, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32, i32* @UART_LCR_STOP, align 4
  %131 = load i32, i32* %3, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %122
  %134 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %135 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @CSIZE, align 4
  %138 = and i32 %136, %137
  switch i32 %138, label %152 [
    i32 131, label %139
    i32 130, label %143
    i32 129, label %147
    i32 128, label %151
  ]

139:                                              ; preds = %133
  %140 = load i32, i32* @UART_LCR_WLEN5, align 4
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %3, align 4
  br label %156

143:                                              ; preds = %133
  %144 = load i32, i32* @UART_LCR_WLEN6, align 4
  %145 = load i32, i32* %3, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %3, align 4
  br label %156

147:                                              ; preds = %133
  %148 = load i32, i32* @UART_LCR_WLEN7, align 4
  %149 = load i32, i32* %3, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %3, align 4
  br label %156

151:                                              ; preds = %133
  br label %152

152:                                              ; preds = %133, %151
  %153 = load i32, i32* @UART_LCR_WLEN8, align 4
  %154 = load i32, i32* %3, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %147, %143, %139
  %157 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %158 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %157, i32 0, i32 6
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = call i32 @readb(i32* %160)
  store i32 %161, i32* %5, align 4
  %162 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %163 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %162, i32 0, i32 6
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = call i32 @readb(i32* %165)
  store i32 %166, i32* %4, align 4
  %167 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %168 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %167, i32 0, i32 7
  %169 = load %struct.jsm_board*, %struct.jsm_board** %168, align 8
  %170 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %6, align 4
  %173 = sdiv i32 %171, %172
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %203

176:                                              ; preds = %156
  %177 = load i32, i32* @UART_LCR_DLAB, align 4
  %178 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %179 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %178, i32 0, i32 6
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = call i32 @writeb(i32 %177, i32* %181)
  %183 = load i32, i32* %7, align 4
  %184 = and i32 %183, 255
  %185 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %186 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %185, i32 0, i32 6
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = call i32 @writeb(i32 %184, i32* %188)
  %190 = load i32, i32* %7, align 4
  %191 = ashr i32 %190, 8
  %192 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %193 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %192, i32 0, i32 6
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = call i32 @writeb(i32 %191, i32* %195)
  %197 = load i32, i32* %3, align 4
  %198 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %199 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %198, i32 0, i32 6
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = call i32 @writeb(i32 %197, i32* %201)
  br label %203

203:                                              ; preds = %176, %156
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* %3, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = load i32, i32* %3, align 4
  %209 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %210 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %209, i32 0, i32 6
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 2
  %213 = call i32 @writeb(i32 %208, i32* %212)
  br label %214

214:                                              ; preds = %207, %203
  %215 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %216 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @CREAD, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %214
  %222 = load i32, i32* @UART_IER_RDI, align 4
  %223 = load i32, i32* @UART_IER_RLSI, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* %5, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %5, align 4
  br label %227

227:                                              ; preds = %221, %214
  %228 = load i32, i32* @UART_IER_THRI, align 4
  %229 = load i32, i32* @UART_IER_MSI, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* %5, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %5, align 4
  %234 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %235 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %234, i32 0, i32 6
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = call i32 @writeb(i32 %233, i32* %237)
  %239 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %240 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @CRTSCTS, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %227
  %246 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %247 = call i32 @cls_set_cts_flow_control(%struct.jsm_channel* %246)
  br label %278

248:                                              ; preds = %227
  %249 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %250 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IXON, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %274

255:                                              ; preds = %248
  %256 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %257 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %256, i32 0, i32 4
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @__DISABLED_CHAR, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %267, label %261

261:                                              ; preds = %255
  %262 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %263 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @__DISABLED_CHAR, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %261, %255
  %268 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %269 = call i32 @cls_set_no_output_flow_control(%struct.jsm_channel* %268)
  br label %273

270:                                              ; preds = %261
  %271 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %272 = call i32 @cls_set_ixon_flow_control(%struct.jsm_channel* %271)
  br label %273

273:                                              ; preds = %270, %267
  br label %277

274:                                              ; preds = %248
  %275 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %276 = call i32 @cls_set_no_output_flow_control(%struct.jsm_channel* %275)
  br label %277

277:                                              ; preds = %274, %273
  br label %278

278:                                              ; preds = %277, %245
  %279 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %280 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @CRTSCTS, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %278
  %286 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %287 = call i32 @cls_set_rts_flow_control(%struct.jsm_channel* %286)
  br label %318

288:                                              ; preds = %278
  %289 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %290 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @IXOFF, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %314

295:                                              ; preds = %288
  %296 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %297 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @__DISABLED_CHAR, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %307, label %301

301:                                              ; preds = %295
  %302 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %303 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %302, i32 0, i32 5
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @__DISABLED_CHAR, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %301, %295
  %308 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %309 = call i32 @cls_set_no_input_flow_control(%struct.jsm_channel* %308)
  br label %313

310:                                              ; preds = %301
  %311 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %312 = call i32 @cls_set_ixoff_flow_control(%struct.jsm_channel* %311)
  br label %313

313:                                              ; preds = %310, %307
  br label %317

314:                                              ; preds = %288
  %315 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %316 = call i32 @cls_set_no_input_flow_control(%struct.jsm_channel* %315)
  br label %317

317:                                              ; preds = %314, %313
  br label %318

318:                                              ; preds = %317, %285
  %319 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %320 = call i32 @cls_assert_modem_signals(%struct.jsm_channel* %319)
  %321 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %322 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %323 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %322, i32 0, i32 6
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = call i32 @readb(i32* %325)
  %327 = call i32 @cls_parse_modem(%struct.jsm_channel* %321, i32 %326)
  br label %328

328:                                              ; preds = %318, %24, %16
  ret void
}

declare dso_local i32 @cls_flush_uart_write(%struct.jsm_channel*) #1

declare dso_local i32 @cls_flush_uart_read(%struct.jsm_channel*) #1

declare dso_local i32 @cls_assert_modem_signals(%struct.jsm_channel*) #1

declare dso_local i32 @C_BAUD(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @cls_set_cts_flow_control(%struct.jsm_channel*) #1

declare dso_local i32 @cls_set_no_output_flow_control(%struct.jsm_channel*) #1

declare dso_local i32 @cls_set_ixon_flow_control(%struct.jsm_channel*) #1

declare dso_local i32 @cls_set_rts_flow_control(%struct.jsm_channel*) #1

declare dso_local i32 @cls_set_no_input_flow_control(%struct.jsm_channel*) #1

declare dso_local i32 @cls_set_ixoff_flow_control(%struct.jsm_channel*) #1

declare dso_local i32 @cls_parse_modem(%struct.jsm_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
