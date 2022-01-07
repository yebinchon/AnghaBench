; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_usbtest_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_usbtest_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i64, i64 }
%struct.usb_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usbtest_dev = type { i64, i64, i64, i64, i64, i64, %struct.usbtest_dev*, %struct.usb_interface*, i32, %struct.usbtest_info* }
%struct.usbtest_info = type { i64, i64, i32, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@force_interrupt = common dso_local global i64 0, align 8
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" intr-in\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" intr-out\00", align 1
@override_alt = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"couldn't get endpoints, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" bulk-in\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" bulk-out\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" iso-in\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" iso-out\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" int-in\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" int-out\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s {control%s%s%s%s%s%s%s} tests%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" in/out\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" (+alt)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@product = common dso_local global i64 0, align 8
@vendor = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usbtest_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtest_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usbtest_dev*, align 8
  %8 = alloca %struct.usbtest_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %16)
  store %struct.usb_device* %17, %struct.usb_device** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.usbtest_dev* @kzalloc(i32 80, i32 %18)
  store %struct.usbtest_dev* %19, %struct.usbtest_dev** %7, align 8
  %20 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %21 = icmp ne %struct.usbtest_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %216

25:                                               ; preds = %2
  %26 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.usbtest_info*
  store %struct.usbtest_info* %29, %struct.usbtest_info** %8, align 8
  %30 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %31 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %32 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %31, i32 0, i32 9
  store %struct.usbtest_info* %30, %struct.usbtest_info** %32, align 8
  %33 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %34 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %33, i32 0, i32 8
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %38 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %37, i32 0, i32 7
  store %struct.usb_interface* %36, %struct.usb_interface** %38, align 8
  %39 = load i32, i32* @TBUF_SIZE, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.usbtest_dev* @kmalloc(i32 %39, i32 %40)
  %42 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %43 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %42, i32 0, i32 6
  store %struct.usbtest_dev* %41, %struct.usbtest_dev** %43, align 8
  %44 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %45 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %44, i32 0, i32 6
  %46 = load %struct.usbtest_dev*, %struct.usbtest_dev** %45, align 8
  %47 = icmp eq %struct.usbtest_dev* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %25
  %49 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %50 = call i32 @kfree(%struct.usbtest_dev* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %216

53:                                               ; preds = %25
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %54 = load i64, i64* @force_interrupt, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @USB_SPEED_LOW, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %56, %53
  %63 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %64 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %69 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %70 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @usb_rcvintpipe(%struct.usb_device* %68, i64 %71)
  %73 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %74 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %73, i32 0, i32 5
  store i64 %72, i64* %74, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %77 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %82 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %83 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @usb_sndintpipe(%struct.usb_device* %81, i64 %84)
  %86 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %87 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %88

88:                                               ; preds = %80, %75
  br label %179

89:                                               ; preds = %56
  %90 = load i64, i64* @override_alt, align 8
  %91 = icmp sge i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %94 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %92, %89
  %98 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %99 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %100 = call i32 @get_endpoints(%struct.usbtest_dev* %98, %struct.usb_interface* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @WARNING(%struct.usbtest_dev* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %108 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %107, i32 0, i32 6
  %109 = load %struct.usbtest_dev*, %struct.usbtest_dev** %108, align 8
  %110 = call i32 @kfree(%struct.usbtest_dev* %109)
  %111 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %112 = call i32 @kfree(%struct.usbtest_dev* %111)
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %3, align 4
  br label %216

114:                                              ; preds = %97
  br label %142

115:                                              ; preds = %92
  %116 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %117 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %122 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %123 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @usb_rcvbulkpipe(%struct.usb_device* %121, i64 %124)
  %126 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %127 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %126, i32 0, i32 5
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %120, %115
  %129 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %130 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %135 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %136 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @usb_sndbulkpipe(%struct.usb_device* %134, i64 %137)
  %139 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %140 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %139, i32 0, i32 4
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %133, %128
  br label %142

142:                                              ; preds = %141, %114
  %143 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %144 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %148

148:                                              ; preds = %147, %142
  %149 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %150 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %154

154:                                              ; preds = %153, %148
  %155 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %156 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %160

160:                                              ; preds = %159, %154
  %161 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %162 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %166

166:                                              ; preds = %165, %160
  %167 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %168 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %172

172:                                              ; preds = %171, %166
  %173 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %174 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  br label %178

178:                                              ; preds = %177, %172
  br label %179

179:                                              ; preds = %178, %88
  %180 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %181 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %182 = call i32 @usb_set_intfdata(%struct.usb_interface* %180, %struct.usbtest_dev* %181)
  %183 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %184 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %183, i32 0, i32 0
  %185 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %186 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 %188)
  %190 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %191 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %190, i32 0, i32 0
  %192 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %193 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @usb_speed_string(i64 %194)
  %196 = sext i32 %195 to i64
  %197 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %198 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %203 = load i8*, i8** %9, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %210 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp sge i64 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %215 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %191, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %196, i8* %202, i8* %203, i8* %204, i8* %205, i8* %206, i8* %207, i8* %208, i8* %214)
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %179, %103, %48, %22
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usbtest_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.usbtest_dev* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.usbtest_dev*) #1

declare dso_local i64 @usb_rcvintpipe(%struct.usb_device*, i64) #1

declare dso_local i64 @usb_sndintpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @get_endpoints(%struct.usbtest_dev*, %struct.usb_interface*) #1

declare dso_local i32 @WARNING(%struct.usbtest_dev*, i8*, i32) #1

declare dso_local i64 @usb_rcvbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i64 @usb_sndbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usbtest_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #1

declare dso_local i32 @usb_speed_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
