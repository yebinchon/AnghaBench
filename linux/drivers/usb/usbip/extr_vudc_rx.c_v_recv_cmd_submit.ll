; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_rx.c_v_recv_cmd_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_rx.c_v_recv_cmd_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vudc = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.usbip_header = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.urbp = type { i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@VUDC_EVENT_ERROR_MALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBIP_DIR_IN = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"request to nonexistent endpoint\00", align 1
@VUDC_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"CMD_SUBMIT: isoc invalid num packets %d\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@PIPE_BULK = common dso_local global i32 0, align 4
@PIPE_INTERRUPT = common dso_local global i32 0, align 4
@PIPE_CONTROL = common dso_local global i32 0, align 4
@PIPE_ISOCHRONOUS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vudc*, %struct.usbip_header*)* @v_recv_cmd_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_recv_cmd_submit(%struct.vudc* %0, %struct.usbip_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vudc*, align 8
  %5 = alloca %struct.usbip_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urbp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vudc* %0, %struct.vudc** %4, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = call %struct.urbp* (...) @alloc_urbp()
  store %struct.urbp* %13, %struct.urbp** %7, align 8
  %14 = load %struct.urbp*, %struct.urbp** %7, align 8
  %15 = icmp ne %struct.urbp* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.vudc*, %struct.vudc** %4, align 8
  %18 = getelementptr inbounds %struct.vudc, %struct.vudc* %17, i32 0, i32 2
  %19 = load i32, i32* @VUDC_EVENT_ERROR_MALLOC, align 4
  %20 = call i32 @usbip_event_add(i32* %18, i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %255

23:                                               ; preds = %2
  %24 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %25 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %29 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @USBIP_DIR_IN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i32, i32* @USB_DIR_IN, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %23
  %39 = load %struct.vudc*, %struct.vudc** %4, align 8
  %40 = getelementptr inbounds %struct.vudc, %struct.vudc* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_irq(i32* %40)
  %42 = load %struct.vudc*, %struct.vudc** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.TYPE_15__* @vudc_find_endpoint(%struct.vudc* %42, i32 %43)
  %45 = load %struct.urbp*, %struct.urbp** %7, align 8
  %46 = getelementptr inbounds %struct.urbp, %struct.urbp* %45, i32 0, i32 4
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %46, align 8
  %47 = load %struct.urbp*, %struct.urbp** %7, align 8
  %48 = getelementptr inbounds %struct.urbp, %struct.urbp* %47, i32 0, i32 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = icmp ne %struct.TYPE_15__* %49, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %38
  %52 = load %struct.vudc*, %struct.vudc** %4, align 8
  %53 = getelementptr inbounds %struct.vudc, %struct.vudc* %52, i32 0, i32 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.vudc*, %struct.vudc** %4, align 8
  %58 = getelementptr inbounds %struct.vudc, %struct.vudc* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load %struct.vudc*, %struct.vudc** %4, align 8
  %61 = getelementptr inbounds %struct.vudc, %struct.vudc* %60, i32 0, i32 2
  %62 = load i32, i32* @VUDC_EVENT_ERROR_TCP, align 4
  %63 = call i32 @usbip_event_add(i32* %61, i32 %62)
  %64 = load i32, i32* @EPIPE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %251

66:                                               ; preds = %38
  %67 = load %struct.urbp*, %struct.urbp** %7, align 8
  %68 = getelementptr inbounds %struct.urbp, %struct.urbp* %67, i32 0, i32 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.urbp*, %struct.urbp** %7, align 8
  %73 = getelementptr inbounds %struct.urbp, %struct.urbp* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vudc*, %struct.vudc** %4, align 8
  %75 = getelementptr inbounds %struct.vudc, %struct.vudc* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_irq(i32* %75)
  %77 = load %struct.urbp*, %struct.urbp** %7, align 8
  %78 = getelementptr inbounds %struct.urbp, %struct.urbp* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %80 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.urbp*, %struct.urbp** %7, align 8
  %84 = getelementptr inbounds %struct.urbp, %struct.urbp* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.urbp*, %struct.urbp** %7, align 8
  %86 = getelementptr inbounds %struct.urbp, %struct.urbp* %85, i32 0, i32 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %141

91:                                               ; preds = %66
  %92 = load %struct.urbp*, %struct.urbp** %7, align 8
  %93 = getelementptr inbounds %struct.urbp, %struct.urbp* %92, i32 0, i32 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @usb_endpoint_maxp(i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.urbp*, %struct.urbp** %7, align 8
  %99 = getelementptr inbounds %struct.urbp, %struct.urbp* %98, i32 0, i32 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @usb_endpoint_maxp_mult(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = mul i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %107 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @DIV_ROUND_UP(i32 %111, i32 %112)
  store i32 %113, i32* %11, align 4
  %114 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %115 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ult i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %91
  %121 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %122 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %120, %91
  %129 = load %struct.vudc*, %struct.vudc** %4, align 8
  %130 = getelementptr inbounds %struct.vudc, %struct.vudc* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %133 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EMSGSIZE, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %251

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140, %66
  %142 = load %struct.urbp*, %struct.urbp** %7, align 8
  %143 = getelementptr inbounds %struct.urbp, %struct.urbp* %142, i32 0, i32 3
  %144 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %145 = load %struct.urbp*, %struct.urbp** %7, align 8
  %146 = getelementptr inbounds %struct.urbp, %struct.urbp* %145, i32 0, i32 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @alloc_urb_from_cmd(%struct.TYPE_16__** %143, %struct.usbip_header* %144, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %141
  %154 = load %struct.vudc*, %struct.vudc** %4, align 8
  %155 = getelementptr inbounds %struct.vudc, %struct.vudc* %154, i32 0, i32 2
  %156 = load i32, i32* @VUDC_EVENT_ERROR_MALLOC, align 4
  %157 = call i32 @usbip_event_add(i32* %155, i32 %156)
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %251

160:                                              ; preds = %141
  %161 = load i32, i32* @EINPROGRESS, align 4
  %162 = sub nsw i32 0, %161
  %163 = load %struct.urbp*, %struct.urbp** %7, align 8
  %164 = getelementptr inbounds %struct.urbp, %struct.urbp* %163, i32 0, i32 3
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  store i32 %162, i32* %166, align 4
  %167 = load %struct.urbp*, %struct.urbp** %7, align 8
  %168 = getelementptr inbounds %struct.urbp, %struct.urbp* %167, i32 0, i32 3
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 1073741823
  store i32 %172, i32* %170, align 4
  %173 = load %struct.urbp*, %struct.urbp** %7, align 8
  %174 = getelementptr inbounds %struct.urbp, %struct.urbp* %173, i32 0, i32 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %214 [
    i32 131, label %178
    i32 129, label %187
    i32 130, label %196
    i32 128, label %205
  ]

178:                                              ; preds = %160
  %179 = load i32, i32* @PIPE_BULK, align 4
  %180 = shl i32 %179, 30
  %181 = load %struct.urbp*, %struct.urbp** %7, align 8
  %182 = getelementptr inbounds %struct.urbp, %struct.urbp* %181, i32 0, i32 3
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %180
  store i32 %186, i32* %184, align 4
  br label %214

187:                                              ; preds = %160
  %188 = load i32, i32* @PIPE_INTERRUPT, align 4
  %189 = shl i32 %188, 30
  %190 = load %struct.urbp*, %struct.urbp** %7, align 8
  %191 = getelementptr inbounds %struct.urbp, %struct.urbp* %190, i32 0, i32 3
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %189
  store i32 %195, i32* %193, align 4
  br label %214

196:                                              ; preds = %160
  %197 = load i32, i32* @PIPE_CONTROL, align 4
  %198 = shl i32 %197, 30
  %199 = load %struct.urbp*, %struct.urbp** %7, align 8
  %200 = getelementptr inbounds %struct.urbp, %struct.urbp* %199, i32 0, i32 3
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %198
  store i32 %204, i32* %202, align 4
  br label %214

205:                                              ; preds = %160
  %206 = load i32, i32* @PIPE_ISOCHRONOUS, align 4
  %207 = shl i32 %206, 30
  %208 = load %struct.urbp*, %struct.urbp** %7, align 8
  %209 = getelementptr inbounds %struct.urbp, %struct.urbp* %208, i32 0, i32 3
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %207
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %160, %205, %196, %187, %178
  %215 = load %struct.vudc*, %struct.vudc** %4, align 8
  %216 = getelementptr inbounds %struct.vudc, %struct.vudc* %215, i32 0, i32 2
  %217 = load %struct.urbp*, %struct.urbp** %7, align 8
  %218 = getelementptr inbounds %struct.urbp, %struct.urbp* %217, i32 0, i32 3
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %218, align 8
  %220 = call i32 @usbip_recv_xbuff(i32* %216, %struct.TYPE_16__* %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  br label %251

224:                                              ; preds = %214
  %225 = load %struct.vudc*, %struct.vudc** %4, align 8
  %226 = getelementptr inbounds %struct.vudc, %struct.vudc* %225, i32 0, i32 2
  %227 = load %struct.urbp*, %struct.urbp** %7, align 8
  %228 = getelementptr inbounds %struct.urbp, %struct.urbp* %227, i32 0, i32 3
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = call i32 @usbip_recv_iso(i32* %226, %struct.TYPE_16__* %229)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %224
  br label %251

234:                                              ; preds = %224
  %235 = load %struct.vudc*, %struct.vudc** %4, align 8
  %236 = getelementptr inbounds %struct.vudc, %struct.vudc* %235, i32 0, i32 0
  %237 = load i64, i64* %9, align 8
  %238 = call i32 @spin_lock_irqsave(i32* %236, i64 %237)
  %239 = load %struct.vudc*, %struct.vudc** %4, align 8
  %240 = load i32, i32* @jiffies, align 4
  %241 = call i32 @v_kick_timer(%struct.vudc* %239, i32 %240)
  %242 = load %struct.urbp*, %struct.urbp** %7, align 8
  %243 = getelementptr inbounds %struct.urbp, %struct.urbp* %242, i32 0, i32 2
  %244 = load %struct.vudc*, %struct.vudc** %4, align 8
  %245 = getelementptr inbounds %struct.vudc, %struct.vudc* %244, i32 0, i32 1
  %246 = call i32 @list_add_tail(i32* %243, i32* %245)
  %247 = load %struct.vudc*, %struct.vudc** %4, align 8
  %248 = getelementptr inbounds %struct.vudc, %struct.vudc* %247, i32 0, i32 0
  %249 = load i64, i64* %9, align 8
  %250 = call i32 @spin_unlock_irqrestore(i32* %248, i64 %249)
  store i32 0, i32* %3, align 4
  br label %255

251:                                              ; preds = %233, %223, %153, %128, %51
  %252 = load %struct.urbp*, %struct.urbp** %7, align 8
  %253 = call i32 @free_urbp_and_urb(%struct.urbp* %252)
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %251, %234, %16
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local %struct.urbp* @alloc_urbp(...) #1

declare dso_local i32 @usbip_event_add(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.TYPE_15__* @vudc_find_endpoint(%struct.vudc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_endpoint_maxp(i32) #1

declare dso_local i32 @usb_endpoint_maxp_mult(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @alloc_urb_from_cmd(%struct.TYPE_16__**, %struct.usbip_header*, i32) #1

declare dso_local i32 @usbip_recv_xbuff(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @usbip_recv_iso(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v_kick_timer(%struct.vudc*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_urbp_and_urb(%struct.urbp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
