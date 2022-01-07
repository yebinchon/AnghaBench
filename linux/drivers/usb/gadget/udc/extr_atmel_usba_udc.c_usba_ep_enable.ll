; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i64 }
%struct.usba_ep = type { i32, i64, i32, i32, i32, i64, %struct.TYPE_2__, %struct.usba_udc*, i32 }
%struct.TYPE_2__ = type { i64, i64, %struct.usb_endpoint_descriptor* }
%struct.usba_udc = type { i32 }

@DBG_GADGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: ep_enable: desc=%p\0A\00", align 1
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ep_enable: Invalid argument\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: EPT_CFG = 0x%lx (maxpacket = %lu)\0A\00", align 1
@USBA_EPT_DIR_IN = common dso_local global i32 0, align 4
@EPT_TYPE = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_CONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"ep_enable: %s is not isoc capable\0A\00", align 1
@USBA_EPT_TYPE_ISO = common dso_local global i32 0, align 4
@NB_TRANS = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_BULK = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_INT = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@CTL_ENB = common dso_local global i32 0, align 4
@USBA_EPT_ENABLE = common dso_local global i32 0, align 4
@EPT_INT = common dso_local global i32 0, align 4
@DMA_INT = common dso_local global i32 0, align 4
@USBA_AUTO_VALID = common dso_local global i32 0, align 4
@USBA_INTDIS_DMA = common dso_local global i32 0, align 4
@DBG_HW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"EPT_CFG%d after init: %#08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"INT_ENB after init: %#08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @usba_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usba_ep*, align 8
  %7 = alloca %struct.usba_udc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %13 = call %struct.usba_ep* @to_usba_ep(%struct.usb_ep* %12)
  store %struct.usba_ep* %13, %struct.usba_ep** %6, align 8
  %14 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %15 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %14, i32 0, i32 7
  %16 = load %struct.usba_udc*, %struct.usba_udc** %15, align 8
  store %struct.usba_udc* %16, %struct.usba_udc** %7, align 8
  %17 = load i32, i32* @DBG_GADGET, align 4
  %18 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %19 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %23 = call i32 (i32, i8*, ...) @DBG(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %21, %struct.usb_endpoint_descriptor* %22)
  %24 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %25 = call i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %32 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %55, label %35

35:                                               ; preds = %2
  %36 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %37 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %42 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %52 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49, %46, %40, %35, %2
  %56 = load i32, i32* @DBG_ERR, align 4
  %57 = call i32 (i32, i8*, ...) @DBG(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %230

60:                                               ; preds = %49
  %61 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %62 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  %63 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %64 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %63, i32 0, i32 3
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @DBG_ERR, align 4
  %66 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %67 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %71 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 (i32, i8*, ...) @DBG(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %69, i32 %72, i64 %73)
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %76 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %60
  %79 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %80 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* @USBA_EPT_DIR_IN, align 4
  %82 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %83 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %78, %60
  %87 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %88 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %87)
  switch i32 %88, label %152 [
    i32 130, label %89
    i32 128, label %97
    i32 131, label %136
    i32 129, label %144
  ]

89:                                               ; preds = %86
  %90 = load i32, i32* @EPT_TYPE, align 4
  %91 = load i32, i32* @USBA_EPT_TYPE_CONTROL, align 4
  %92 = call i32 @USBA_BF(i32 %90, i32 %91)
  %93 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %94 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %152

97:                                               ; preds = %86
  %98 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %99 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @DBG_ERR, align 4
  %104 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %105 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i32, i8*, ...) @DBG(i32 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %230

111:                                              ; preds = %97
  %112 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %113 = call i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ugt i32 %114, 3
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %230

119:                                              ; preds = %111
  %120 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %121 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  %122 = load i32, i32* @EPT_TYPE, align 4
  %123 = load i32, i32* @USBA_EPT_TYPE_ISO, align 4
  %124 = call i32 @USBA_BF(i32 %122, i32 %123)
  %125 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %126 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* @NB_TRANS, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @USBA_BF(i32 %129, i32 %130)
  %132 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %133 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %152

136:                                              ; preds = %86
  %137 = load i32, i32* @EPT_TYPE, align 4
  %138 = load i32, i32* @USBA_EPT_TYPE_BULK, align 4
  %139 = call i32 @USBA_BF(i32 %137, i32 %138)
  %140 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %141 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %152

144:                                              ; preds = %86
  %145 = load i32, i32* @EPT_TYPE, align 4
  %146 = load i32, i32* @USBA_EPT_TYPE_INT, align 4
  %147 = call i32 @USBA_BF(i32 %145, i32 %146)
  %148 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %149 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %86, %144, %136, %119, %89
  %153 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %154 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %153, i32 0, i32 7
  %155 = load %struct.usba_udc*, %struct.usba_udc** %154, align 8
  %156 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %155, i32 0, i32 0
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @spin_lock_irqsave(i32* %156, i64 %157)
  %159 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %160 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %161 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %159, %struct.usb_endpoint_descriptor** %162, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %165 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  store i64 %163, i64* %166, align 8
  %167 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %168 = load i32, i32* @CFG, align 4
  %169 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %170 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @usba_ep_writel(%struct.usba_ep* %167, i32 %168, i32 %171)
  %173 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %174 = load i32, i32* @CTL_ENB, align 4
  %175 = load i32, i32* @USBA_EPT_ENABLE, align 4
  %176 = call i32 @usba_ep_writel(%struct.usba_ep* %173, i32 %174, i32 %175)
  %177 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %178 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %204

181:                                              ; preds = %152
  %182 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %183 = load i32, i32* @EPT_INT, align 4
  %184 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %185 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = shl i32 1, %186
  %188 = call i32 @USBA_BF(i32 %183, i32 %187)
  %189 = load i32, i32* @DMA_INT, align 4
  %190 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %191 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = shl i32 1, %192
  %194 = call i32 @USBA_BF(i32 %189, i32 %193)
  %195 = or i32 %188, %194
  %196 = call i32 @usba_int_enb_set(%struct.usba_udc* %182, i32 %195)
  %197 = load i32, i32* @USBA_AUTO_VALID, align 4
  %198 = load i32, i32* @USBA_INTDIS_DMA, align 4
  %199 = or i32 %197, %198
  store i32 %199, i32* %11, align 4
  %200 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %201 = load i32, i32* @CTL_ENB, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @usba_ep_writel(%struct.usba_ep* %200, i32 %201, i32 %202)
  br label %213

204:                                              ; preds = %152
  %205 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %206 = load i32, i32* @EPT_INT, align 4
  %207 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %208 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = shl i32 1, %209
  %211 = call i32 @USBA_BF(i32 %206, i32 %210)
  %212 = call i32 @usba_int_enb_set(%struct.usba_udc* %205, i32 %211)
  br label %213

213:                                              ; preds = %204, %181
  %214 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %215 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %214, i32 0, i32 0
  %216 = load i64, i64* %8, align 8
  %217 = call i32 @spin_unlock_irqrestore(i32* %215, i64 %216)
  %218 = load i32, i32* @DBG_HW, align 4
  %219 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %220 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %223 = load i32, i32* @CFG, align 4
  %224 = call i64 @usba_ep_readl(%struct.usba_ep* %222, i32 %223)
  %225 = call i32 (i32, i8*, ...) @DBG(i32 %218, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %221, i64 %224)
  %226 = load i32, i32* @DBG_HW, align 4
  %227 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %228 = call i64 @usba_int_enb_get(%struct.usba_udc* %227)
  %229 = call i32 (i32, i8*, ...) @DBG(i32 %226, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %228)
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %213, %116, %102, %55
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local %struct.usba_ep* @to_usba_ep(%struct.usb_ep*) #1

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @USBA_BF(i32, i32) #1

declare dso_local i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @usba_int_enb_set(%struct.usba_udc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @usba_ep_readl(%struct.usba_ep*, i32) #1

declare dso_local i64 @usba_int_enb_get(%struct.usba_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
