; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callbacks = type { i32, i32, i32, i32 }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.keyspan_serial_private = type { %struct.keyspan_device_details* }
%struct.keyspan_device_details = type { i64, i32*, i32, i32*, i32, i32*, i32* }
%struct.keyspan_port_private = type { %struct.keyspan_port_private**, %struct.keyspan_port_private**, %struct.keyspan_port_private*, %struct.keyspan_port_private*, i8*, i8*, i8**, i8**, %struct.keyspan_device_details* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IN_BUFLEN = common dso_local global i32 0, align 4
@OUT_BUFLEN = common dso_local global i32 0, align 4
@INACK_BUFLEN = common dso_local global i32 0, align 4
@OUTCONT_BUFLEN = common dso_local global i32 0, align 4
@keyspan_callbacks = common dso_local global %struct.callbacks* null, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @keyspan_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.keyspan_serial_private*, align 8
  %6 = alloca %struct.keyspan_port_private*, align 8
  %7 = alloca %struct.keyspan_device_details*, align 8
  %8 = alloca %struct.callbacks*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 1
  %14 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  store %struct.usb_serial* %14, %struct.usb_serial** %4, align 8
  %15 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %16 = call %struct.keyspan_serial_private* @usb_get_serial_data(%struct.usb_serial* %15)
  store %struct.keyspan_serial_private* %16, %struct.keyspan_serial_private** %5, align 8
  %17 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %5, align 8
  %18 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %17, i32 0, i32 0
  %19 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %18, align 8
  store %struct.keyspan_device_details* %19, %struct.keyspan_device_details** %7, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 72, i32 %20)
  %22 = bitcast i8* %21 to %struct.keyspan_port_private*
  store %struct.keyspan_port_private* %22, %struct.keyspan_port_private** %6, align 8
  %23 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %24 = icmp ne %struct.keyspan_port_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %307

28:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %32 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %31, i32 0, i32 0
  %33 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %32, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.keyspan_port_private** %33)
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load i32, i32* @IN_BUFLEN, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  %40 = bitcast i8* %39 to %struct.keyspan_port_private*
  %41 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %42 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %41, i32 0, i32 0
  %43 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %43, i64 %45
  store %struct.keyspan_port_private* %40, %struct.keyspan_port_private** %46, align 8
  %47 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %48 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %47, i32 0, i32 0
  %49 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %49, i64 %51
  %53 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %52, align 8
  %54 = icmp ne %struct.keyspan_port_private* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  br label %302

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %29

60:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %89, %60
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %64 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %63, i32 0, i32 1
  %65 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %64, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.keyspan_port_private** %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %61
  %69 = load i32, i32* @OUT_BUFLEN, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kzalloc(i32 %69, i32 %70)
  %72 = bitcast i8* %71 to %struct.keyspan_port_private*
  %73 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %74 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %73, i32 0, i32 1
  %75 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %75, i64 %77
  store %struct.keyspan_port_private* %72, %struct.keyspan_port_private** %78, align 8
  %79 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %80 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %79, i32 0, i32 1
  %81 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %81, i64 %83
  %85 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %84, align 8
  %86 = icmp ne %struct.keyspan_port_private* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %68
  br label %281

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %61

92:                                               ; preds = %61
  %93 = load i32, i32* @INACK_BUFLEN, align 4
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i8* @kzalloc(i32 %93, i32 %94)
  %96 = bitcast i8* %95 to %struct.keyspan_port_private*
  %97 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %98 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %97, i32 0, i32 2
  store %struct.keyspan_port_private* %96, %struct.keyspan_port_private** %98, align 8
  %99 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %100 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %99, i32 0, i32 2
  %101 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %100, align 8
  %102 = icmp ne %struct.keyspan_port_private* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %92
  br label %260

104:                                              ; preds = %92
  %105 = load i32, i32* @OUTCONT_BUFLEN, align 4
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @kzalloc(i32 %105, i32 %106)
  %108 = bitcast i8* %107 to %struct.keyspan_port_private*
  %109 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %110 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %109, i32 0, i32 3
  store %struct.keyspan_port_private* %108, %struct.keyspan_port_private** %110, align 8
  %111 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %112 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %111, i32 0, i32 3
  %113 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %112, align 8
  %114 = icmp ne %struct.keyspan_port_private* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  br label %255

116:                                              ; preds = %104
  %117 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %7, align 8
  %118 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %119 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %118, i32 0, i32 8
  store %struct.keyspan_device_details* %117, %struct.keyspan_device_details** %119, align 8
  %120 = load %struct.callbacks*, %struct.callbacks** @keyspan_callbacks, align 8
  %121 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %7, align 8
  %122 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %120, i64 %123
  store %struct.callbacks* %124, %struct.callbacks** %8, align 8
  %125 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %126 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %10, align 4
  %128 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %7, align 8
  %129 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %164, %116
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %7, align 8
  %138 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp sle i32 %136, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %135
  %142 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @USB_DIR_IN, align 4
  %145 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %146 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %147 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %146, i32 0, i32 0
  %148 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %148, i64 %150
  %152 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %151, align 8
  %153 = load i32, i32* @IN_BUFLEN, align 4
  %154 = load %struct.callbacks*, %struct.callbacks** %8, align 8
  %155 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @keyspan_setup_urb(%struct.usb_serial* %142, i32 %143, i32 %144, %struct.usb_serial_port* %145, %struct.keyspan_port_private* %152, i32 %153, i32 %156)
  %158 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %159 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %158, i32 0, i32 7
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  store i8* %157, i8** %163, align 8
  br label %164

164:                                              ; preds = %141
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %135

169:                                              ; preds = %135
  %170 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %7, align 8
  %171 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %177

177:                                              ; preds = %206, %169
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %7, align 8
  %180 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = icmp sle i32 %178, %181
  br i1 %182, label %183, label %211

183:                                              ; preds = %177
  %184 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @USB_DIR_OUT, align 4
  %187 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %188 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %189 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %188, i32 0, i32 1
  %190 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %190, i64 %192
  %194 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %193, align 8
  %195 = load i32, i32* @OUT_BUFLEN, align 4
  %196 = load %struct.callbacks*, %struct.callbacks** %8, align 8
  %197 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i8* @keyspan_setup_urb(%struct.usb_serial* %184, i32 %185, i32 %186, %struct.usb_serial_port* %187, %struct.keyspan_port_private* %194, i32 %195, i32 %198)
  %200 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %201 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %200, i32 0, i32 6
  %202 = load i8**, i8*** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  store i8* %199, i8** %205, align 8
  br label %206

206:                                              ; preds = %183
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %177

211:                                              ; preds = %177
  %212 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %213 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %7, align 8
  %214 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @USB_DIR_IN, align 4
  %221 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %222 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %223 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %222, i32 0, i32 2
  %224 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %223, align 8
  %225 = load i32, i32* @INACK_BUFLEN, align 4
  %226 = load %struct.callbacks*, %struct.callbacks** %8, align 8
  %227 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i8* @keyspan_setup_urb(%struct.usb_serial* %212, i32 %219, i32 %220, %struct.usb_serial_port* %221, %struct.keyspan_port_private* %224, i32 %225, i32 %228)
  %230 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %231 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %230, i32 0, i32 5
  store i8* %229, i8** %231, align 8
  %232 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %233 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %7, align 8
  %234 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %233, i32 0, i32 6
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @USB_DIR_OUT, align 4
  %241 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %242 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %243 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %242, i32 0, i32 3
  %244 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %243, align 8
  %245 = load i32, i32* @OUTCONT_BUFLEN, align 4
  %246 = load %struct.callbacks*, %struct.callbacks** %8, align 8
  %247 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @keyspan_setup_urb(%struct.usb_serial* %232, i32 %239, i32 %240, %struct.usb_serial_port* %241, %struct.keyspan_port_private* %244, i32 %245, i32 %248)
  %250 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %251 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %250, i32 0, i32 4
  store i8* %249, i8** %251, align 8
  %252 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %253 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %254 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %252, %struct.keyspan_port_private* %253)
  store i32 0, i32* %2, align 4
  br label %307

255:                                              ; preds = %115
  %256 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %257 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %256, i32 0, i32 2
  %258 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %257, align 8
  %259 = call i32 @kfree(%struct.keyspan_port_private* %258)
  br label %260

260:                                              ; preds = %255, %103
  store i32 0, i32* %11, align 4
  br label %261

261:                                              ; preds = %277, %260
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %264 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %263, i32 0, i32 1
  %265 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %264, align 8
  %266 = call i32 @ARRAY_SIZE(%struct.keyspan_port_private** %265)
  %267 = icmp slt i32 %262, %266
  br i1 %267, label %268, label %280

268:                                              ; preds = %261
  %269 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %270 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %269, i32 0, i32 1
  %271 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %270, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %271, i64 %273
  %275 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %274, align 8
  %276 = call i32 @kfree(%struct.keyspan_port_private* %275)
  br label %277

277:                                              ; preds = %268
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  br label %261

280:                                              ; preds = %261
  br label %281

281:                                              ; preds = %280, %87
  store i32 0, i32* %11, align 4
  br label %282

282:                                              ; preds = %298, %281
  %283 = load i32, i32* %11, align 4
  %284 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %285 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %284, i32 0, i32 0
  %286 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %285, align 8
  %287 = call i32 @ARRAY_SIZE(%struct.keyspan_port_private** %286)
  %288 = icmp slt i32 %283, %287
  br i1 %288, label %289, label %301

289:                                              ; preds = %282
  %290 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %291 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %290, i32 0, i32 0
  %292 = load %struct.keyspan_port_private**, %struct.keyspan_port_private*** %291, align 8
  %293 = load i32, i32* %11, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.keyspan_port_private*, %struct.keyspan_port_private** %292, i64 %294
  %296 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %295, align 8
  %297 = call i32 @kfree(%struct.keyspan_port_private* %296)
  br label %298

298:                                              ; preds = %289
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %11, align 4
  br label %282

301:                                              ; preds = %282
  br label %302

302:                                              ; preds = %301, %55
  %303 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %6, align 8
  %304 = call i32 @kfree(%struct.keyspan_port_private* %303)
  %305 = load i32, i32* @ENOMEM, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %2, align 4
  br label %307

307:                                              ; preds = %302, %211, %25
  %308 = load i32, i32* %2, align 4
  ret i32 %308
}

declare dso_local %struct.keyspan_serial_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.keyspan_port_private**) #1

declare dso_local i8* @keyspan_setup_urb(%struct.usb_serial*, i32, i32, %struct.usb_serial_port*, %struct.keyspan_port_private*, i32, i32) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.keyspan_port_private*) #1

declare dso_local i32 @kfree(%struct.keyspan_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
