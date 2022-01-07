; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_onetouch.c_onetouch_connect_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_onetouch.c_onetouch_connect_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, %struct.usb_onetouch*, i32, %struct.TYPE_9__*, %struct.usb_device* }
%struct.usb_onetouch = type { i32, i32, %struct.TYPE_14__*, %struct.input_dev*, i32, i32, %struct.usb_device* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.input_dev = type { i32, i32, i32, i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_9__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.usb_device = type { i8*, i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ONETOUCH_PKT_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Maxtor Onetouch %04x:%04x\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@ONETOUCH_BUTTON = common dso_local global i32 0, align 4
@usb_onetouch_open = common dso_local global i32 0, align 4
@usb_onetouch_close = common dso_local global i32 0, align 4
@usb_onetouch_irq = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@onetouch_release_input = common dso_local global i32 0, align 4
@usb_onetouch_pm_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @onetouch_connect_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onetouch_connect_input(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_onetouch*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 4
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %4, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.us_data*, %struct.us_data** %3, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  store %struct.usb_host_interface* %21, %struct.usb_host_interface** %5, align 8
  %22 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %23 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %268

30:                                               ; preds = %1
  %31 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %32 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %35, %struct.usb_endpoint_descriptor** %6, align 8
  %36 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %37 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %268

42:                                               ; preds = %30
  %43 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %45 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usb_rcvintpipe(%struct.usb_device* %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @usb_pipeout(i32 %50)
  %52 = call i32 @usb_maxpacket(%struct.usb_device* %48, i32 %49, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @ONETOUCH_PKT_LEN, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.usb_onetouch* @kzalloc(i32 40, i32 %56)
  store %struct.usb_onetouch* %57, %struct.usb_onetouch** %7, align 8
  %58 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %58, %struct.input_dev** %8, align 8
  %59 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %60 = icmp ne %struct.usb_onetouch* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %42
  %62 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %63 = icmp ne %struct.input_dev* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %42
  br label %262

65:                                               ; preds = %61
  %66 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %67 = load i32, i32* @ONETOUCH_PKT_LEN, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %70 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %69, i32 0, i32 0
  %71 = call i32 @usb_alloc_coherent(%struct.usb_device* %66, i32 %67, i32 %68, i32* %70)
  %72 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %73 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %75 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  br label %262

79:                                               ; preds = %65
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.TYPE_14__* @usb_alloc_urb(i32 0, i32 %80)
  %82 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %83 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %82, i32 0, i32 2
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %83, align 8
  %84 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %85 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %84, i32 0, i32 2
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  br label %252

89:                                               ; preds = %79
  %90 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %91 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %92 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %91, i32 0, i32 6
  store %struct.usb_device* %90, %struct.usb_device** %92, align 8
  %93 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %94 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %95 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %94, i32 0, i32 3
  store %struct.input_dev* %93, %struct.input_dev** %95, align 8
  %96 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %97 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %102 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %105 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @strlcpy(i32 %103, i64 %106, i32 4)
  br label %108

108:                                              ; preds = %100, %89
  %109 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %110 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  %114 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %115 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %120 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @strlcat(i32 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %125 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %128 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strlcat(i32 %126, i8* %129, i32 4)
  br label %131

131:                                              ; preds = %123, %108
  %132 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %133 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @strlen(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %131
  %138 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %139 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %142 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @le16_to_cpu(i32 %144)
  %146 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %147 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le16_to_cpu(i32 %149)
  %151 = call i32 @snprintf(i32 %140, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %150)
  br label %152

152:                                              ; preds = %137, %131
  %153 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %154 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %155 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @usb_make_path(%struct.usb_device* %153, i32 %156, i32 4)
  %158 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %159 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @strlcat(i32 %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %162 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %163 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %166 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 8
  %167 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %168 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %171 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 4
  %172 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %173 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %174 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %173, i32 0, i32 5
  %175 = call i32 @usb_to_input_id(%struct.usb_device* %172, i32* %174)
  %176 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %177 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %176, i32 0, i32 1
  %178 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %179 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  store i32* %177, i32** %180, align 8
  %181 = load i32, i32* @EV_KEY, align 4
  %182 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %183 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @set_bit(i32 %181, i32 %184)
  %186 = load i32, i32* @ONETOUCH_BUTTON, align 4
  %187 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %188 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @set_bit(i32 %186, i32 %189)
  %191 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %192 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @clear_bit(i32 0, i32 %193)
  %195 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %196 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %197 = call i32 @input_set_drvdata(%struct.input_dev* %195, %struct.usb_onetouch* %196)
  %198 = load i32, i32* @usb_onetouch_open, align 4
  %199 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %200 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @usb_onetouch_close, align 4
  %202 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %203 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %205 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %204, i32 0, i32 2
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %205, align 8
  %207 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %210 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @usb_onetouch_irq, align 4
  %214 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %215 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %216 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @usb_fill_int_urb(%struct.TYPE_14__* %206, %struct.usb_device* %207, i32 %208, i32 %211, i32 %212, i32 %213, %struct.usb_onetouch* %214, i32 %217)
  %219 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %220 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %223 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %222, i32 0, i32 2
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  store i32 %221, i32* %225, align 4
  %226 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %227 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %228 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %227, i32 0, i32 2
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %226
  store i32 %232, i32* %230, align 4
  %233 = load i32, i32* @onetouch_release_input, align 4
  %234 = load %struct.us_data*, %struct.us_data** %3, align 8
  %235 = getelementptr inbounds %struct.us_data, %struct.us_data* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  %236 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %237 = load %struct.us_data*, %struct.us_data** %3, align 8
  %238 = getelementptr inbounds %struct.us_data, %struct.us_data* %237, i32 0, i32 1
  store %struct.usb_onetouch* %236, %struct.usb_onetouch** %238, align 8
  %239 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %240 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %239, i32 0, i32 3
  %241 = load %struct.input_dev*, %struct.input_dev** %240, align 8
  %242 = call i32 @input_register_device(%struct.input_dev* %241)
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %11, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %152
  br label %247

246:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %268

247:                                              ; preds = %245
  %248 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %249 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %248, i32 0, i32 2
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %249, align 8
  %251 = call i32 @usb_free_urb(%struct.TYPE_14__* %250)
  br label %252

252:                                              ; preds = %247, %88
  %253 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %254 = load i32, i32* @ONETOUCH_PKT_LEN, align 4
  %255 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %256 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %259 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @usb_free_coherent(%struct.usb_device* %253, i32 %254, i32 %257, i32 %260)
  br label %262

262:                                              ; preds = %252, %78, %64
  %263 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %264 = call i32 @kfree(%struct.usb_onetouch* %263)
  %265 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %266 = call i32 @input_free_device(%struct.input_dev* %265)
  %267 = load i32, i32* %11, align 4
  store i32 %267, i32* %2, align 4
  br label %268

268:                                              ; preds = %262, %246, %39, %27
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.usb_onetouch* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i64, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.usb_onetouch*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_14__*, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_onetouch*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_14__*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_onetouch*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
