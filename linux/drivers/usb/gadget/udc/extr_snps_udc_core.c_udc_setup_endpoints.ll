; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_setup_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_setup_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.udc = type { i64, i64, i64, %struct.TYPE_7__, %struct.udc_ep*, %struct.TYPE_9__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.udc_ep = type { i64, i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_6__*, i32*, i32, i32, %struct.udc* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"udc_setup_endpoints()\0A\00", align 1
@UDC_DEVSTS_ENUM_SPEED = common dso_local global i32 0, align 4
@UDC_DEVSTS_ENUM_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@UDC_DEVSTS_ENUM_SPEED_FULL = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@UDC_EP_NUM = common dso_local global i64 0, align 8
@ep_info = common dso_local global %struct.TYPE_10__* null, align 8
@UDC_EPIN_NUM = common dso_local global i64 0, align 8
@UDC_TXFIFO_SIZE = common dso_local global i32 0, align 4
@UDC_RXFIFO_SIZE = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@UDC_EP0IN_IX = common dso_local global i64 0, align 8
@UDC_EP0OUT_IX = common dso_local global i64 0, align 8
@UDC_EPCTL_SNAK = common dso_local global i32 0, align 4
@UDC_FS_EP0IN_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_FS_EP0OUT_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_EP0IN_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_EP0OUT_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @udc_setup_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_setup_endpoints(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca %struct.udc_ep*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.udc* %0, %struct.udc** %2, align 8
  %6 = load %struct.udc*, %struct.udc** %2, align 8
  %7 = call i32 @DBG(%struct.udc* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.udc*, %struct.udc** %2, align 8
  %9 = getelementptr inbounds %struct.udc, %struct.udc* %8, i32 0, i32 5
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = call i64 @readl(i32* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @UDC_DEVSTS_ENUM_SPEED, align 4
  %15 = call i64 @AMD_GETBITS(i64 %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @UDC_DEVSTS_ENUM_SPEED_HIGH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i64, i64* @USB_SPEED_HIGH, align 8
  %21 = load %struct.udc*, %struct.udc** %2, align 8
  %22 = getelementptr inbounds %struct.udc, %struct.udc* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  br label %34

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @UDC_DEVSTS_ENUM_SPEED_FULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i64, i64* @USB_SPEED_FULL, align 8
  %30 = load %struct.udc*, %struct.udc** %2, align 8
  %31 = getelementptr inbounds %struct.udc, %struct.udc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %19
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %159, %34
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @UDC_EP_NUM, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %162

39:                                               ; preds = %35
  %40 = load %struct.udc*, %struct.udc** %2, align 8
  %41 = getelementptr inbounds %struct.udc, %struct.udc* %40, i32 0, i32 4
  %42 = load %struct.udc_ep*, %struct.udc_ep** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %42, i64 %43
  store %struct.udc_ep* %44, %struct.udc_ep** %3, align 8
  %45 = load %struct.udc*, %struct.udc** %2, align 8
  %46 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %47 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %46, i32 0, i32 9
  store %struct.udc* %45, %struct.udc** %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ep_info, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %54 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ep_info, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %62 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %66 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.udc*, %struct.udc** %2, align 8
  %68 = getelementptr inbounds %struct.udc, %struct.udc* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %71 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 4
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @UDC_EPIN_NUM, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %39
  %76 = load i32, i32* @UDC_TXFIFO_SIZE, align 4
  %77 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %78 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %80 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  br label %87

81:                                               ; preds = %39
  %82 = load i32, i32* @UDC_RXFIFO_SIZE, align 4
  %83 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %84 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %86 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %81, %75
  %88 = load %struct.udc*, %struct.udc** %2, align 8
  %89 = getelementptr inbounds %struct.udc, %struct.udc* %88, i32 0, i32 6
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %94 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %93, i32 0, i32 5
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %94, align 8
  %95 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %96 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %87
  %101 = load %struct.udc*, %struct.udc** %2, align 8
  %102 = getelementptr inbounds %struct.udc, %struct.udc* %101, i32 0, i32 5
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %105 = call i32 @ep_init(%struct.TYPE_9__* %103, %struct.udc_ep* %104)
  br label %106

106:                                              ; preds = %100, %87
  %107 = load i64, i64* @use_dma, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %158

109:                                              ; preds = %106
  %110 = load %struct.udc*, %struct.udc** %2, align 8
  %111 = getelementptr inbounds %struct.udc, %struct.udc* %110, i32 0, i32 5
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %115 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %114, i32 0, i32 6
  store i32* %113, i32** %115, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @UDC_EP0IN_IX, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %157

119:                                              ; preds = %109
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %157

123:                                              ; preds = %119
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* @UDC_EPIN_NUM, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %157

127:                                              ; preds = %123
  %128 = load %struct.udc*, %struct.udc** %2, align 8
  %129 = getelementptr inbounds %struct.udc, %struct.udc* %128, i32 0, i32 4
  %130 = load %struct.udc_ep*, %struct.udc_ep** %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %130, i64 %131
  %133 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %132, i32 0, i32 5
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = call i64 @readl(i32* %135)
  store i64 %136, i64* %5, align 8
  %137 = load i32, i32* @UDC_EPCTL_SNAK, align 4
  %138 = call i64 @AMD_BIT(i32 %137)
  %139 = load i64, i64* %5, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %5, align 8
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.udc*, %struct.udc** %2, align 8
  %143 = getelementptr inbounds %struct.udc, %struct.udc* %142, i32 0, i32 4
  %144 = load %struct.udc_ep*, %struct.udc_ep** %143, align 8
  %145 = load i64, i64* %4, align 8
  %146 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %144, i64 %145
  %147 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %146, i32 0, i32 5
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = call i32 @writel(i64 %141, i32* %149)
  %151 = load %struct.udc*, %struct.udc** %2, align 8
  %152 = getelementptr inbounds %struct.udc, %struct.udc* %151, i32 0, i32 4
  %153 = load %struct.udc_ep*, %struct.udc_ep** %152, align 8
  %154 = load i64, i64* %4, align 8
  %155 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %153, i64 %154
  %156 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %155, i32 0, i32 2
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %127, %123, %119, %109
  br label %158

158:                                              ; preds = %157, %106
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %4, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %4, align 8
  br label %35

162:                                              ; preds = %35
  %163 = load %struct.udc*, %struct.udc** %2, align 8
  %164 = getelementptr inbounds %struct.udc, %struct.udc* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @USB_SPEED_FULL, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %162
  %170 = load %struct.udc*, %struct.udc** %2, align 8
  %171 = getelementptr inbounds %struct.udc, %struct.udc* %170, i32 0, i32 4
  %172 = load %struct.udc_ep*, %struct.udc_ep** %171, align 8
  %173 = load i64, i64* @UDC_EP0IN_IX, align 8
  %174 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %172, i64 %173
  %175 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %174, i32 0, i32 4
  %176 = load i32, i32* @UDC_FS_EP0IN_MAX_PKT_SIZE, align 4
  %177 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %175, i32 %176)
  %178 = load %struct.udc*, %struct.udc** %2, align 8
  %179 = getelementptr inbounds %struct.udc, %struct.udc* %178, i32 0, i32 4
  %180 = load %struct.udc_ep*, %struct.udc_ep** %179, align 8
  %181 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %182 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %180, i64 %181
  %183 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %182, i32 0, i32 4
  %184 = load i32, i32* @UDC_FS_EP0OUT_MAX_PKT_SIZE, align 4
  %185 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %183, i32 %184)
  br label %211

186:                                              ; preds = %162
  %187 = load %struct.udc*, %struct.udc** %2, align 8
  %188 = getelementptr inbounds %struct.udc, %struct.udc* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @USB_SPEED_HIGH, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %186
  %194 = load %struct.udc*, %struct.udc** %2, align 8
  %195 = getelementptr inbounds %struct.udc, %struct.udc* %194, i32 0, i32 4
  %196 = load %struct.udc_ep*, %struct.udc_ep** %195, align 8
  %197 = load i64, i64* @UDC_EP0IN_IX, align 8
  %198 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %196, i64 %197
  %199 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %198, i32 0, i32 4
  %200 = load i32, i32* @UDC_EP0IN_MAX_PKT_SIZE, align 4
  %201 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %199, i32 %200)
  %202 = load %struct.udc*, %struct.udc** %2, align 8
  %203 = getelementptr inbounds %struct.udc, %struct.udc* %202, i32 0, i32 4
  %204 = load %struct.udc_ep*, %struct.udc_ep** %203, align 8
  %205 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %206 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %204, i64 %205
  %207 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %206, i32 0, i32 4
  %208 = load i32, i32* @UDC_EP0OUT_MAX_PKT_SIZE, align 4
  %209 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %207, i32 %208)
  br label %210

210:                                              ; preds = %193, %186
  br label %211

211:                                              ; preds = %210, %169
  %212 = load %struct.udc*, %struct.udc** %2, align 8
  %213 = getelementptr inbounds %struct.udc, %struct.udc* %212, i32 0, i32 4
  %214 = load %struct.udc_ep*, %struct.udc_ep** %213, align 8
  %215 = load i64, i64* @UDC_EP0IN_IX, align 8
  %216 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %214, i64 %215
  %217 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %216, i32 0, i32 4
  %218 = load %struct.udc*, %struct.udc** %2, align 8
  %219 = getelementptr inbounds %struct.udc, %struct.udc* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  store %struct.TYPE_8__* %217, %struct.TYPE_8__** %220, align 8
  %221 = load %struct.udc*, %struct.udc** %2, align 8
  %222 = getelementptr inbounds %struct.udc, %struct.udc* %221, i32 0, i32 4
  %223 = load %struct.udc_ep*, %struct.udc_ep** %222, align 8
  %224 = load i64, i64* @UDC_EP0IN_IX, align 8
  %225 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %223, i64 %224
  %226 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %225, i32 0, i32 3
  store i64 0, i64* %226, align 8
  %227 = load %struct.udc*, %struct.udc** %2, align 8
  %228 = getelementptr inbounds %struct.udc, %struct.udc* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = call i32 @INIT_LIST_HEAD(i32* %231)
  %233 = load %struct.udc*, %struct.udc** %2, align 8
  %234 = getelementptr inbounds %struct.udc, %struct.udc* %233, i32 0, i32 2
  store i64 0, i64* %234, align 8
  %235 = load %struct.udc*, %struct.udc** %2, align 8
  %236 = getelementptr inbounds %struct.udc, %struct.udc* %235, i32 0, i32 1
  store i64 0, i64* %236, align 8
  %237 = load %struct.udc*, %struct.udc** %2, align 8
  %238 = getelementptr inbounds %struct.udc, %struct.udc* %237, i32 0, i32 0
  store i64 0, i64* %238, align 8
  ret void
}

declare dso_local i32 @DBG(%struct.udc*, i8*) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i64 @AMD_GETBITS(i64, i32) #1

declare dso_local i32 @ep_init(%struct.TYPE_9__*, %struct.udc_ep*) #1

declare dso_local i64 @AMD_BIT(i32) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
