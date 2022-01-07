; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.usb_serial_port** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.whiteheat_command_private = type { i32, i64, i32 }
%struct.whiteheat_hw_info = type { i32, i32 }

@COMMAND_PORT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@WHITEHEAT_GET_HW_INFO = common dso_local global i64 0, align 8
@COMMAND_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: Couldn't send command [%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Send command incomplete [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: Couldn't get results [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: Get results incomplete [%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: Command failed [%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: Firmware v%d.%02d\0A\00", align 1
@command_port_write_callback = common dso_local global i32 0, align 4
@command_port_read_callback = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"%s: Unable to retrieve firmware version, try replugging\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"%s: If the firmware is not running (status led not blinking)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"%s: please contact support@connecttech.com\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @whiteheat_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whiteheat_attach(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.whiteheat_command_private*, align 8
  %6 = alloca %struct.whiteheat_hw_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %12 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %13 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %12, i32 0, i32 2
  %14 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %13, align 8
  %15 = load i64, i64* @COMMAND_PORT, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %14, i64 %15
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %16, align 8
  store %struct.usb_serial_port* %17, %struct.usb_serial_port** %4, align 8
  %18 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %22 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_sndbulkpipe(%struct.TYPE_11__* %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kmalloc(i32 2, i32 %25)
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %10, align 8
  %28 = load i64*, i64** %10, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %255

31:                                               ; preds = %1
  %32 = load i64, i64* @WHITEHEAT_GET_HW_INFO, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %34, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kmalloc(i32 9, i32 %37)
  %39 = bitcast i8* %38 to i64*
  store i64* %39, i64** %11, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %252

43:                                               ; preds = %31
  %44 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %45 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @usb_clear_halt(%struct.TYPE_11__* %46, i32 %47)
  %49 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %50 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i64*, i64** %10, align 8
  %54 = load i32, i32* @COMMAND_TIMEOUT_MS, align 4
  %55 = call i32 @usb_bulk_msg(%struct.TYPE_11__* %51, i32 %52, i64* %53, i32 2, i32* %9, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %43
  %59 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %60 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %64 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  br label %212

70:                                               ; preds = %43
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %75 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %79 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  br label %212

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %88 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %91 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @usb_rcvbulkpipe(%struct.TYPE_11__* %89, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %95 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %94, i32 0, i32 1
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @usb_clear_halt(%struct.TYPE_11__* %96, i32 %97)
  %99 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %100 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i64*, i64** %11, align 8
  %104 = load i32, i32* @COMMAND_TIMEOUT_MS, align 4
  %105 = call i32 @usb_bulk_msg(%struct.TYPE_11__* %101, i32 %102, i64* %103, i32 9, i32* %9, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %86
  %109 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %110 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %114 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  br label %212

120:                                              ; preds = %86
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp ne i64 %122, 9
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %126 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %130 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134)
  br label %212

136:                                              ; preds = %120
  %137 = load i64*, i64** %11, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %10, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %139, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %136
  %145 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %146 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %145, i32 0, i32 1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %150 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64*, i64** %11, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %153, i64 %156)
  br label %212

158:                                              ; preds = %136
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159
  %161 = load i64*, i64** %11, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = bitcast i64* %162 to %struct.whiteheat_hw_info*
  store %struct.whiteheat_hw_info* %163, %struct.whiteheat_hw_info** %6, align 8
  %164 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %165 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %164, i32 0, i32 1
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %169 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.whiteheat_hw_info*, %struct.whiteheat_hw_info** %6, align 8
  %174 = getelementptr inbounds %struct.whiteheat_hw_info, %struct.whiteheat_hw_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.whiteheat_hw_info*, %struct.whiteheat_hw_info** %6, align 8
  %177 = getelementptr inbounds %struct.whiteheat_hw_info, %struct.whiteheat_hw_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dev_info(i32* %167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %172, i32 %175, i32 %178)
  %180 = load i32, i32* @GFP_KERNEL, align 4
  %181 = call i8* @kmalloc(i32 24, i32 %180)
  %182 = bitcast i8* %181 to %struct.whiteheat_command_private*
  store %struct.whiteheat_command_private* %182, %struct.whiteheat_command_private** %5, align 8
  %183 = load %struct.whiteheat_command_private*, %struct.whiteheat_command_private** %5, align 8
  %184 = icmp ne %struct.whiteheat_command_private* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %160
  br label %249

186:                                              ; preds = %160
  %187 = load %struct.whiteheat_command_private*, %struct.whiteheat_command_private** %5, align 8
  %188 = getelementptr inbounds %struct.whiteheat_command_private, %struct.whiteheat_command_private* %187, i32 0, i32 2
  %189 = call i32 @mutex_init(i32* %188)
  %190 = load %struct.whiteheat_command_private*, %struct.whiteheat_command_private** %5, align 8
  %191 = getelementptr inbounds %struct.whiteheat_command_private, %struct.whiteheat_command_private* %190, i32 0, i32 1
  store i64 0, i64* %191, align 8
  %192 = load %struct.whiteheat_command_private*, %struct.whiteheat_command_private** %5, align 8
  %193 = getelementptr inbounds %struct.whiteheat_command_private, %struct.whiteheat_command_private* %192, i32 0, i32 0
  %194 = call i32 @init_waitqueue_head(i32* %193)
  %195 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %196 = load %struct.whiteheat_command_private*, %struct.whiteheat_command_private** %5, align 8
  %197 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %195, %struct.whiteheat_command_private* %196)
  %198 = load i32, i32* @command_port_write_callback, align 4
  %199 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %200 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %199, i32 0, i32 1
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  store i32 %198, i32* %202, align 4
  %203 = load i32, i32* @command_port_read_callback, align 4
  %204 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %205 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %204, i32 0, i32 0
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  store i32 %203, i32* %207, align 4
  %208 = load i64*, i64** %11, align 8
  %209 = call i32 @kfree(i64* %208)
  %210 = load i64*, i64** %10, align 8
  %211 = call i32 @kfree(i64* %210)
  store i32 0, i32* %2, align 4
  br label %258

212:                                              ; preds = %144, %124, %108, %73, %58
  %213 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %214 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %213, i32 0, i32 1
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %218 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %217, i32 0, i32 0
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %216, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %221)
  %223 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %224 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %223, i32 0, i32 1
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %228 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %227, i32 0, i32 0
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %226, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %231)
  %233 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %234 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %233, i32 0, i32 1
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %238 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %237, i32 0, i32 0
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %236, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %241)
  %243 = load i64*, i64** %11, align 8
  %244 = call i32 @kfree(i64* %243)
  %245 = load i64*, i64** %10, align 8
  %246 = call i32 @kfree(i64* %245)
  %247 = load i32, i32* @ENODEV, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %2, align 4
  br label %258

249:                                              ; preds = %185
  %250 = load i64*, i64** %11, align 8
  %251 = call i32 @kfree(i64* %250)
  br label %252

252:                                              ; preds = %249, %42
  %253 = load i64*, i64** %10, align 8
  %254 = call i32 @kfree(i64* %253)
  br label %255

255:                                              ; preds = %252, %30
  %256 = load i32, i32* @ENOMEM, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %255, %212, %186
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_clear_halt(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_11__*, i32, i64*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.whiteheat_command_private*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
