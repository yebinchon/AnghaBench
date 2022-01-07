; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_registers_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_registers_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net2272 = type { i32, %struct.net2272_ep*, %struct.TYPE_3__, i32 }
%struct.net2272_ep = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"%s version %s,chiprev %02x, locctl %02x\0Airqenb0 %02x irqenb1 %02x irqstat0 %02x irqstat1 %02x\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@driver_vers = common dso_local global i32 0, align 4
@LOCCTL = common dso_local global i32 0, align 4
@IRQENB0 = common dso_local global i32 0, align 4
@IRQENB1 = common dso_local global i32 0, align 4
@IRQSTAT0 = common dso_local global i32 0, align 4
@IRQSTAT1 = common dso_local global i32 0, align 4
@DMAREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\0Admareq %02x: %s %s%s%s%s\0A\00", align 1
@ep_name = common dso_local global i32* null, align 8
@DMA_CONTROL_DACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"dack \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DMA_REQUEST_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"reqenb \00", align 1
@DMA_REQUEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"req \00", align 1
@DMA_BUFFER_VALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"valid \00", align 1
@USBCTL1 = common dso_local global i32 0, align 4
@VBUS_PIN = common dso_local global i32 0, align 4
@USB_HIGH_SPEED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"high speed\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"powered\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"full speed\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"not attached\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"usbctl0 %02x usbctl1 %02x addr 0x%02x (%s)\0A\00", align 1
@USBCTL0 = common dso_local global i32 0, align 4
@OURADDR = common dso_local global i32 0, align 4
@EP_CFG = common dso_local global i32 0, align 4
@EP_RSPSET = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [53 x i8] c"\0A%s\09cfg %02x rsp (%02x) %s%s%s%s%s%s%s%sirqenb %02x\0A\00", align 1
@ALT_NAK_OUT_PACKETS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"NAK \00", align 1
@HIDE_STATUS_PHASE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"hide \00", align 1
@AUTOVALIDATE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"auto \00", align 1
@INTERRUPT_MODE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"interrupt \00", align 1
@CONTROL_STATUS_PHASE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"status \00", align 1
@NAK_OUT_PACKETS_MODE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"NAKmode \00", align 1
@ENDPOINT_TOGGLE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"DATA1 \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"DATA0 \00", align 1
@ENDPOINT_HALT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"HALT \00", align 1
@EP_IRQENB = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [49 x i8] c"\09stat0 %02x stat1 %02x avail %04x (ep%d%s-%s)%s\0A\00", align 1
@EP_STAT0 = common dso_local global i32 0, align 4
@EP_STAT1 = common dso_local global i32 0, align 4
@EP_AVAIL1 = common dso_local global i32 0, align 4
@EP_AVAIL0 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"\09ep_transfer %06x\0A\00", align 1
@EP_TRANSFER2 = common dso_local global i32 0, align 4
@EP_TRANSFER1 = common dso_local global i32 0, align 4
@EP_TRANSFER0 = common dso_local global i32 0, align 4
@EP_BUFF_STATES = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [20 x i8] c"\09buf-a %s buf-b %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @registers_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @registers_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net2272*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.net2272_ep*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.net2272* @dev_get_drvdata(%struct.device* %17)
  store %struct.net2272* %18, %struct.net2272** %7, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.net2272*, %struct.net2272** %7, align 8
  %22 = getelementptr inbounds %struct.net2272, %struct.net2272* %21, i32 0, i32 0
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @driver_name, align 4
  %28 = load i32, i32* @driver_vers, align 4
  %29 = load %struct.net2272*, %struct.net2272** %7, align 8
  %30 = getelementptr inbounds %struct.net2272, %struct.net2272* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.net2272*, %struct.net2272** %7, align 8
  %33 = load i32, i32* @LOCCTL, align 4
  %34 = call i32 @net2272_read(%struct.net2272* %32, i32 %33)
  %35 = load %struct.net2272*, %struct.net2272** %7, align 8
  %36 = load i32, i32* @IRQENB0, align 4
  %37 = call i32 @net2272_read(%struct.net2272* %35, i32 %36)
  %38 = load %struct.net2272*, %struct.net2272** %7, align 8
  %39 = load i32, i32* @IRQENB1, align 4
  %40 = call i32 @net2272_read(%struct.net2272* %38, i32 %39)
  %41 = load %struct.net2272*, %struct.net2272** %7, align 8
  %42 = load i32, i32* @IRQSTAT0, align 4
  %43 = call i32 @net2272_read(%struct.net2272* %41, i32 %42)
  %44 = load %struct.net2272*, %struct.net2272** %7, align 8
  %45 = load i32, i32* @IRQSTAT1, align 4
  %46 = call i32 @net2272_read(%struct.net2272* %44, i32 %45)
  %47 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %8, align 8
  %55 = load %struct.net2272*, %struct.net2272** %7, align 8
  %56 = load i32, i32* @DMAREQ, align 4
  %57 = call i32 @net2272_read(%struct.net2272* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** @ep_name, align 8
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, 1
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @DMA_CONTROL_DACK, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @DMA_REQUEST_ENABLE, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @DMA_REQUEST, align 4
  %84 = shl i32 1, %83
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @DMA_BUFFER_VALID, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %96 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %67, i8* %74, i8* %81, i8* %88, i8* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %8, align 8
  %104 = load %struct.net2272*, %struct.net2272** %7, align 8
  %105 = load i32, i32* @USBCTL1, align 4
  %106 = call i32 @net2272_read(%struct.net2272* %104, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @VBUS_PIN, align 4
  %109 = shl i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %3
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @USB_HIGH_SPEED, align 4
  %115 = shl i32 1, %114
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %15, align 8
  br label %129

119:                                              ; preds = %112
  %120 = load %struct.net2272*, %struct.net2272** %7, align 8
  %121 = getelementptr inbounds %struct.net2272, %struct.net2272* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %15, align 8
  br label %128

127:                                              ; preds = %119
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %15, align 8
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %118
  br label %131

130:                                              ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %15, align 8
  br label %131

131:                                              ; preds = %130, %129
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.net2272*, %struct.net2272** %7, align 8
  %135 = load i32, i32* @USBCTL0, align 4
  %136 = call i32 @net2272_read(%struct.net2272* %134, i32 %135)
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.net2272*, %struct.net2272** %7, align 8
  %139 = load i32, i32* @OURADDR, align 4
  %140 = call i32 @net2272_read(%struct.net2272* %138, i32 %139)
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %132, i32 %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %136, i32 %137, i32 %140, i8* %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %9, align 4
  %145 = sub i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i8*, i8** %8, align 8
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %340, %131
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %151, 4
  br i1 %152, label %153, label %343

153:                                              ; preds = %150
  %154 = load %struct.net2272*, %struct.net2272** %7, align 8
  %155 = getelementptr inbounds %struct.net2272, %struct.net2272* %154, i32 0, i32 1
  %156 = load %struct.net2272_ep*, %struct.net2272_ep** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %156, i64 %158
  store %struct.net2272_ep* %159, %struct.net2272_ep** %16, align 8
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %164 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162
  br label %340

168:                                              ; preds = %162, %153
  %169 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %170 = load i32, i32* @EP_CFG, align 4
  %171 = call i32 @net2272_ep_read(%struct.net2272_ep* %169, i32 %170)
  store i32 %171, i32* %12, align 4
  %172 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %173 = load i32, i32* @EP_RSPSET, align 4
  %174 = call i32 @net2272_ep_read(%struct.net2272_ep* %172, i32 %173)
  store i32 %174, i32* %13, align 4
  %175 = load i8*, i8** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %178 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @ALT_NAK_OUT_PACKETS, align 4
  %185 = shl i32 1, %184
  %186 = and i32 %183, %185
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @HIDE_STATUS_PHASE, align 4
  %192 = shl i32 1, %191
  %193 = and i32 %190, %192
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @AUTOVALIDATE, align 4
  %199 = shl i32 1, %198
  %200 = and i32 %197, %199
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* @INTERRUPT_MODE, align 4
  %206 = shl i32 1, %205
  %207 = and i32 %204, %206
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @CONTROL_STATUS_PHASE_HANDSHAKE, align 4
  %213 = shl i32 1, %212
  %214 = and i32 %211, %213
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* @NAK_OUT_PACKETS_MODE, align 4
  %220 = shl i32 1, %219
  %221 = and i32 %218, %220
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* @ENDPOINT_TOGGLE, align 4
  %227 = shl i32 1, %226
  %228 = and i32 %225, %227
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @ENDPOINT_HALT, align 4
  %234 = shl i32 1, %233
  %235 = and i32 %232, %234
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %239 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %240 = load i32, i32* @EP_IRQENB, align 4
  %241 = call i32 @net2272_ep_read(%struct.net2272_ep* %239, i32 %240)
  %242 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %175, i32 %176, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 %180, i32 %181, i32 %182, i8* %189, i8* %196, i8* %203, i8* %210, i8* %217, i8* %224, i8* %231, i8* %238, i32 %241)
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %9, align 4
  %245 = sub i32 %244, %243
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i8*, i8** %8, align 8
  %248 = zext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8* %249, i8** %8, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %253 = load i32, i32* @EP_STAT0, align 4
  %254 = call i32 @net2272_ep_read(%struct.net2272_ep* %252, i32 %253)
  %255 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %256 = load i32, i32* @EP_STAT1, align 4
  %257 = call i32 @net2272_ep_read(%struct.net2272_ep* %255, i32 %256)
  %258 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %259 = load i32, i32* @EP_AVAIL1, align 4
  %260 = call i32 @net2272_ep_read(%struct.net2272_ep* %258, i32 %259)
  %261 = shl i32 %260, 8
  %262 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %263 = load i32, i32* @EP_AVAIL0, align 4
  %264 = call i32 @net2272_ep_read(%struct.net2272_ep* %262, i32 %263)
  %265 = or i32 %261, %264
  %266 = load i32, i32* %12, align 4
  %267 = and i32 %266, 15
  %268 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %269 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)
  %274 = load i32, i32* %12, align 4
  %275 = ashr i32 %274, 5
  %276 = call i32 @type_string(i32 %275)
  %277 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %278 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %283 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %250, i32 %251, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 %254, i32 %257, i32 %265, i32 %267, i8* %273, i32 %276, i8* %282)
  store i32 %283, i32* %10, align 4
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %9, align 4
  %286 = sub i32 %285, %284
  store i32 %286, i32* %9, align 4
  %287 = load i32, i32* %10, align 4
  %288 = load i8*, i8** %8, align 8
  %289 = zext i32 %287 to i64
  %290 = getelementptr inbounds i8, i8* %288, i64 %289
  store i8* %290, i8** %8, align 8
  %291 = load i8*, i8** %8, align 8
  %292 = load i32, i32* %9, align 4
  %293 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %294 = load i32, i32* @EP_TRANSFER2, align 4
  %295 = call i32 @net2272_ep_read(%struct.net2272_ep* %293, i32 %294)
  %296 = and i32 %295, 255
  %297 = shl i32 %296, 16
  %298 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %299 = load i32, i32* @EP_TRANSFER1, align 4
  %300 = call i32 @net2272_ep_read(%struct.net2272_ep* %298, i32 %299)
  %301 = and i32 %300, 255
  %302 = shl i32 %301, 8
  %303 = or i32 %297, %302
  %304 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %305 = load i32, i32* @EP_TRANSFER0, align 4
  %306 = call i32 @net2272_ep_read(%struct.net2272_ep* %304, i32 %305)
  %307 = and i32 %306, 255
  %308 = or i32 %303, %307
  %309 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %291, i32 %292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %308)
  store i32 %309, i32* %10, align 4
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %9, align 4
  %312 = sub i32 %311, %310
  store i32 %312, i32* %9, align 4
  %313 = load i32, i32* %10, align 4
  %314 = load i8*, i8** %8, align 8
  %315 = zext i32 %313 to i64
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  store i8* %316, i8** %8, align 8
  %317 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %318 = load i32, i32* @EP_BUFF_STATES, align 4
  %319 = call i32 @net2272_ep_read(%struct.net2272_ep* %317, i32 %318)
  %320 = and i32 %319, 3
  store i32 %320, i32* %12, align 4
  %321 = load %struct.net2272_ep*, %struct.net2272_ep** %16, align 8
  %322 = load i32, i32* @EP_BUFF_STATES, align 4
  %323 = call i32 @net2272_ep_read(%struct.net2272_ep* %321, i32 %322)
  %324 = ashr i32 %323, 2
  %325 = and i32 %324, 3
  store i32 %325, i32* %13, align 4
  %326 = load i8*, i8** %8, align 8
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* %12, align 4
  %329 = call i32 @buf_state_string(i32 %328)
  %330 = load i32, i32* %13, align 4
  %331 = call i32 @buf_state_string(i32 %330)
  %332 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %326, i32 %327, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 %329, i32 %331)
  store i32 %332, i32* %10, align 4
  %333 = load i32, i32* %10, align 4
  %334 = load i32, i32* %9, align 4
  %335 = sub i32 %334, %333
  store i32 %335, i32* %9, align 4
  %336 = load i32, i32* %10, align 4
  %337 = load i8*, i8** %8, align 8
  %338 = zext i32 %336 to i64
  %339 = getelementptr inbounds i8, i8* %337, i64 %338
  store i8* %339, i8** %8, align 8
  br label %340

340:                                              ; preds = %168, %167
  %341 = load i32, i32* %14, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %14, align 4
  br label %150

343:                                              ; preds = %150
  %344 = load %struct.net2272*, %struct.net2272** %7, align 8
  %345 = getelementptr inbounds %struct.net2272, %struct.net2272* %344, i32 0, i32 0
  %346 = load i64, i64* %11, align 8
  %347 = call i32 @spin_unlock_irqrestore(i32* %345, i64 %346)
  %348 = load i32, i32* @PAGE_SIZE, align 4
  %349 = load i32, i32* %9, align 4
  %350 = sub i32 %348, %349
  ret i32 %350
}

declare dso_local %struct.net2272* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @net2272_read(%struct.net2272*, i32) #1

declare dso_local i32 @net2272_ep_read(%struct.net2272_ep*, i32) #1

declare dso_local i32 @type_string(i32) #1

declare dso_local i32 @buf_state_string(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
