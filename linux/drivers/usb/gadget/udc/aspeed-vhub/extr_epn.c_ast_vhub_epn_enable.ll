; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.ast_vhub_ep = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ast_vhub*, %struct.ast_vhub_dev* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ast_vhub = type { i32, i64 }
%struct.ast_vhub_dev = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Invalid EP enable,d_idx=%d,dev=%p,type=%d,mp=%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"EP number mismatch !\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Already enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Bogus device state: driver=%p speed=%d\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Enabling [%s] %s num %d maxpacket=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@AST_VHUB_DESCS_COUNT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Only one control endpoint\0A\00", align 1
@EP_TYPE_INT = common dso_local global i32 0, align 4
@EP_TYPE_BULK = common dso_local global i32 0, align 4
@EP_TYPE_ISO = common dso_local global i32 0, align 4
@VHUB_EP_CFG_DIR_OUT = common dso_local global i32 0, align 4
@VHUB_EP_CFG_ENABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"config=%08x\0A\00", align 1
@AST_VHUB_EP_CONFIG = common dso_local global i64 0, align 8
@VHUB_EP_DMA_CTRL_RESET = common dso_local global i32 0, align 4
@AST_VHUB_EP_DMA_CTLSTAT = common dso_local global i64 0, align 8
@AST_VHUB_EP_DESC_STATUS = common dso_local global i64 0, align 8
@AST_VHUB_EP_DESC_BASE = common dso_local global i64 0, align 8
@VHUB_EP_DMA_DESC_MODE = common dso_local global i32 0, align 4
@VHUB_EP_DMA_IN_LONG_MODE = common dso_local global i32 0, align 4
@VHUB_EP_DMA_SINGLE_STAGE = common dso_local global i32 0, align 4
@AST_VHUB_EP_TOGGLE = common dso_local global i64 0, align 8
@AST_VHUB_EP_ACK_ISR = common dso_local global i64 0, align 8
@AST_VHUB_EP_ACK_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @ast_vhub_epn_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_epn_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.ast_vhub_ep*, align 8
  %7 = alloca %struct.ast_vhub_dev*, align 8
  %8 = alloca %struct.ast_vhub*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %15 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %16 = call %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep* %15)
  store %struct.ast_vhub_ep* %16, %struct.ast_vhub_ep** %6, align 8
  %17 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %18 = icmp ne %struct.usb_ep* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %21 = icmp ne %struct.usb_endpoint_descriptor* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %459

25:                                               ; preds = %19
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %27 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %29 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %34 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %33, i32 0, i32 4
  %35 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %34, align 8
  %36 = icmp ne %struct.ast_vhub_dev* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %39 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @USB_DT_ENDPOINT, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %49 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %47, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %46, %43, %37, %32, %25
  %54 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %55 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %56 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %59 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %58, i32 0, i32 4
  %60 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %59, align 8
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %66 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %57, %struct.ast_vhub_dev* %60, i32 %63, i32 %64, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %459

72:                                               ; preds = %46
  %73 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %74 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %77 = call i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %76)
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %81 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %459

84:                                               ; preds = %72
  %85 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %86 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %92 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %459

95:                                               ; preds = %84
  %96 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %97 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %96, i32 0, i32 4
  %98 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %97, align 8
  store %struct.ast_vhub_dev* %98, %struct.ast_vhub_dev** %7, align 8
  %99 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %100 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %99, i32 0, i32 3
  %101 = load %struct.ast_vhub*, %struct.ast_vhub** %100, align 8
  store %struct.ast_vhub* %101, %struct.ast_vhub** %8, align 8
  %102 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %7, align 8
  %103 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %95
  %107 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %108 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %7, align 8
  %109 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %7, align 8
  %112 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %107, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %114)
  %116 = load i32, i32* @ESHUTDOWN, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %459

118:                                              ; preds = %95
  %119 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %120 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %119)
  %121 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %122 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 10
  store i64 %120, i64* %123, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %126 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %129 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %128)
  store i32 %129, i32* %10, align 4
  %130 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %131 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 12
  store i64 0, i64* %132, align 8
  %133 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %134 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 13
  store i64 0, i64* %135, align 8
  %136 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %137 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  %139 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %140 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  store i32 0, i32* %141, align 8
  %142 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %143 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  store i32 0, i32* %144, align 4
  %145 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %146 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %147 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 10
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @usb_ep_type_string(i32 %153)
  %155 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %156 = call i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %155)
  %157 = load i32, i32* %9, align 4
  %158 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %145, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %152, i32 %154, i64 %156, i32 %157)
  %159 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %160 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 11
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %118
  %165 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %166 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 10
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br label %170

170:                                              ; preds = %164, %118
  %171 = phi i1 [ false, %118 ], [ %169, %164 ]
  %172 = zext i1 %171 to i32
  %173 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %174 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  store i32 %172, i32* %175, align 8
  %176 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %177 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %170
  %182 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %183 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 11
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @AST_VHUB_DESCS_COUNT, align 4
  %187 = mul nsw i32 8, %186
  %188 = call i32 @memset(i64 %185, i32 0, i32 %187)
  br label %189

189:                                              ; preds = %181, %170
  %190 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %191 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %195 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 5
  store i32 %193, i32* %196, align 4
  %197 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %198 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 10
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %225

202:                                              ; preds = %189
  %203 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %204 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 3
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %214, %202
  %209 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %210 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = icmp sgt i32 %212, 4095
  br i1 %213, label %214, label %224

214:                                              ; preds = %208
  %215 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %216 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %220 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %222, %218
  store i32 %223, i32* %221, align 4
  br label %208

224:                                              ; preds = %208
  br label %225

225:                                              ; preds = %224, %189
  %226 = load i32, i32* %10, align 4
  switch i32 %226, label %244 [
    i32 130, label %227
    i32 129, label %232
    i32 131, label %235
    i32 128, label %238
  ]

227:                                              ; preds = %225
  %228 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %229 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %228, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %3, align 4
  br label %459

232:                                              ; preds = %225
  %233 = load i32, i32* @EP_TYPE_INT, align 4
  %234 = call i32 @VHUB_EP_CFG_SET_TYPE(i32 %233)
  store i32 %234, i32* %12, align 4
  br label %247

235:                                              ; preds = %225
  %236 = load i32, i32* @EP_TYPE_BULK, align 4
  %237 = call i32 @VHUB_EP_CFG_SET_TYPE(i32 %236)
  store i32 %237, i32* %12, align 4
  br label %247

238:                                              ; preds = %225
  %239 = load i32, i32* @EP_TYPE_ISO, align 4
  %240 = call i32 @VHUB_EP_CFG_SET_TYPE(i32 %239)
  store i32 %240, i32* %12, align 4
  %241 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %242 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  store i32 1, i32* %243, align 4
  br label %247

244:                                              ; preds = %225
  %245 = load i32, i32* @EINVAL, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %3, align 4
  br label %459

247:                                              ; preds = %238, %235, %232
  %248 = load i32, i32* %9, align 4
  %249 = icmp slt i32 %248, 1024
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @VHUB_EP_CFG_SET_MAX_PKT(i32 %251)
  %253 = load i32, i32* %12, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %12, align 4
  br label %255

255:                                              ; preds = %250, %247
  %256 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %257 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 10
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %255
  %262 = load i32, i32* @VHUB_EP_CFG_DIR_OUT, align 4
  %263 = load i32, i32* %12, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %12, align 4
  br label %265

265:                                              ; preds = %261, %255
  %266 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %267 = call i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %266)
  %268 = call i32 @VHUB_EP_CFG_SET_EP_NUM(i64 %267)
  %269 = load i32, i32* %12, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %12, align 4
  %271 = load i32, i32* @VHUB_EP_CFG_ENABLE, align 4
  %272 = load i32, i32* %12, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %12, align 4
  %274 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %7, align 8
  %275 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %276, 1
  %278 = call i32 @VHUB_EP_CFG_SET_DEV(i64 %277)
  %279 = load i32, i32* %12, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %12, align 4
  %281 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %282 = load i32, i32* %12, align 4
  %283 = call i32 @EPVDBG(%struct.ast_vhub_ep* %281, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %282)
  %284 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %285 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %284, i32 0, i32 0
  %286 = load i64, i64* %11, align 8
  %287 = call i32 @spin_lock_irqsave(i32* %285, i64 %286)
  %288 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %289 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 9
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @AST_VHUB_EP_CONFIG, align 8
  %293 = add nsw i64 %291, %292
  %294 = call i32 @writel(i32 0, i64 %293)
  %295 = load i32, i32* @VHUB_EP_DMA_CTRL_RESET, align 4
  %296 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %297 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 9
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @AST_VHUB_EP_DMA_CTLSTAT, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 @writel(i32 %295, i64 %301)
  %303 = load i32, i32* %12, align 4
  %304 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %305 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 9
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @AST_VHUB_EP_CONFIG, align 8
  %309 = add nsw i64 %307, %308
  %310 = call i32 @writel(i32 %303, i64 %309)
  %311 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %312 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %376

316:                                              ; preds = %265
  %317 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %318 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 9
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @AST_VHUB_EP_DESC_STATUS, align 8
  %322 = add nsw i64 %320, %321
  %323 = call i32 @writel(i32 0, i64 %322)
  %324 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %325 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %329 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 9
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @AST_VHUB_EP_DESC_BASE, align 8
  %333 = add nsw i64 %331, %332
  %334 = call i32 @writel(i32 %327, i64 %333)
  %335 = load i32, i32* @VHUB_EP_DMA_DESC_MODE, align 4
  %336 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %337 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 7
  store i32 %335, i32* %338, align 4
  %339 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %340 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 10
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %316
  %345 = load i32, i32* @VHUB_EP_DMA_IN_LONG_MODE, align 4
  %346 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %347 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 7
  %349 = load i32, i32* %348, align 4
  %350 = or i32 %349, %345
  store i32 %350, i32* %348, align 4
  br label %351

351:                                              ; preds = %344, %316
  %352 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %353 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 7
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @VHUB_EP_DMA_CTRL_RESET, align 4
  %357 = or i32 %355, %356
  %358 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %359 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 9
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @AST_VHUB_EP_DMA_CTLSTAT, align 8
  %363 = add nsw i64 %361, %362
  %364 = call i32 @writel(i32 %357, i64 %363)
  %365 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %366 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 7
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %370 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 9
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @AST_VHUB_EP_DMA_CTLSTAT, align 8
  %374 = add nsw i64 %372, %373
  %375 = call i32 @writel(i32 %368, i64 %374)
  br label %412

376:                                              ; preds = %265
  %377 = load i32, i32* @VHUB_EP_DMA_SINGLE_STAGE, align 4
  %378 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %379 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 7
  store i32 %377, i32* %380, align 4
  %381 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %382 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 7
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @VHUB_EP_DMA_CTRL_RESET, align 4
  %386 = or i32 %384, %385
  %387 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %388 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 9
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @AST_VHUB_EP_DMA_CTLSTAT, align 8
  %392 = add nsw i64 %390, %391
  %393 = call i32 @writel(i32 %386, i64 %392)
  %394 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %395 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %399 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 9
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @AST_VHUB_EP_DMA_CTLSTAT, align 8
  %403 = add nsw i64 %401, %402
  %404 = call i32 @writel(i32 %397, i64 %403)
  %405 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %406 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 9
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* @AST_VHUB_EP_DESC_STATUS, align 8
  %410 = add nsw i64 %408, %409
  %411 = call i32 @writel(i32 0, i64 %410)
  br label %412

412:                                              ; preds = %376, %351
  %413 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %414 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 8
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @VHUB_EP_TOGGLE_SET_EPNUM(i32 %416)
  %418 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %419 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %418, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @AST_VHUB_EP_TOGGLE, align 8
  %422 = add nsw i64 %420, %421
  %423 = call i32 @writel(i32 %417, i64 %422)
  %424 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %425 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 8
  %427 = load i32, i32* %426, align 8
  %428 = call i32 @VHUB_EP_IRQ(i32 %427)
  store i32 %428, i32* %14, align 4
  %429 = load i32, i32* %14, align 4
  %430 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %431 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @AST_VHUB_EP_ACK_ISR, align 8
  %434 = add nsw i64 %432, %433
  %435 = call i32 @writel(i32 %429, i64 %434)
  %436 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %437 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @AST_VHUB_EP_ACK_IER, align 8
  %440 = add nsw i64 %438, %439
  %441 = call i32 @readl(i64 %440)
  store i32 %441, i32* %13, align 4
  %442 = load i32, i32* %14, align 4
  %443 = load i32, i32* %13, align 4
  %444 = or i32 %443, %442
  store i32 %444, i32* %13, align 4
  %445 = load i32, i32* %13, align 4
  %446 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %447 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %446, i32 0, i32 1
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @AST_VHUB_EP_ACK_IER, align 8
  %450 = add nsw i64 %448, %449
  %451 = call i32 @writel(i32 %445, i64 %450)
  %452 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %453 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 0
  store i32 1, i32* %454, align 8
  %455 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %456 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %455, i32 0, i32 0
  %457 = load i64, i64* %11, align 8
  %458 = call i32 @spin_unlock_irqrestore(i32* %456, i64 %457)
  store i32 0, i32* %3, align 4
  br label %459

459:                                              ; preds = %412, %244, %227, %106, %90, %79, %53, %22
  %460 = load i32, i32* %3, align 4
  ret i32 %460
}

declare dso_local %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*, ...) #1

declare dso_local i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_ep_type_string(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @VHUB_EP_CFG_SET_TYPE(i32) #1

declare dso_local i32 @VHUB_EP_CFG_SET_MAX_PKT(i32) #1

declare dso_local i32 @VHUB_EP_CFG_SET_EP_NUM(i64) #1

declare dso_local i32 @VHUB_EP_CFG_SET_DEV(i64) #1

declare dso_local i32 @EPVDBG(%struct.ast_vhub_ep*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @VHUB_EP_TOGGLE_SET_EPNUM(i32) #1

declare dso_local i32 @VHUB_EP_IRQ(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
