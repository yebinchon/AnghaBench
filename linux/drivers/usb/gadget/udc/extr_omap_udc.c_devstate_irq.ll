; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_devstate_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_devstate_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_udc = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, %struct.TYPE_6__, i32 (%struct.TYPE_8__*)* }
%struct.TYPE_6__ = type { i32 }

@UDC_DEVSTAT = common dso_local global i32 0, align 4
@UDC_USB_RESET = common dso_local global i32 0, align 4
@UDC_ATT = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"connect\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"disconnect, gadget %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"RESET=1\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"USB reset done, gadget %s\0A\00", align 1
@UDC_DS_CHG_IE = common dso_local global i32 0, align 4
@UDC_EP0_IE = common dso_local global i32 0, align 4
@UDC_IRQ_EN = common dso_local global i32 0, align 4
@UDC_SUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"suspend\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"resume\0A\00", align 1
@OTG_FLAGS = common dso_local global i32 0, align 4
@UDC_CFG = common dso_local global i32 0, align 4
@UDC_DEF = common dso_local global i32 0, align 4
@UDC_ADD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"devstat %03x, ignore change %03x\0A\00", align 1
@UDC_DS_CHG = common dso_local global i32 0, align 4
@UDC_IRQ_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_udc*, i32)* @devstate_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devstate_irq(%struct.omap_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_udc* %0, %struct.omap_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @UDC_DEVSTAT, align 4
  %8 = call i32 @omap_readw(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %11 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = xor i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %16 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @UDC_USB_RESET, align 4
  %19 = load i32, i32* @UDC_ATT, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %141

23:                                               ; preds = %2
  %24 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %25 = call i32 @udc_quiesce(%struct.omap_udc* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @UDC_ATT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %106

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @UDC_ATT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i64, i64* @USB_SPEED_FULL, align 8
  %37 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %38 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %42 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR_OR_NULL(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %48 = call i32 @pullup_enable(%struct.omap_udc* %47)
  br label %49

49:                                               ; preds = %46, %35
  br label %101

50:                                               ; preds = %30
  %51 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %52 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %50
  %58 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %59 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %60 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %63 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @IS_ERR_OR_NULL(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %69 = call i32 @pullup_disable(%struct.omap_udc* %68)
  br label %70

70:                                               ; preds = %67, %57
  %71 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %72 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %71, i32 0, i32 3
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %79 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %78, i32 0, i32 3
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %81, align 8
  %83 = icmp ne i32 (%struct.TYPE_8__*)* %82, null
  br i1 %83, label %84, label %99

84:                                               ; preds = %70
  %85 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %86 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %89 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %88, i32 0, i32 3
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %91, align 8
  %93 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %94 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %93, i32 0, i32 2
  %95 = call i32 %92(%struct.TYPE_8__* %94)
  %96 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %97 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %96, i32 0, i32 1
  %98 = call i32 @spin_lock(i32* %97)
  br label %99

99:                                               ; preds = %84, %70
  br label %100

100:                                              ; preds = %99, %50
  br label %101

101:                                              ; preds = %100, %49
  %102 = load i32, i32* @UDC_ATT, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %23
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @UDC_USB_RESET, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %106
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @UDC_USB_RESET, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %135

118:                                              ; preds = %111
  %119 = load i64, i64* @USB_SPEED_FULL, align 8
  %120 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %121 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %124 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %123, i32 0, i32 3
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @UDC_DS_CHG_IE, align 4
  %131 = load i32, i32* @UDC_EP0_IE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @UDC_IRQ_EN, align 4
  %134 = call i32 @omap_writew(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %118, %116
  %136 = load i32, i32* @UDC_USB_RESET, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %135, %106
  br label %141

141:                                              ; preds = %140, %2
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @UDC_SUS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %250

146:                                              ; preds = %141
  %147 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %148 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %245

153:                                              ; preds = %146
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @UDC_SUS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %202

158:                                              ; preds = %153
  %159 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %160 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %161 = call i32 @update_otg(%struct.omap_udc* %160)
  %162 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %163 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @USB_SPEED_FULL, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %190

168:                                              ; preds = %158
  %169 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %170 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %169, i32 0, i32 3
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %172, align 8
  %174 = icmp ne i32 (%struct.TYPE_8__*)* %173, null
  br i1 %174, label %175, label %190

175:                                              ; preds = %168
  %176 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %177 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %176, i32 0, i32 1
  %178 = call i32 @spin_unlock(i32* %177)
  %179 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %180 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %179, i32 0, i32 3
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %182, align 8
  %184 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %185 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %184, i32 0, i32 2
  %186 = call i32 %183(%struct.TYPE_8__* %185)
  %187 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %188 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %187, i32 0, i32 1
  %189 = call i32 @spin_lock(i32* %188)
  br label %190

190:                                              ; preds = %175, %168, %158
  %191 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %192 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @IS_ERR_OR_NULL(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %190
  %197 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %198 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @usb_phy_set_suspend(i32 %199, i32 1)
  br label %201

201:                                              ; preds = %196, %190
  br label %244

202:                                              ; preds = %153
  %203 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %204 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %205 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @IS_ERR_OR_NULL(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %202
  %210 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %211 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @usb_phy_set_suspend(i32 %212, i32 0)
  br label %214

214:                                              ; preds = %209, %202
  %215 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %216 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @USB_SPEED_FULL, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %243

221:                                              ; preds = %214
  %222 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %223 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %222, i32 0, i32 3
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %225, align 8
  %227 = icmp ne i32 (%struct.TYPE_8__*)* %226, null
  br i1 %227, label %228, label %243

228:                                              ; preds = %221
  %229 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %230 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %229, i32 0, i32 1
  %231 = call i32 @spin_unlock(i32* %230)
  %232 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %233 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %232, i32 0, i32 3
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %235, align 8
  %237 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %238 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %237, i32 0, i32 2
  %239 = call i32 %236(%struct.TYPE_8__* %238)
  %240 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %241 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %240, i32 0, i32 1
  %242 = call i32 @spin_lock(i32* %241)
  br label %243

243:                                              ; preds = %228, %221, %214
  br label %244

244:                                              ; preds = %243, %201
  br label %245

245:                                              ; preds = %244, %146
  %246 = load i32, i32* @UDC_SUS, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %6, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %245, %141
  %251 = call i32 (...) @cpu_is_omap15xx()
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %265, label %253

253:                                              ; preds = %250
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* @OTG_FLAGS, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %253
  %259 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %260 = call i32 @update_otg(%struct.omap_udc* %259)
  %261 = load i32, i32* @OTG_FLAGS, align 4
  %262 = xor i32 %261, -1
  %263 = load i32, i32* %6, align 4
  %264 = and i32 %263, %262
  store i32 %264, i32* %6, align 4
  br label %265

265:                                              ; preds = %258, %253, %250
  %266 = load i32, i32* @UDC_CFG, align 4
  %267 = load i32, i32* @UDC_DEF, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @UDC_ADD, align 4
  %270 = or i32 %268, %269
  %271 = xor i32 %270, -1
  %272 = load i32, i32* %6, align 4
  %273 = and i32 %272, %271
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %265
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* %6, align 4
  %279 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %276, %265
  %281 = load i32, i32* @UDC_DS_CHG, align 4
  %282 = load i32, i32* @UDC_IRQ_SRC, align 4
  %283 = call i32 @omap_writew(i32 %281, i32 %282)
  ret void
}

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @udc_quiesce(%struct.omap_udc*) #1

declare dso_local i32 @VDBG(i8*, ...) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @pullup_enable(%struct.omap_udc*) #1

declare dso_local i32 @pullup_disable(%struct.omap_udc*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @INFO(i8*, i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @update_otg(%struct.omap_udc*) #1

declare dso_local i32 @usb_phy_set_suspend(i32, i32) #1

declare dso_local i32 @cpu_is_omap15xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
