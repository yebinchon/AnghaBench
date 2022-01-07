; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_main.c_ipwireless_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_main.c_ipwireless_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.ipw_dev = type { i32, i8*, i8* }

@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@IPWIRELESS_PCCARD_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_CM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_AM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @ipwireless_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipwireless_probe(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipw_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ipw_dev*
  store %struct.ipw_dev* %9, %struct.ipw_dev** %6, align 8
  %10 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %11
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %20
  store i32 %28, i32* %26, align 8
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, 68
  store i32 %32, i32* %30, align 8
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 1
  store i32 16, i32* %34, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %36 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %283

41:                                               ; preds = %2
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @resource_size(%struct.TYPE_4__* %53)
  %55 = load i32, i32* @IPWIRELESS_PCCARD_NAME, align 4
  %56 = call i32 @request_region(i32 %48, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %279

61:                                               ; preds = %41
  %62 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %63 = load i32, i32* @WIN_MEMORY_TYPE_CM, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @WIN_ENABLE, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %68 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %66
  store i32 %74, i32* %72, align 8
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %77 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i32 @pcmcia_request_window(%struct.pcmcia_device* %75, %struct.TYPE_4__* %80, i32 0)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %61
  br label %264

85:                                               ; preds = %61
  %86 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %87 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %88 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %89, i64 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %93 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pcmcia_map_mem_page(%struct.pcmcia_device* %86, %struct.TYPE_4__* %91, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %264

99:                                               ; preds = %85
  %100 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %101 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %102, i64 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = call i32 @resource_size(%struct.TYPE_4__* %104)
  %106 = icmp eq i32 %105, 256
  %107 = zext i1 %106 to i32
  %108 = load %struct.ipw_dev*, %struct.ipw_dev** %6, align 8
  %109 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %111 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %112, i64 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %118 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %119, i64 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = call i32 @resource_size(%struct.TYPE_4__* %121)
  %123 = call i8* @ioremap(i32 %116, i32 %122)
  %124 = load %struct.ipw_dev*, %struct.ipw_dev** %6, align 8
  %125 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.ipw_dev*, %struct.ipw_dev** %6, align 8
  %127 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %99
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %7, align 4
  br label %264

133:                                              ; preds = %99
  %134 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %135 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %136, i64 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %142 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %143, i64 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = call i32 @resource_size(%struct.TYPE_4__* %145)
  %147 = load i32, i32* @IPWIRELESS_PCCARD_NAME, align 4
  %148 = call i32 @request_mem_region(i32 %140, i32 %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %133
  %151 = load i32, i32* @EBUSY, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %7, align 4
  br label %259

153:                                              ; preds = %133
  %154 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %155 = load i32, i32* @WIN_MEMORY_TYPE_AM, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @WIN_ENABLE, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %160 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %161, i64 3
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %158
  store i32 %166, i32* %164, align 8
  %167 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %168 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %167, i32 0, i32 2
  %169 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %169, i64 3
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  store i64 0, i64* %172, align 8
  %173 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %174 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %175 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %174, i32 0, i32 2
  %176 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %176, i64 3
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = call i32 @pcmcia_request_window(%struct.pcmcia_device* %173, %struct.TYPE_4__* %178, i32 0)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %153
  br label %244

183:                                              ; preds = %153
  %184 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %185 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %186 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %185, i32 0, i32 2
  %187 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %187, i64 3
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = call i32 @pcmcia_map_mem_page(%struct.pcmcia_device* %184, %struct.TYPE_4__* %189, i32 0)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  br label %244

194:                                              ; preds = %183
  %195 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %196 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %195, i32 0, i32 2
  %197 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %197, i64 3
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %203 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %202, i32 0, i32 2
  %204 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %204, i64 3
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = call i32 @resource_size(%struct.TYPE_4__* %206)
  %208 = call i8* @ioremap(i32 %201, i32 %207)
  %209 = load %struct.ipw_dev*, %struct.ipw_dev** %6, align 8
  %210 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %209, i32 0, i32 2
  store i8* %208, i8** %210, align 8
  %211 = load %struct.ipw_dev*, %struct.ipw_dev** %6, align 8
  %212 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %194
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %7, align 4
  br label %244

218:                                              ; preds = %194
  %219 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %220 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %219, i32 0, i32 2
  %221 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %221, i64 3
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %227 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %226, i32 0, i32 2
  %228 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %228, i64 3
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = call i32 @resource_size(%struct.TYPE_4__* %230)
  %232 = load i32, i32* @IPWIRELESS_PCCARD_NAME, align 4
  %233 = call i32 @request_mem_region(i32 %225, i32 %231, i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %218
  %236 = load i32, i32* @EBUSY, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %7, align 4
  br label %239

238:                                              ; preds = %218
  store i32 0, i32* %3, align 4
  br label %283

239:                                              ; preds = %235
  %240 = load %struct.ipw_dev*, %struct.ipw_dev** %6, align 8
  %241 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %240, i32 0, i32 2
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @iounmap(i8* %242)
  br label %244

244:                                              ; preds = %239, %215, %193, %182
  %245 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %246 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %245, i32 0, i32 2
  %247 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %247, i64 2
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %253 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %252, i32 0, i32 2
  %254 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %254, i64 2
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = call i32 @resource_size(%struct.TYPE_4__* %256)
  %258 = call i32 @release_mem_region(i32 %251, i32 %257)
  br label %259

259:                                              ; preds = %244, %150
  %260 = load %struct.ipw_dev*, %struct.ipw_dev** %6, align 8
  %261 = getelementptr inbounds %struct.ipw_dev, %struct.ipw_dev* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @iounmap(i8* %262)
  br label %264

264:                                              ; preds = %259, %130, %98, %84
  %265 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %266 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %265, i32 0, i32 2
  %267 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %267, i64 0
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %273 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %272, i32 0, i32 2
  %274 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %274, i64 0
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %275, align 8
  %277 = call i32 @resource_size(%struct.TYPE_4__* %276)
  %278 = call i32 @release_region(i32 %271, i32 %277)
  br label %279

279:                                              ; preds = %264, %58
  %280 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %281 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %280)
  %282 = load i32, i32* %7, align 4
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %279, %238, %39
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @pcmcia_map_mem_page(%struct.pcmcia_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
