; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_virthub.c_musb_hub_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_virthub.c_musb_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.musb = type { i32, i32, i32 }
%struct.usb_hub_descriptor = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"clear feature %d\00", align 1
@USB_DT_HUB = common dso_local global i32 0, align 4
@HUB_CHAR_INDV_PORT_LPSM = common dso_local global i32 0, align 4
@HUB_CHAR_NO_OCPM = common dso_local global i32 0, align 4
@MUSB_PORT_STAT_RESUME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"port status %08x\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TEST_J\0A\00", align 1
@MUSB_TEST_J = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"TEST_K\0A\00", align 1
@MUSB_TEST_K = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"TEST_SE0_NAK\0A\00", align 1
@MUSB_TEST_SE0_NAK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"TEST_PACKET\0A\00", align 1
@MUSB_TEST_PACKET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"TEST_FORCE_ENABLE\0A\00", align 1
@MUSB_TEST_FORCE_HOST = common dso_local global i32 0, align 4
@MUSB_TEST_FORCE_HS = common dso_local global i32 0, align 4
@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"TEST_FIFO_ACCESS\0A\00", align 1
@MUSB_TEST_FIFO_ACCESS = common dso_local global i32 0, align 4
@MUSB_TESTMODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"set feature %d\00", align 1
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @musb_hub_control(%struct.usb_hcd* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.musb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.usb_hub_descriptor*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %21 = call %struct.musb* @hcd_to_musb(%struct.usb_hcd* %20)
  store %struct.musb* %21, %struct.musb** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.musb*, %struct.musb** %14, align 8
  %23 = getelementptr inbounds %struct.musb, %struct.musb* %22, i32 0, i32 1
  %24 = load i64, i64* %17, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %27 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %6
  %34 = load %struct.musb*, %struct.musb** %14, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 1
  %36 = load i64, i64* %17, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @ESHUTDOWN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %236

40:                                               ; preds = %6
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %220 [
    i32 144, label %42
    i32 139, label %42
    i32 143, label %47
    i32 142, label %81
    i32 141, label %113
    i32 140, label %118
    i32 138, label %138
  ]

42:                                               ; preds = %40, %40
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %45 [
    i32 145, label %44
    i32 146, label %44
  ]

44:                                               ; preds = %42, %42
  br label %46

45:                                               ; preds = %42
  br label %221

46:                                               ; preds = %44
  br label %224

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 255
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %221

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %69 [
    i32 132, label %54
    i32 129, label %55
    i32 131, label %58
    i32 137, label %68
    i32 136, label %68
    i32 135, label %68
    i32 134, label %68
    i32 133, label %68
  ]

54:                                               ; preds = %52
  br label %70

55:                                               ; preds = %52
  %56 = load %struct.musb*, %struct.musb** %14, align 8
  %57 = call i32 @musb_port_suspend(%struct.musb* %56, i32 0)
  br label %70

58:                                               ; preds = %52
  %59 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %60 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load %struct.musb*, %struct.musb** %14, align 8
  %66 = call i32 @musb_platform_set_vbus(%struct.musb* %65, i32 0)
  br label %67

67:                                               ; preds = %64, %58
  br label %70

68:                                               ; preds = %52, %52, %52, %52, %52
  br label %70

69:                                               ; preds = %52
  br label %221

70:                                               ; preds = %68, %67, %55, %54
  %71 = load %struct.musb*, %struct.musb** %14, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @musb_dbg(%struct.musb* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = shl i32 1, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.musb*, %struct.musb** %14, align 8
  %78 = getelementptr inbounds %struct.musb, %struct.musb* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %224

81:                                               ; preds = %40
  %82 = load i8*, i8** %12, align 8
  %83 = bitcast i8* %82 to %struct.usb_hub_descriptor*
  store %struct.usb_hub_descriptor* %83, %struct.usb_hub_descriptor** %19, align 8
  %84 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %19, align 8
  %85 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %84, i32 0, i32 0
  store i32 9, i32* %85, align 8
  %86 = load i32, i32* @USB_DT_HUB, align 4
  %87 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %19, align 8
  %88 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %19, align 8
  %90 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* @HUB_CHAR_INDV_PORT_LPSM, align 4
  %92 = load i32, i32* @HUB_CHAR_NO_OCPM, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @cpu_to_le16(i32 %93)
  %95 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %19, align 8
  %96 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %19, align 8
  %98 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %97, i32 0, i32 2
  store i32 5, i32* %98, align 8
  %99 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %19, align 8
  %100 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %99, i32 0, i32 4
  store i32 0, i32* %100, align 8
  %101 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %19, align 8
  %102 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 2, i32* %106, align 4
  %107 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %19, align 8
  %108 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 255, i32* %112, align 4
  br label %224

113:                                              ; preds = %40
  store i32 0, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @cpu_to_le32(i32 %114)
  %116 = load i8*, i8** %12, align 8
  %117 = bitcast i8* %116 to i32*
  store i32 %115, i32* %117, align 4
  br label %224

118:                                              ; preds = %40
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %221

122:                                              ; preds = %118
  %123 = load %struct.musb*, %struct.musb** %14, align 8
  %124 = getelementptr inbounds %struct.musb, %struct.musb* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @MUSB_PORT_STAT_RESUME, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = call i32 @cpu_to_le32(i32 %128)
  %130 = load i8*, i8** %12, align 8
  %131 = bitcast i8* %130 to i32*
  %132 = call i32 @put_unaligned(i32 %129, i32* %131)
  %133 = load %struct.musb*, %struct.musb** %14, align 8
  %134 = load %struct.musb*, %struct.musb** %14, align 8
  %135 = getelementptr inbounds %struct.musb, %struct.musb* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @musb_dbg(%struct.musb* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  br label %224

138:                                              ; preds = %40
  %139 = load i32, i32* %11, align 4
  %140 = and i32 %139, 255
  %141 = icmp ne i32 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %221

143:                                              ; preds = %138
  %144 = load i32, i32* %10, align 4
  switch i32 %144, label %209 [
    i32 131, label %145
    i32 130, label %157
    i32 129, label %160
    i32 128, label %163
  ]

145:                                              ; preds = %143
  %146 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %147 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = load %struct.musb*, %struct.musb** %14, align 8
  %153 = call i32 @musb_has_gadget(%struct.musb* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 1, i32* %18, align 4
  br label %156

156:                                              ; preds = %155, %151, %145
  br label %210

157:                                              ; preds = %143
  %158 = load %struct.musb*, %struct.musb** %14, align 8
  %159 = call i32 @musb_port_reset(%struct.musb* %158, i32 1)
  br label %210

160:                                              ; preds = %143
  %161 = load %struct.musb*, %struct.musb** %14, align 8
  %162 = call i32 @musb_port_suspend(%struct.musb* %161, i32 1)
  br label %210

163:                                              ; preds = %143
  %164 = load %struct.musb*, %struct.musb** %14, align 8
  %165 = call i32 @is_host_active(%struct.musb* %164)
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %221

169:                                              ; preds = %163
  %170 = load i32, i32* %11, align 4
  %171 = ashr i32 %170, 8
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  switch i32 %172, label %201 [
    i32 1, label %173
    i32 2, label %176
    i32 3, label %179
    i32 4, label %182
    i32 5, label %187
    i32 6, label %198
  ]

173:                                              ; preds = %169
  %174 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i32, i32* @MUSB_TEST_J, align 4
  store i32 %175, i32* %15, align 4
  br label %202

176:                                              ; preds = %169
  %177 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %178 = load i32, i32* @MUSB_TEST_K, align 4
  store i32 %178, i32* %15, align 4
  br label %202

179:                                              ; preds = %169
  %180 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %181 = load i32, i32* @MUSB_TEST_SE0_NAK, align 4
  store i32 %181, i32* %15, align 4
  br label %202

182:                                              ; preds = %169
  %183 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %184 = load i32, i32* @MUSB_TEST_PACKET, align 4
  store i32 %184, i32* %15, align 4
  %185 = load %struct.musb*, %struct.musb** %14, align 8
  %186 = call i32 @musb_load_testpacket(%struct.musb* %185)
  br label %202

187:                                              ; preds = %169
  %188 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %189 = load i32, i32* @MUSB_TEST_FORCE_HOST, align 4
  %190 = load i32, i32* @MUSB_TEST_FORCE_HS, align 4
  %191 = or i32 %189, %190
  store i32 %191, i32* %15, align 4
  %192 = load %struct.musb*, %struct.musb** %14, align 8
  %193 = getelementptr inbounds %struct.musb, %struct.musb* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @MUSB_DEVCTL, align 4
  %196 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %197 = call i32 @musb_writeb(i32 %194, i32 %195, i32 %196)
  br label %202

198:                                              ; preds = %169
  %199 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %200 = load i32, i32* @MUSB_TEST_FIFO_ACCESS, align 4
  store i32 %200, i32* %15, align 4
  br label %202

201:                                              ; preds = %169
  br label %221

202:                                              ; preds = %198, %187, %182, %179, %176, %173
  %203 = load %struct.musb*, %struct.musb** %14, align 8
  %204 = getelementptr inbounds %struct.musb, %struct.musb* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @MUSB_TESTMODE, align 4
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @musb_writeb(i32 %205, i32 %206, i32 %207)
  br label %210

209:                                              ; preds = %143
  br label %221

210:                                              ; preds = %202, %160, %157, %156
  %211 = load %struct.musb*, %struct.musb** %14, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @musb_dbg(%struct.musb* %211, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %10, align 4
  %215 = shl i32 1, %214
  %216 = load %struct.musb*, %struct.musb** %14, align 8
  %217 = getelementptr inbounds %struct.musb, %struct.musb* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %224

220:                                              ; preds = %40
  br label %221

221:                                              ; preds = %220, %209, %201, %168, %142, %121, %69, %51, %45
  %222 = load i32, i32* @EPIPE, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %16, align 4
  br label %224

224:                                              ; preds = %221, %210, %122, %113, %81, %70, %46
  %225 = load %struct.musb*, %struct.musb** %14, align 8
  %226 = getelementptr inbounds %struct.musb, %struct.musb* %225, i32 0, i32 1
  %227 = load i64, i64* %17, align 8
  %228 = call i32 @spin_unlock_irqrestore(i32* %226, i64 %227)
  %229 = load i32, i32* %18, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load %struct.musb*, %struct.musb** %14, align 8
  %233 = call i32 @musb_start(%struct.musb* %232)
  br label %234

234:                                              ; preds = %231, %224
  %235 = load i32, i32* %16, align 4
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %234, %33
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local %struct.musb* @hcd_to_musb(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @musb_port_suspend(%struct.musb*, i32) #1

declare dso_local i32 @musb_platform_set_vbus(%struct.musb*, i32) #1

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @musb_has_gadget(%struct.musb*) #1

declare dso_local i32 @musb_port_reset(%struct.musb*, i32) #1

declare dso_local i32 @is_host_active(%struct.musb*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @musb_load_testpacket(%struct.musb*) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @musb_start(%struct.musb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
