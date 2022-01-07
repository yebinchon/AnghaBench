; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i64, i32, i32 }
%struct.sisusb_usb_data = type { i32, i32, i32, i32, i32, i32, %struct.usb_device*, i32, i8*, i64*, %struct.TYPE_2__*, i8**, i8*, i8**, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"USB2VGA dongle found at address %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SISUSB_PCI_MEMBASE = common dso_local global i32 0, align 4
@SISUSB_PCI_MMIOBASE = common dso_local global i32 0, align 4
@SISUSB_PCI_MMIOSIZE = common dso_local global i32 0, align 4
@SISUSB_PCI_IOPORTBASE = common dso_local global i32 0, align 4
@usb_sisusb_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to get a minor for device %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SISUSB_IBUF_SIZE = common dso_local global i32 0, align 4
@SISUSB_OBUF_SIZE = common dso_local global i32 0, align 4
@NUMOBUFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Allocated %d output buffers\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to early initialize device\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Not attached to USB 2.0 hub, deferring init\0A\00", align 1
@MAX_NR_CONSOLES = common dso_local global i64 0, align 8
@sisusb_first_vc = common dso_local global i64 0, align 8
@sisusb_last_vc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @sisusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.sisusb_usb_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32*, i8*, ...) @dev_info(i32* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sisusb_usb_data* @kzalloc(i32 128, i32 %19)
  store %struct.sisusb_usb_data* %20, %struct.sisusb_usb_data** %7, align 8
  %21 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %22 = icmp ne %struct.sisusb_usb_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %261

26:                                               ; preds = %2
  %27 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %28 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %27, i32 0, i32 21
  %29 = call i32 @kref_init(i32* %28)
  %30 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %31 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %30, i32 0, i32 20
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %35 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %34, i32 0, i32 6
  store %struct.usb_device* %33, %struct.usb_device** %35, align 8
  %36 = load i32, i32* @SISUSB_PCI_MEMBASE, align 4
  %37 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %38 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %37, i32 0, i32 19
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @SISUSB_PCI_MMIOBASE, align 4
  %40 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %41 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %40, i32 0, i32 18
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @SISUSB_PCI_MMIOSIZE, align 4
  %43 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %44 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %43, i32 0, i32 17
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @SISUSB_PCI_IOPORTBASE, align 4
  %46 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %47 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %46, i32 0, i32 16
  store i32 %45, i32* %47, align 4
  %48 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %49 = call i32 @usb_register_dev(%struct.usb_interface* %48, i32* @usb_sisusb_class)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %26
  %53 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %54 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %53, i32 0, i32 6
  %55 = load %struct.usb_device*, %struct.usb_device** %54, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 1
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %257

63:                                               ; preds = %26
  %64 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %68 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @SISUSB_IBUF_SIZE, align 4
  %70 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %71 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @SISUSB_IBUF_SIZE, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kmalloc(i32 %72, i32 %73)
  %75 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %76 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %75, i32 0, i32 14
  store i8* %74, i8** %76, align 8
  %77 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %78 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %77, i32 0, i32 14
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %63
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %254

84:                                               ; preds = %63
  %85 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %86 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* @SISUSB_OBUF_SIZE, align 4
  %88 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %89 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %124, %84
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @NUMOBUFS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %90
  %95 = load i32, i32* @SISUSB_OBUF_SIZE, align 4
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @kmalloc(i32 %95, i32 %96)
  %98 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %99 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %98, i32 0, i32 13
  %100 = load i8**, i8*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  store i8* %97, i8** %103, align 8
  %104 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %105 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %104, i32 0, i32 13
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %94
  %113 = load i32, i32* %9, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %251

118:                                              ; preds = %112
  br label %127

119:                                              ; preds = %94
  %120 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %121 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %90

127:                                              ; preds = %118, %90
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i8* @usb_alloc_urb(i32 0, i32 %128)
  %130 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %131 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %130, i32 0, i32 12
  store i8* %129, i8** %131, align 8
  %132 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %133 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %132, i32 0, i32 12
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %127
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %8, align 4
  br label %251

139:                                              ; preds = %127
  %140 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %141 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %140, i32 0, i32 3
  store i32 1, i32* %141, align 4
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %192, %139
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %145 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %195

148:                                              ; preds = %142
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call i8* @usb_alloc_urb(i32 0, i32 %149)
  %151 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %152 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %151, i32 0, i32 11
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  store i8* %150, i8** %156, align 8
  %157 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %158 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %157, i32 0, i32 11
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %148
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %8, align 4
  br label %248

168:                                              ; preds = %148
  %169 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %170 = bitcast %struct.sisusb_usb_data* %169 to i8*
  %171 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %172 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %171, i32 0, i32 10
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  store i8* %170, i8** %177, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %180 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %179, i32 0, i32 10
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  store i32 %178, i32* %185, align 8
  %186 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %187 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %186, i32 0, i32 9
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  store i64 0, i64* %191, align 8
  br label %192

192:                                              ; preds = %168
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %142

195:                                              ; preds = %142
  %196 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %197 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %196, i32 0, i32 6
  %198 = load %struct.usb_device*, %struct.usb_device** %197, align 8
  %199 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %198, i32 0, i32 1
  %200 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %201 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32*, i8*, ...) @dev_info(i32* %199, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %202)
  %204 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %205 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %204, i32 0, i32 7
  %206 = call i32 @init_waitqueue_head(i32* %205)
  %207 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %208 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %209 = call i32 @usb_set_intfdata(%struct.usb_interface* %207, %struct.sisusb_usb_data* %208)
  %210 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %211 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %210, i32 0, i32 6
  %212 = load %struct.usb_device*, %struct.usb_device** %211, align 8
  %213 = call i32 @usb_get_dev(%struct.usb_device* %212)
  %214 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %215 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %214, i32 0, i32 4
  store i32 1, i32* %215, align 8
  %216 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %217 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @USB_SPEED_HIGH, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %227, label %221

221:                                              ; preds = %195
  %222 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %223 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @USB_SPEED_SUPER, align 8
  %226 = icmp sge i64 %224, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %221, %195
  store i32 1, i32* %10, align 4
  %228 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %229 = load i32, i32* %10, align 4
  %230 = call i64 @sisusb_init_gfxdevice(%struct.sisusb_usb_data* %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %234 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %233, i32 0, i32 6
  %235 = load %struct.usb_device*, %struct.usb_device** %234, align 8
  %236 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %235, i32 0, i32 1
  %237 = call i32 (i32*, i8*, ...) @dev_err(i32* %236, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %238

238:                                              ; preds = %232, %227
  br label %245

239:                                              ; preds = %221
  %240 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %241 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %240, i32 0, i32 6
  %242 = load %struct.usb_device*, %struct.usb_device** %241, align 8
  %243 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %242, i32 0, i32 1
  %244 = call i32 (i32*, i8*, ...) @dev_info(i32* %243, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %245

245:                                              ; preds = %239, %238
  %246 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %247 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %246, i32 0, i32 5
  store i32 1, i32* %247, align 4
  store i32 0, i32* %3, align 4
  br label %261

248:                                              ; preds = %165
  %249 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %250 = call i32 @sisusb_free_urbs(%struct.sisusb_usb_data* %249)
  br label %251

251:                                              ; preds = %248, %136, %115
  %252 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %253 = call i32 @sisusb_free_buffers(%struct.sisusb_usb_data* %252)
  br label %254

254:                                              ; preds = %251, %81
  %255 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %256 = call i32 @usb_deregister_dev(%struct.usb_interface* %255, i32* @usb_sisusb_class)
  br label %257

257:                                              ; preds = %254, %52
  %258 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %259 = call i32 @kfree(%struct.sisusb_usb_data* %258)
  %260 = load i32, i32* %8, align 4
  store i32 %260, i32* %3, align 4
  br label %261

261:                                              ; preds = %257, %245, %23
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.sisusb_usb_data* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i64 @sisusb_init_gfxdevice(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @sisusb_free_urbs(%struct.sisusb_usb_data*) #1

declare dso_local i32 @sisusb_free_buffers(%struct.sisusb_usb_data*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kfree(%struct.sisusb_usb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
