; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_get_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_get_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__, %struct.usb_host_endpoint* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_7__ }
%struct.usb_device = type { i32 }

@override_alt = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, %struct.usb_interface*)* @get_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_endpoints(%struct.usbtest_dev* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbtest_dev*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca %struct.usb_host_endpoint*, align 8
  %11 = alloca %struct.usb_host_endpoint*, align 8
  %12 = alloca %struct.usb_host_endpoint*, align 8
  %13 = alloca %struct.usb_host_endpoint*, align 8
  %14 = alloca %struct.usb_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_host_endpoint*, align 8
  %17 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %114, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %117

24:                                               ; preds = %18
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %9, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %8, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %11, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %10, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %13, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %12, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 1
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %27, i64 %29
  store %struct.usb_host_interface* %30, %struct.usb_host_interface** %7, align 8
  %31 = load i64, i64* @override_alt, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i64, i64* @override_alt, align 8
  %35 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %36 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %114

41:                                               ; preds = %33, %24
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %91, %41
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %45 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %43, %47
  br i1 %48, label %49, label %94

49:                                               ; preds = %42
  %50 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %51 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %50, i32 0, i32 1
  %52 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %52, i64 %54
  store %struct.usb_host_endpoint* %55, %struct.usb_host_endpoint** %16, align 8
  %56 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %57 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %56, i32 0, i32 0
  %58 = call i32 @usb_endpoint_dir_in(%struct.TYPE_7__* %57)
  store i32 %58, i32* %17, align 4
  %59 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %60 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %59, i32 0, i32 0
  %61 = call i32 @usb_endpoint_type(%struct.TYPE_7__* %60)
  switch i32 %61, label %90 [
    i32 130, label %62
    i32 129, label %66
    i32 128, label %78
  ]

62:                                               ; preds = %49
  %63 = load i32, i32* %17, align 4
  %64 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %65 = call i32 @endpoint_update(i32 %63, %struct.usb_host_endpoint** %8, %struct.usb_host_endpoint** %9, %struct.usb_host_endpoint* %64)
  br label %91

66:                                               ; preds = %49
  %67 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %68 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %67, i32 0, i32 10
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %76 = call i32 @endpoint_update(i32 %74, %struct.usb_host_endpoint** %12, %struct.usb_host_endpoint** %13, %struct.usb_host_endpoint* %75)
  br label %77

77:                                               ; preds = %73, %66
  br label %91

78:                                               ; preds = %49
  %79 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %80 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %79, i32 0, i32 10
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %88 = call i32 @endpoint_update(i32 %86, %struct.usb_host_endpoint** %10, %struct.usb_host_endpoint** %11, %struct.usb_host_endpoint* %87)
  br label %89

89:                                               ; preds = %85, %78
  br label %90

90:                                               ; preds = %49, %89
  br label %91

91:                                               ; preds = %90, %77, %62
  %92 = load i32, i32* %15, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %42

94:                                               ; preds = %42
  %95 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %96 = icmp ne %struct.usb_host_endpoint* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %99 = icmp ne %struct.usb_host_endpoint* %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %102 = icmp ne %struct.usb_host_endpoint* %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %11, align 8
  %105 = icmp ne %struct.usb_host_endpoint* %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %108 = icmp ne %struct.usb_host_endpoint* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %13, align 8
  %111 = icmp ne %struct.usb_host_endpoint* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %106, %103, %100, %97
  br label %120

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %40
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %18

117:                                              ; preds = %18
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %253

120:                                              ; preds = %112
  %121 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %122 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %121)
  store %struct.usb_device* %122, %struct.usb_device** %14, align 8
  %123 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %124 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %128 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %127, i32 0, i32 10
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i64 %126, i64* %130, align 8
  %131 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %132 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %120
  %137 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %138 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %139 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %143 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @usb_set_interface(%struct.usb_device* %137, i32 %141, i64 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %136
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %253

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %151, %120
  %153 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %154 = icmp ne %struct.usb_host_endpoint* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %157 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %158 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %162 = and i32 %160, %161
  %163 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %156, i32 %162)
  %164 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %165 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %164, i32 0, i32 9
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %155, %152
  %167 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %168 = icmp ne %struct.usb_host_endpoint* %167, null
  br i1 %168, label %169, label %180

169:                                              ; preds = %166
  %170 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %171 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %172 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %176 = and i32 %174, %175
  %177 = call i32 @usb_sndbulkpipe(%struct.usb_device* %170, i32 %176)
  %178 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %179 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %169, %166
  %181 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %182 = icmp ne %struct.usb_host_endpoint* %181, null
  br i1 %182, label %183, label %198

183:                                              ; preds = %180
  %184 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %185 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %184, i32 0, i32 0
  %186 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %187 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %186, i32 0, i32 7
  store %struct.TYPE_7__* %185, %struct.TYPE_7__** %187, align 8
  %188 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %189 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %190 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %194 = and i32 %192, %193
  %195 = call i32 @usb_rcvisocpipe(%struct.usb_device* %188, i32 %194)
  %196 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %197 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %183, %180
  %199 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %11, align 8
  %200 = icmp ne %struct.usb_host_endpoint* %199, null
  br i1 %200, label %201, label %216

201:                                              ; preds = %198
  %202 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %11, align 8
  %203 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %202, i32 0, i32 0
  %204 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %205 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %204, i32 0, i32 5
  store %struct.TYPE_7__* %203, %struct.TYPE_7__** %205, align 8
  %206 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %207 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %11, align 8
  %208 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %212 = and i32 %210, %211
  %213 = call i32 @usb_sndisocpipe(%struct.usb_device* %206, i32 %212)
  %214 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %215 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %201, %198
  %217 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %218 = icmp ne %struct.usb_host_endpoint* %217, null
  br i1 %218, label %219, label %234

219:                                              ; preds = %216
  %220 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %221 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %220, i32 0, i32 0
  %222 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %223 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %222, i32 0, i32 3
  store %struct.TYPE_7__* %221, %struct.TYPE_7__** %223, align 8
  %224 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %225 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %226 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %230 = and i32 %228, %229
  %231 = call i32 @usb_rcvintpipe(%struct.usb_device* %224, i32 %230)
  %232 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %233 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %219, %216
  %235 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %13, align 8
  %236 = icmp ne %struct.usb_host_endpoint* %235, null
  br i1 %236, label %237, label %252

237:                                              ; preds = %234
  %238 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %13, align 8
  %239 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %238, i32 0, i32 0
  %240 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %241 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %240, i32 0, i32 1
  store %struct.TYPE_7__* %239, %struct.TYPE_7__** %241, align 8
  %242 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %243 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %13, align 8
  %244 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %248 = and i32 %246, %247
  %249 = call i32 @usb_sndintpipe(%struct.usb_device* %242, i32 %248)
  %250 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %251 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %237, %234
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %252, %149, %117
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @usb_endpoint_dir_in(%struct.TYPE_7__*) #1

declare dso_local i32 @usb_endpoint_type(%struct.TYPE_7__*) #1

declare dso_local i32 @endpoint_update(i32, %struct.usb_host_endpoint**, %struct.usb_host_endpoint**, %struct.usb_host_endpoint*) #1

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i64) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
