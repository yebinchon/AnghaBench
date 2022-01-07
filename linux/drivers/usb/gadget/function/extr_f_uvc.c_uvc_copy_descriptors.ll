; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_copy_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_copy_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_descriptor_header = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.uvc_device = type { %struct.TYPE_13__, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header** }
%struct.uvc_descriptor_header = type { i32 }
%struct.uvc_input_header_descriptor = type { i32, i8* }
%struct.uvc_header_descriptor = type { i32, i32*, i8* }

@uvc_ss_streaming = common dso_local global %struct.usb_descriptor_header** null, align 8
@uvc_hs_streaming = common dso_local global %struct.usb_descriptor_header** null, align 8
@uvc_fs_streaming = common dso_local global %struct.usb_descriptor_header** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@uvc_iad = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@uvc_control_intf = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@uvc_control_ep = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@uvc_control_cs_ep = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@uvc_streaming_intf_alt0 = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@uvc_ss_control_comp = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_descriptor_header** (%struct.uvc_device*, i32)* @uvc_copy_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_descriptor_header** @uvc_copy_descriptors(%struct.uvc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_descriptor_header**, align 8
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_input_header_descriptor*, align 8
  %7 = alloca %struct.uvc_header_descriptor*, align 8
  %8 = alloca %struct.uvc_descriptor_header**, align 8
  %9 = alloca %struct.uvc_descriptor_header**, align 8
  %10 = alloca %struct.usb_descriptor_header**, align 8
  %11 = alloca %struct.usb_descriptor_header**, align 8
  %12 = alloca %struct.usb_descriptor_header**, align 8
  %13 = alloca %struct.usb_descriptor_header**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.uvc_device* %0, %struct.uvc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %41 [
    i32 128, label %20
    i32 129, label %30
    i32 130, label %40
  ]

20:                                               ; preds = %2
  %21 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %22 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  %24 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %23, align 8
  store %struct.uvc_descriptor_header** %24, %struct.uvc_descriptor_header*** %8, align 8
  %25 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %26 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %27, align 8
  store %struct.uvc_descriptor_header** %28, %struct.uvc_descriptor_header*** %9, align 8
  %29 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @uvc_ss_streaming, align 8
  store %struct.usb_descriptor_header** %29, %struct.usb_descriptor_header*** %10, align 8
  br label %51

30:                                               ; preds = %2
  %31 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %32 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %33, align 8
  store %struct.uvc_descriptor_header** %34, %struct.uvc_descriptor_header*** %8, align 8
  %35 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %36 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %37, align 8
  store %struct.uvc_descriptor_header** %38, %struct.uvc_descriptor_header*** %9, align 8
  %39 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @uvc_hs_streaming, align 8
  store %struct.usb_descriptor_header** %39, %struct.usb_descriptor_header*** %10, align 8
  br label %51

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %2, %40
  %42 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %43 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %44, align 8
  store %struct.uvc_descriptor_header** %45, %struct.uvc_descriptor_header*** %8, align 8
  %46 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %47 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %48, align 8
  store %struct.uvc_descriptor_header** %49, %struct.uvc_descriptor_header*** %9, align 8
  %50 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @uvc_fs_streaming, align 8
  store %struct.usb_descriptor_header** %50, %struct.usb_descriptor_header*** %10, align 8
  br label %51

51:                                               ; preds = %41, %30, %20
  %52 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %8, align 8
  %53 = icmp ne %struct.uvc_descriptor_header** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %9, align 8
  %56 = icmp ne %struct.uvc_descriptor_header** %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.usb_descriptor_header** @ERR_PTR(i32 %59)
  store %struct.usb_descriptor_header** %60, %struct.usb_descriptor_header*** %3, align 8
  br label %248

61:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uvc_iad, i32 0, i32 0), align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uvc_control_intf, i32 0, i32 0), align 4
  %64 = add i32 %62, %63
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uvc_control_ep, i32 0, i32 0), align 4
  %66 = add i32 %64, %65
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uvc_control_cs_ep, i32 0, i32 0), align 4
  %68 = add i32 %66, %67
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uvc_streaming_intf_alt0, i32 0, i32 0), align 4
  %70 = add i32 %68, %69
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uvc_ss_control_comp, i32 0, i32 0), align 4
  %75 = load i32, i32* %17, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %17, align 4
  store i32 6, i32* %16, align 4
  br label %78

77:                                               ; preds = %61
  store i32 5, i32* %16, align 4
  br label %78

78:                                               ; preds = %77, %73
  %79 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %8, align 8
  %80 = bitcast %struct.uvc_descriptor_header** %79 to %struct.usb_descriptor_header**
  store %struct.usb_descriptor_header** %80, %struct.usb_descriptor_header*** %11, align 8
  br label %81

81:                                               ; preds = %104, %78
  %82 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %83 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %82, align 8
  %84 = icmp ne %struct.usb_descriptor_header* %83, null
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %87 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %86, align 8
  %88 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %14, align 4
  %94 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %95 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %94, align 8
  %96 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %17, align 4
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %16, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %85
  %105 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %106 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %105, i32 1
  store %struct.usb_descriptor_header** %106, %struct.usb_descriptor_header*** %11, align 8
  br label %81

107:                                              ; preds = %81
  %108 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %9, align 8
  %109 = bitcast %struct.uvc_descriptor_header** %108 to %struct.usb_descriptor_header**
  store %struct.usb_descriptor_header** %109, %struct.usb_descriptor_header*** %11, align 8
  br label %110

110:                                              ; preds = %133, %107
  %111 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %112 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %111, align 8
  %113 = icmp ne %struct.usb_descriptor_header* %112, null
  br i1 %113, label %114, label %136

114:                                              ; preds = %110
  %115 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %116 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %115, align 8
  %117 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %15, align 4
  %123 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %124 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %123, align 8
  %125 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = zext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %16, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %114
  %134 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %135 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %134, i32 1
  store %struct.usb_descriptor_header** %135, %struct.usb_descriptor_header*** %11, align 8
  br label %110

136:                                              ; preds = %110
  %137 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %10, align 8
  store %struct.usb_descriptor_header** %137, %struct.usb_descriptor_header*** %11, align 8
  br label %138

138:                                              ; preds = %153, %136
  %139 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %140 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %139, align 8
  %141 = icmp ne %struct.usb_descriptor_header* %140, null
  br i1 %141, label %142, label %156

142:                                              ; preds = %138
  %143 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %144 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %143, align 8
  %145 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %17, align 4
  %148 = zext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %16, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %142
  %154 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %155 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %154, i32 1
  store %struct.usb_descriptor_header** %155, %struct.usb_descriptor_header*** %11, align 8
  br label %138

156:                                              ; preds = %138
  %157 = load i32, i32* %16, align 4
  %158 = add i32 %157, 1
  %159 = zext i32 %158 to i64
  %160 = mul i64 %159, 8
  %161 = load i32, i32* %17, align 4
  %162 = zext i32 %161 to i64
  %163 = add i64 %160, %162
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = call i8* @kmalloc(i32 %164, i32 %165)
  store i8* %166, i8** %18, align 8
  %167 = load i8*, i8** %18, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  store %struct.usb_descriptor_header** null, %struct.usb_descriptor_header*** %3, align 8
  br label %248

170:                                              ; preds = %156
  %171 = load i8*, i8** %18, align 8
  %172 = bitcast i8* %171 to %struct.usb_descriptor_header**
  store %struct.usb_descriptor_header** %172, %struct.usb_descriptor_header*** %13, align 8
  %173 = load i8*, i8** %18, align 8
  %174 = bitcast i8* %173 to %struct.usb_descriptor_header**
  store %struct.usb_descriptor_header** %174, %struct.usb_descriptor_header*** %12, align 8
  %175 = load i32, i32* %16, align 4
  %176 = add i32 %175, 1
  %177 = zext i32 %176 to i64
  %178 = mul i64 %177, 8
  %179 = load i8*, i8** %18, align 8
  %180 = getelementptr i8, i8* %179, i64 %178
  store i8* %180, i8** %18, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %183 = call i32 @UVC_COPY_DESCRIPTOR(i8* %181, %struct.usb_descriptor_header** %182, %struct.TYPE_14__* @uvc_iad)
  %184 = load i8*, i8** %18, align 8
  %185 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %186 = call i32 @UVC_COPY_DESCRIPTOR(i8* %184, %struct.usb_descriptor_header** %185, %struct.TYPE_14__* @uvc_control_intf)
  %187 = load i8*, i8** %18, align 8
  %188 = bitcast i8* %187 to %struct.uvc_header_descriptor*
  store %struct.uvc_header_descriptor* %188, %struct.uvc_header_descriptor** %7, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %191 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %8, align 8
  %192 = bitcast %struct.uvc_descriptor_header** %191 to %struct.usb_descriptor_header**
  %193 = call i32 @UVC_COPY_DESCRIPTORS(i8* %189, %struct.usb_descriptor_header** %190, %struct.usb_descriptor_header** %192)
  %194 = load i32, i32* %14, align 4
  %195 = call i8* @cpu_to_le16(i32 %194)
  %196 = load %struct.uvc_header_descriptor*, %struct.uvc_header_descriptor** %7, align 8
  %197 = getelementptr inbounds %struct.uvc_header_descriptor, %struct.uvc_header_descriptor* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  %198 = load %struct.uvc_header_descriptor*, %struct.uvc_header_descriptor** %7, align 8
  %199 = getelementptr inbounds %struct.uvc_header_descriptor, %struct.uvc_header_descriptor* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  %200 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %201 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.uvc_header_descriptor*, %struct.uvc_header_descriptor** %7, align 8
  %204 = getelementptr inbounds %struct.uvc_header_descriptor, %struct.uvc_header_descriptor* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  store i32 %202, i32* %206, align 4
  %207 = load i8*, i8** %18, align 8
  %208 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %209 = call i32 @UVC_COPY_DESCRIPTOR(i8* %207, %struct.usb_descriptor_header** %208, %struct.TYPE_14__* @uvc_control_ep)
  %210 = load i32, i32* %5, align 4
  %211 = icmp eq i32 %210, 128
  br i1 %211, label %212, label %216

212:                                              ; preds = %170
  %213 = load i8*, i8** %18, align 8
  %214 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %215 = call i32 @UVC_COPY_DESCRIPTOR(i8* %213, %struct.usb_descriptor_header** %214, %struct.TYPE_14__* @uvc_ss_control_comp)
  br label %216

216:                                              ; preds = %212, %170
  %217 = load i8*, i8** %18, align 8
  %218 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %219 = call i32 @UVC_COPY_DESCRIPTOR(i8* %217, %struct.usb_descriptor_header** %218, %struct.TYPE_14__* @uvc_control_cs_ep)
  %220 = load i8*, i8** %18, align 8
  %221 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %222 = call i32 @UVC_COPY_DESCRIPTOR(i8* %220, %struct.usb_descriptor_header** %221, %struct.TYPE_14__* @uvc_streaming_intf_alt0)
  %223 = load i8*, i8** %18, align 8
  %224 = bitcast i8* %223 to %struct.uvc_input_header_descriptor*
  store %struct.uvc_input_header_descriptor* %224, %struct.uvc_input_header_descriptor** %6, align 8
  %225 = load i8*, i8** %18, align 8
  %226 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %227 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %9, align 8
  %228 = bitcast %struct.uvc_descriptor_header** %227 to %struct.usb_descriptor_header**
  %229 = call i32 @UVC_COPY_DESCRIPTORS(i8* %225, %struct.usb_descriptor_header** %226, %struct.usb_descriptor_header** %228)
  %230 = load i32, i32* %15, align 4
  %231 = call i8* @cpu_to_le16(i32 %230)
  %232 = load %struct.uvc_input_header_descriptor*, %struct.uvc_input_header_descriptor** %6, align 8
  %233 = getelementptr inbounds %struct.uvc_input_header_descriptor, %struct.uvc_input_header_descriptor* %232, i32 0, i32 1
  store i8* %231, i8** %233, align 8
  %234 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %235 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.uvc_input_header_descriptor*, %struct.uvc_input_header_descriptor** %6, align 8
  %241 = getelementptr inbounds %struct.uvc_input_header_descriptor, %struct.uvc_input_header_descriptor* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load i8*, i8** %18, align 8
  %243 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %244 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %10, align 8
  %245 = call i32 @UVC_COPY_DESCRIPTORS(i8* %242, %struct.usb_descriptor_header** %243, %struct.usb_descriptor_header** %244)
  %246 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  store %struct.usb_descriptor_header* null, %struct.usb_descriptor_header** %246, align 8
  %247 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %13, align 8
  store %struct.usb_descriptor_header** %247, %struct.usb_descriptor_header*** %3, align 8
  br label %248

248:                                              ; preds = %216, %169, %57
  %249 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  ret %struct.usb_descriptor_header** %249
}

declare dso_local %struct.usb_descriptor_header** @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @UVC_COPY_DESCRIPTOR(i8*, %struct.usb_descriptor_header**, %struct.TYPE_14__*) #1

declare dso_local i32 @UVC_COPY_DESCRIPTORS(i8*, %struct.usb_descriptor_header**, %struct.usb_descriptor_header**) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
