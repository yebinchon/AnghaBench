; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.usba_ep*, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.usba_ep = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)* }

@INT_STA = common dso_local global i32 0, align 4
@USBA_HIGH_SPEED = common dso_local global i32 0, align 4
@DBG_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"irq, status=%#08x\0A\00", align 1
@USBA_DET_SUSPEND = common dso_local global i32 0, align 4
@INT_CLR = common dso_local global i32 0, align 4
@USBA_WAKE_UP = common dso_local global i32 0, align 4
@DBG_BUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Suspend detected\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Wake Up CPU detected\0A\00", align 1
@USBA_END_OF_RESUME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Resume detected\0A\00", align 1
@DMA_INT = common dso_local global i32 0, align 4
@USBA_NR_DMAS = common dso_local global i32 0, align 4
@EPT_INT = common dso_local global i32 0, align 4
@USBA_END_OF_RESET = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"%s bus reset detected\0A\00", align 1
@usba_ep0_desc = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@EPT_SIZE = common dso_local global i32 0, align 4
@EP0_EPT_SIZE = common dso_local global i32 0, align 4
@EPT_TYPE = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_CONTROL = common dso_local global i32 0, align 4
@BK_NUMBER = common dso_local global i32 0, align 4
@USBA_BK_NUMBER_ONE = common dso_local global i32 0, align 4
@CTL_ENB = common dso_local global i32 0, align 4
@USBA_EPT_ENABLE = common dso_local global i32 0, align 4
@USBA_RX_SETUP = common dso_local global i32 0, align 4
@USBA_EPT_MAPPED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"ODD: EP0 configuration is invalid!\0A\00", align 1
@fifo_mode = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"ODD: EP%d configuration is invalid!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @usba_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usba_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usba_ep*, align 8
  %13 = alloca %struct.usba_ep*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.usba_udc*
  store %struct.usba_udc* %17, %struct.usba_udc** %5, align 8
  %18 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %19 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %18, i32 0, i32 4
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %22 = call i32 @usba_int_enb_get(%struct.usba_udc* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %24 = load i32, i32* @INT_STA, align 4
  %25 = call i32 @usba_readl(%struct.usba_udc* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @USBA_HIGH_SPEED, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @DBG_INT, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @DBG(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %94

37:                                               ; preds = %2
  %38 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %39 = load i32, i32* @INT_CLR, align 4
  %40 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %41 = load i32, i32* @USBA_WAKE_UP, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @usba_writel(%struct.usba_udc* %38, i32 %39, i32 %42)
  %44 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %45 = load i32, i32* @USBA_WAKE_UP, align 4
  %46 = call i32 @usba_int_enb_set(%struct.usba_udc* %44, i32 %45)
  %47 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %48 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %49 = call i32 @usba_int_enb_clear(%struct.usba_udc* %47, i32 %48)
  %50 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %51 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %53 = call i32 @toggle_bias(%struct.usba_udc* %52, i32 0)
  %54 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %55 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %57 = call i32 @stop_clock(%struct.usba_udc* %56)
  %58 = load i32, i32* @DBG_BUS, align 4
  %59 = call i32 (i32, i8*, ...) @DBG(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %61 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %37
  %67 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %68 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %67, i32 0, i32 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = icmp ne %struct.TYPE_10__* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %73 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %72, i32 0, i32 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %75, align 8
  %77 = icmp ne i32 (%struct.TYPE_9__*)* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %71
  %79 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %80 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %79, i32 0, i32 4
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %83 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %82, i32 0, i32 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %85, align 8
  %87 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %88 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %87, i32 0, i32 7
  %89 = call i32 %86(%struct.TYPE_9__* %88)
  %90 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %91 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %90, i32 0, i32 4
  %92 = call i32 @spin_lock(i32* %91)
  br label %93

93:                                               ; preds = %78, %71, %66, %37
  br label %94

94:                                               ; preds = %93, %2
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @USBA_WAKE_UP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %101 = call i32 @start_clock(%struct.usba_udc* %100)
  %102 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %103 = call i32 @toggle_bias(%struct.usba_udc* %102, i32 1)
  %104 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %105 = load i32, i32* @INT_CLR, align 4
  %106 = load i32, i32* @USBA_WAKE_UP, align 4
  %107 = call i32 @usba_writel(%struct.usba_udc* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @DBG_BUS, align 4
  %109 = call i32 (i32, i8*, ...) @DBG(i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %99, %94
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @USBA_END_OF_RESUME, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %166

115:                                              ; preds = %110
  %116 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %117 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %119 = load i32, i32* @INT_CLR, align 4
  %120 = load i32, i32* @USBA_END_OF_RESUME, align 4
  %121 = call i32 @usba_writel(%struct.usba_udc* %118, i32 %119, i32 %120)
  %122 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %123 = load i32, i32* @USBA_WAKE_UP, align 4
  %124 = call i32 @usba_int_enb_clear(%struct.usba_udc* %122, i32 %123)
  %125 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %126 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %127 = call i32 @usba_int_enb_set(%struct.usba_udc* %125, i32 %126)
  %128 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %129 = call i32 @generate_bias_pulse(%struct.usba_udc* %128)
  %130 = load i32, i32* @DBG_BUS, align 4
  %131 = call i32 (i32, i8*, ...) @DBG(i32 %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %132 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %133 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %165

138:                                              ; preds = %115
  %139 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %140 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %139, i32 0, i32 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = icmp ne %struct.TYPE_10__* %141, null
  br i1 %142, label %143, label %165

143:                                              ; preds = %138
  %144 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %145 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %144, i32 0, i32 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %147, align 8
  %149 = icmp ne i32 (%struct.TYPE_9__*)* %148, null
  br i1 %149, label %150, label %165

150:                                              ; preds = %143
  %151 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %152 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %151, i32 0, i32 4
  %153 = call i32 @spin_unlock(i32* %152)
  %154 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %155 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %154, i32 0, i32 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %157, align 8
  %159 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %160 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %159, i32 0, i32 7
  %161 = call i32 %158(%struct.TYPE_9__* %160)
  %162 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %163 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %162, i32 0, i32 4
  %164 = call i32 @spin_lock(i32* %163)
  br label %165

165:                                              ; preds = %150, %143, %138, %115
  br label %166

166:                                              ; preds = %165, %110
  %167 = load i32, i32* @DMA_INT, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @USBA_BFEXT(i32 %167, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %200

172:                                              ; preds = %166
  %173 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %174 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %175 = call i32 @usba_int_enb_set(%struct.usba_udc* %173, i32 %174)
  store i32 1, i32* %10, align 4
  br label %176

176:                                              ; preds = %196, %172
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @USBA_NR_DMAS, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %199

180:                                              ; preds = %176
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %10, align 4
  %183 = shl i32 1, %182
  %184 = and i32 %181, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %188 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %189 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %188, i32 0, i32 6
  %190 = load %struct.usba_ep*, %struct.usba_ep** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %190, i64 %192
  %194 = call i32 @usba_dma_irq(%struct.usba_udc* %187, %struct.usba_ep* %193)
  br label %195

195:                                              ; preds = %186, %180
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %176

199:                                              ; preds = %176
  br label %200

200:                                              ; preds = %199, %166
  %201 = load i32, i32* @EPT_INT, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @USBA_BFEXT(i32 %201, i32 %202)
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %255

206:                                              ; preds = %200
  %207 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %208 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %209 = call i32 @usba_int_enb_set(%struct.usba_udc* %207, i32 %208)
  store i32 0, i32* %11, align 4
  br label %210

210:                                              ; preds = %251, %206
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %213 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %254

216:                                              ; preds = %210
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %11, align 4
  %219 = shl i32 1, %218
  %220 = and i32 %217, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %250

222:                                              ; preds = %216
  %223 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %224 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %223, i32 0, i32 6
  %225 = load %struct.usba_ep*, %struct.usba_ep** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %225, i64 %227
  %229 = call i64 @ep_is_control(%struct.usba_ep* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %222
  %232 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %233 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %234 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %233, i32 0, i32 6
  %235 = load %struct.usba_ep*, %struct.usba_ep** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %235, i64 %237
  %239 = call i32 @usba_control_irq(%struct.usba_udc* %232, %struct.usba_ep* %238)
  br label %249

240:                                              ; preds = %222
  %241 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %242 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %243 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %242, i32 0, i32 6
  %244 = load %struct.usba_ep*, %struct.usba_ep** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %244, i64 %246
  %248 = call i32 @usba_ep_irq(%struct.usba_udc* %241, %struct.usba_ep* %247)
  br label %249

249:                                              ; preds = %240, %231
  br label %250

250:                                              ; preds = %249, %216
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %11, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %11, align 4
  br label %210

254:                                              ; preds = %210
  br label %255

255:                                              ; preds = %254, %200
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* @USBA_END_OF_RESET, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %429

260:                                              ; preds = %255
  %261 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %262 = load i32, i32* @INT_CLR, align 4
  %263 = load i32, i32* @USBA_END_OF_RESET, align 4
  %264 = load i32, i32* @USBA_END_OF_RESUME, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %267 = or i32 %265, %266
  %268 = load i32, i32* @USBA_WAKE_UP, align 4
  %269 = or i32 %267, %268
  %270 = call i32 @usba_writel(%struct.usba_udc* %261, i32 %262, i32 %269)
  %271 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %272 = call i32 @generate_bias_pulse(%struct.usba_udc* %271)
  %273 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %274 = call i32 @reset_all_endpoints(%struct.usba_udc* %273)
  %275 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %276 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %275, i32 0, i32 7
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %303

281:                                              ; preds = %260
  %282 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %283 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %282, i32 0, i32 8
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %283, align 8
  %285 = icmp ne %struct.TYPE_10__* %284, null
  br i1 %285, label %286, label %303

286:                                              ; preds = %281
  %287 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %288 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %289 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %288, i32 0, i32 7
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  store i64 %287, i64* %290, align 8
  %291 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %292 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %291, i32 0, i32 4
  %293 = call i32 @spin_unlock(i32* %292)
  %294 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %295 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %294, i32 0, i32 7
  %296 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %297 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %296, i32 0, i32 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = call i32 @usb_gadget_udc_reset(%struct.TYPE_9__* %295, %struct.TYPE_10__* %298)
  %300 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %301 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %300, i32 0, i32 4
  %302 = call i32 @spin_lock(i32* %301)
  br label %303

303:                                              ; preds = %286, %281, %260
  %304 = load i32, i32* %6, align 4
  %305 = load i32, i32* @USBA_HIGH_SPEED, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %303
  %309 = load i64, i64* @USB_SPEED_HIGH, align 8
  %310 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %311 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %310, i32 0, i32 7
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 0
  store i64 %309, i64* %312, align 8
  br label %318

313:                                              ; preds = %303
  %314 = load i64, i64* @USB_SPEED_FULL, align 8
  %315 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %316 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %315, i32 0, i32 7
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 0
  store i64 %314, i64* %317, align 8
  br label %318

318:                                              ; preds = %313, %308
  %319 = load i32, i32* @DBG_BUS, align 4
  %320 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %321 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %320, i32 0, i32 7
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = call i32 @usb_speed_string(i64 %323)
  %325 = call i32 (i32, i8*, ...) @DBG(i32 %319, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %324)
  %326 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %327 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %326, i32 0, i32 6
  %328 = load %struct.usba_ep*, %struct.usba_ep** %327, align 8
  %329 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %328, i64 0
  store %struct.usba_ep* %329, %struct.usba_ep** %12, align 8
  %330 = load %struct.usba_ep*, %struct.usba_ep** %12, align 8
  %331 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  store i32* @usba_ep0_desc, i32** %332, align 8
  %333 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %334 = load %struct.usba_ep*, %struct.usba_ep** %12, align 8
  %335 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  %336 = load %struct.usba_ep*, %struct.usba_ep** %12, align 8
  %337 = load i32, i32* @CFG, align 4
  %338 = load i32, i32* @EPT_SIZE, align 4
  %339 = load i32, i32* @EP0_EPT_SIZE, align 4
  %340 = call i32 @USBA_BF(i32 %338, i32 %339)
  %341 = load i32, i32* @EPT_TYPE, align 4
  %342 = load i32, i32* @USBA_EPT_TYPE_CONTROL, align 4
  %343 = call i32 @USBA_BF(i32 %341, i32 %342)
  %344 = or i32 %340, %343
  %345 = load i32, i32* @BK_NUMBER, align 4
  %346 = load i32, i32* @USBA_BK_NUMBER_ONE, align 4
  %347 = call i32 @USBA_BF(i32 %345, i32 %346)
  %348 = or i32 %344, %347
  %349 = call i32 @usba_ep_writel(%struct.usba_ep* %336, i32 %337, i32 %348)
  %350 = load %struct.usba_ep*, %struct.usba_ep** %12, align 8
  %351 = load i32, i32* @CTL_ENB, align 4
  %352 = load i32, i32* @USBA_EPT_ENABLE, align 4
  %353 = load i32, i32* @USBA_RX_SETUP, align 4
  %354 = or i32 %352, %353
  %355 = call i32 @usba_ep_writel(%struct.usba_ep* %350, i32 %351, i32 %354)
  %356 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %357 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %356, i32 0, i32 0
  store i32 0, i32* %357, align 8
  %358 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %359 = load i32, i32* @USBA_WAKE_UP, align 4
  %360 = call i32 @usba_int_enb_clear(%struct.usba_udc* %358, i32 %359)
  %361 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %362 = load i32, i32* @EPT_INT, align 4
  %363 = call i32 @USBA_BF(i32 %362, i32 1)
  %364 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %365 = or i32 %363, %364
  %366 = load i32, i32* @USBA_END_OF_RESUME, align 4
  %367 = or i32 %365, %366
  %368 = call i32 @usba_int_enb_set(%struct.usba_udc* %361, i32 %367)
  %369 = load %struct.usba_ep*, %struct.usba_ep** %12, align 8
  %370 = load i32, i32* @CFG, align 4
  %371 = call i32 @usba_ep_readl(%struct.usba_ep* %369, i32 %370)
  %372 = load i32, i32* @USBA_EPT_MAPPED, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %381, label %375

375:                                              ; preds = %318
  %376 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %377 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %376, i32 0, i32 5
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = call i32 (i32*, i8*, ...) @dev_err(i32* %379, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %381

381:                                              ; preds = %375, %318
  %382 = load i64, i64* @fifo_mode, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %381
  %385 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %386 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  br label %392

388:                                              ; preds = %381
  %389 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %390 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  br label %392

392:                                              ; preds = %388, %384
  %393 = phi i32 [ %387, %384 ], [ %391, %388 ]
  store i32 %393, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %394

394:                                              ; preds = %425, %392
  %395 = load i32, i32* %14, align 4
  %396 = load i32, i32* %15, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %428

398:                                              ; preds = %394
  %399 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %400 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %399, i32 0, i32 6
  %401 = load %struct.usba_ep*, %struct.usba_ep** %400, align 8
  %402 = load i32, i32* %14, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %401, i64 %403
  store %struct.usba_ep* %404, %struct.usba_ep** %13, align 8
  %405 = load %struct.usba_ep*, %struct.usba_ep** %13, align 8
  %406 = load i32, i32* @CFG, align 4
  %407 = load %struct.usba_ep*, %struct.usba_ep** %13, align 8
  %408 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @usba_ep_writel(%struct.usba_ep* %405, i32 %406, i32 %409)
  %411 = load %struct.usba_ep*, %struct.usba_ep** %13, align 8
  %412 = load i32, i32* @CFG, align 4
  %413 = call i32 @usba_ep_readl(%struct.usba_ep* %411, i32 %412)
  %414 = load i32, i32* @USBA_EPT_MAPPED, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %424, label %417

417:                                              ; preds = %398
  %418 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %419 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %418, i32 0, i32 5
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 0
  %422 = load i32, i32* %14, align 4
  %423 = call i32 (i32*, i8*, ...) @dev_err(i32* %421, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %422)
  br label %424

424:                                              ; preds = %417, %398
  br label %425

425:                                              ; preds = %424
  %426 = load i32, i32* %14, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %14, align 4
  br label %394

428:                                              ; preds = %394
  br label %429

429:                                              ; preds = %428, %255
  %430 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %431 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %430, i32 0, i32 4
  %432 = call i32 @spin_unlock(i32* %431)
  %433 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %433
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @usba_int_enb_get(%struct.usba_udc*) #1

declare dso_local i32 @usba_readl(%struct.usba_udc*, i32) #1

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @usba_int_enb_set(%struct.usba_udc*, i32) #1

declare dso_local i32 @usba_int_enb_clear(%struct.usba_udc*, i32) #1

declare dso_local i32 @toggle_bias(%struct.usba_udc*, i32) #1

declare dso_local i32 @stop_clock(%struct.usba_udc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @start_clock(%struct.usba_udc*) #1

declare dso_local i32 @generate_bias_pulse(%struct.usba_udc*) #1

declare dso_local i32 @USBA_BFEXT(i32, i32) #1

declare dso_local i32 @usba_dma_irq(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i64 @ep_is_control(%struct.usba_ep*) #1

declare dso_local i32 @usba_control_irq(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i32 @usba_ep_irq(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i32 @reset_all_endpoints(%struct.usba_udc*) #1

declare dso_local i32 @usb_gadget_udc_reset(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @usb_speed_string(i64) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @USBA_BF(i32, i32) #1

declare dso_local i32 @usba_ep_readl(%struct.usba_ep*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
