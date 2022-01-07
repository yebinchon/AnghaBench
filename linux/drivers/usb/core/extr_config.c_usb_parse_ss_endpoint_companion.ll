; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_parse_ss_endpoint_companion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_parse_ss_endpoint_companion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64 }
%struct.usb_ss_ep_comp_descriptor = type { i64, i32, i32, i32, i64 }

@USB_DT_SS_ENDPOINT_COMP = common dso_local global i64 0, align 8
@USB_DT_SS_EP_COMP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"No SuperSpeed endpoint companion for config %d  interface %d altsetting %d ep %d: using minimum values\0A\00", align 1
@.str.1 = private unnamed_addr constant [101 x i8] c"Control endpoint with bMaxBurst = %d in config %d interface %d altsetting %d ep %d: setting to zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"Endpoint with bMaxBurst = %d in config %d interface %d altsetting %d ep %d: setting to 15\0A\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"%s endpoint with bmAttributes = %d in config %d interface %d altsetting %d ep %d: setting to zero\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.6 = private unnamed_addr constant [106 x i8] c"Bulk endpoint with more than 65536 streams in config %d interface %d altsetting %d ep %d: setting to max\0A\00", align 1
@.str.7 = private unnamed_addr constant [90 x i8] c"Isoc endpoint has Mult of %d in config %d interface %d altsetting %d ep %d: setting to 3\0A\00", align 1
@.str.8 = private unnamed_addr constant [103 x i8] c"%s endpoint with wBytesPerInterval of %d in config %d interface %d altsetting %d ep %d: setting to %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Int\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i32, i32, %struct.usb_host_endpoint*, i8*, i32)* @usb_parse_ss_endpoint_companion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_parse_ss_endpoint_companion(%struct.device* %0, i32 %1, i32 %2, i32 %3, %struct.usb_host_endpoint* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_host_endpoint*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.usb_ss_ep_comp_descriptor*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.usb_host_endpoint* %4, %struct.usb_host_endpoint** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i8*, i8** %13, align 8
  %18 = bitcast i8* %17 to %struct.usb_ss_ep_comp_descriptor*
  store %struct.usb_ss_ep_comp_descriptor* %18, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %19 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %20 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USB_DT_SS_ENDPOINT_COMP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @USB_DT_SS_EP_COMP_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24, %7
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %34 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %36)
  %38 = load i32, i32* @USB_DT_SS_EP_COMP_SIZE, align 4
  %39 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %40 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i64, i64* @USB_DT_SS_ENDPOINT_COMP, align 8
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %44 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  store i64 %42, i64* %45, align 8
  %46 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %47 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %46, i32 0, i32 0
  %48 = call i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %28
  %51 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %52 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %51, i32 0, i32 0
  %53 = call i64 @usb_endpoint_xfer_int(%struct.TYPE_7__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50, %28
  %56 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %57 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %61 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %50
  br label %313

64:                                               ; preds = %24
  %65 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %66 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %13, align 8
  %70 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %71 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %14, align 4
  %77 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %78 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %77, i32 0, i32 1
  %79 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %80 = load i32, i32* @USB_DT_SS_EP_COMP_SIZE, align 4
  %81 = call i32 @memcpy(%struct.TYPE_8__* %78, %struct.usb_ss_ep_comp_descriptor* %79, i32 %80)
  %82 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %83 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %82, i32 0, i32 0
  %84 = call i64 @usb_endpoint_xfer_control(%struct.TYPE_7__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %64
  %87 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %88 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %8, align 8
  %93 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %94 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %100 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %92, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96, i32 %97, i32 %98, i32 %102)
  %104 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %105 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  br label %129

107:                                              ; preds = %86, %64
  %108 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %109 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 15
  br i1 %111, label %112, label %128

112:                                              ; preds = %107
  %113 = load %struct.device*, %struct.device** %8, align 8
  %114 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %115 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %121 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %113, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119, i32 %123)
  %125 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %126 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i32 15, i32* %127, align 4
  br label %128

128:                                              ; preds = %112, %107
  br label %129

129:                                              ; preds = %128, %91
  %130 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %131 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %130, i32 0, i32 0
  %132 = call i64 @usb_endpoint_xfer_control(%struct.TYPE_7__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %136 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %135, i32 0, i32 0
  %137 = call i64 @usb_endpoint_xfer_int(%struct.TYPE_7__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %134, %129
  %140 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %141 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %139
  %145 = load %struct.device*, %struct.device** %8, align 8
  %146 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %147 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %146, i32 0, i32 0
  %148 = call i64 @usb_endpoint_xfer_control(%struct.TYPE_7__* %147)
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %152 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %153 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %159 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %145, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i64 0, i64 0), i8* %151, i32 %154, i32 %155, i32 %156, i32 %157, i32 %161)
  %163 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %164 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store i32 0, i32* %165, align 8
  br label %225

166:                                              ; preds = %139, %134
  %167 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %168 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %167, i32 0, i32 0
  %169 = call i64 @usb_endpoint_xfer_bulk(%struct.TYPE_7__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %166
  %172 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %173 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 16
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = load %struct.device*, %struct.device** %8, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %182 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %177, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.6, i64 0, i64 0), i32 %178, i32 %179, i32 %180, i32 %184)
  %186 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %187 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  store i32 16, i32* %188, align 8
  br label %224

189:                                              ; preds = %171, %166
  %190 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %191 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %190, i32 0, i32 0
  %192 = call i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %223

194:                                              ; preds = %189
  %195 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %196 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @USB_SS_SSP_ISOC_COMP(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %223, label %200

200:                                              ; preds = %194
  %201 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %202 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @USB_SS_MULT(i32 %203)
  %205 = icmp sgt i32 %204, 3
  br i1 %205, label %206, label %223

206:                                              ; preds = %200
  %207 = load %struct.device*, %struct.device** %8, align 8
  %208 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %209 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @USB_SS_MULT(i32 %210)
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %216 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %207, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.7, i64 0, i64 0), i32 %211, i32 %212, i32 %213, i32 %214, i32 %218)
  %220 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %221 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  store i32 2, i32* %222, align 8
  br label %223

223:                                              ; preds = %206, %200, %194, %189
  br label %224

224:                                              ; preds = %223, %176
  br label %225

225:                                              ; preds = %224, %144
  %226 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %227 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %226, i32 0, i32 0
  %228 = call i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %225
  %231 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %232 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, 1
  %235 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %236 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @USB_SS_MULT(i32 %237)
  %239 = mul nsw i32 %234, %238
  %240 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %241 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %240, i32 0, i32 0
  %242 = call i32 @usb_endpoint_maxp(%struct.TYPE_7__* %241)
  %243 = mul nsw i32 %239, %242
  store i32 %243, i32* %16, align 4
  br label %260

244:                                              ; preds = %225
  %245 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %246 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %245, i32 0, i32 0
  %247 = call i64 @usb_endpoint_xfer_int(%struct.TYPE_7__* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %244
  %250 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %251 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %250, i32 0, i32 0
  %252 = call i32 @usb_endpoint_maxp(%struct.TYPE_7__* %251)
  %253 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %254 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %255, 1
  %257 = mul nsw i32 %252, %256
  store i32 %257, i32* %16, align 4
  br label %259

258:                                              ; preds = %244
  store i32 999999, i32* %16, align 4
  br label %259

259:                                              ; preds = %258, %249
  br label %260

260:                                              ; preds = %259, %230
  %261 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %262 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @le16_to_cpu(i32 %263)
  %265 = load i32, i32* %16, align 4
  %266 = icmp sgt i32 %264, %265
  br i1 %266, label %267, label %293

267:                                              ; preds = %260
  %268 = load %struct.device*, %struct.device** %8, align 8
  %269 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %270 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %269, i32 0, i32 0
  %271 = call i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__* %270)
  %272 = icmp ne i64 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %275 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %276 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @le16_to_cpu(i32 %277)
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %283 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %16, align 4
  %287 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %268, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i64 0, i64 0), i8* %274, i32 %278, i32 %279, i32 %280, i32 %281, i32 %285, i32 %286)
  %288 = load i32, i32* %16, align 4
  %289 = call i32 @cpu_to_le16(i32 %288)
  %290 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %291 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 3
  store i32 %289, i32* %292, align 4
  br label %293

293:                                              ; preds = %267, %260
  %294 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %295 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %294, i32 0, i32 0
  %296 = call i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %313

298:                                              ; preds = %293
  %299 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  %300 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = call i64 @USB_SS_SSP_ISOC_COMP(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %298
  %305 = load %struct.device*, %struct.device** %8, align 8
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %310 = load i8*, i8** %13, align 8
  %311 = load i32, i32* %14, align 4
  %312 = call i32 @usb_parse_ssp_isoc_endpoint_companion(%struct.device* %305, i32 %306, i32 %307, i32 %308, %struct.usb_host_endpoint* %309, i8* %310, i32 %311)
  br label %313

313:                                              ; preds = %63, %304, %298, %293
  ret void
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.usb_ss_ep_comp_descriptor*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_control(%struct.TYPE_7__*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.TYPE_7__*) #1

declare dso_local i64 @USB_SS_SSP_ISOC_COMP(i32) #1

declare dso_local i32 @USB_SS_MULT(i32) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.TYPE_7__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_parse_ssp_isoc_endpoint_companion(%struct.device*, i32, i32, i32, %struct.usb_host_endpoint*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
