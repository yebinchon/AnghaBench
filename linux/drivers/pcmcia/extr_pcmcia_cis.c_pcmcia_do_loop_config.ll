; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_cis.c_pcmcia_do_loop_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_cis.c_pcmcia_do_loop_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_22__, %struct.TYPE_23__, %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.pcmcia_cfg_mem = type { i32 (%struct.pcmcia_device*, i32)*, i32, %struct.TYPE_13__, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32, i32, i32, %struct.TYPE_21__**, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"testing configuration %x, autoconf %x\0A\00", align 1
@CISTPL_CFTABLE_DEFAULT = common dso_local global i32 0, align 4
@CONF_AUTO_CHECK_VCC = common dso_local global i32 0, align 4
@CISTPL_POWER_VNOM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CONF_AUTO_SET_VPP = common dso_local global i32 0, align 4
@CONF_AUTO_AUDIO = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_AUDIO = common dso_local global i32 0, align 4
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@CISTPL_IO_LINES_MASK = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"checking configuration %x: %pr %pr %pr (%d lines)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, i8*)* @pcmcia_do_loop_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_do_loop_config(i32* %0, %struct.TYPE_14__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pcmcia_cfg_mem*, align 8
  %9 = alloca %struct.pcmcia_device*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.pcmcia_cfg_mem*
  store %struct.pcmcia_cfg_mem* %18, %struct.pcmcia_cfg_mem** %8, align 8
  %19 = load %struct.pcmcia_cfg_mem*, %struct.pcmcia_cfg_mem** %8, align 8
  %20 = getelementptr inbounds %struct.pcmcia_cfg_mem, %struct.pcmcia_cfg_mem* %19, i32 0, i32 3
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %20, align 8
  store %struct.pcmcia_device* %21, %struct.pcmcia_device** %9, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load %struct.pcmcia_cfg_mem*, %struct.pcmcia_cfg_mem** %8, align 8
  %25 = getelementptr inbounds %struct.pcmcia_cfg_mem, %struct.pcmcia_cfg_mem* %24, i32 0, i32 2
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %11, align 8
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 7
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 5
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pcmcia_cfg_mem*, %struct.pcmcia_cfg_mem** %8, align 8
  %46 = getelementptr inbounds %struct.pcmcia_cfg_mem, %struct.pcmcia_cfg_mem* %45, i32 0, i32 3
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %46, align 8
  %48 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %47, i32 0, i32 4
  store i32 %44, i32* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CISTPL_CFTABLE_DEFAULT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %3
  %56 = load %struct.pcmcia_cfg_mem*, %struct.pcmcia_cfg_mem** %8, align 8
  %57 = getelementptr inbounds %struct.pcmcia_cfg_mem, %struct.pcmcia_cfg_mem* %56, i32 0, i32 2
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = bitcast %struct.TYPE_13__* %57 to i8*
  %60 = bitcast %struct.TYPE_13__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 80, i1 false)
  br label %61

61:                                               ; preds = %55, %3
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @CONF_AUTO_CHECK_VCC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %118

66:                                               ; preds = %61
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %66
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 10000
  %86 = icmp ne i32 %76, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %482

90:                                               ; preds = %75
  br label %117

91:                                               ; preds = %66
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %97 = shl i32 1, %96
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %91
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 10000
  %111 = icmp ne i32 %101, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %482

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116, %90
  br label %118

118:                                              ; preds = %117, %61
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @CONF_AUTO_SET_VPP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %167

123:                                              ; preds = %118
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %129 = shl i32 1, %128
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %123
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %140, 10000
  %142 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %143 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %166

144:                                              ; preds = %123
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %150 = shl i32 1, %149
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %144
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, 10000
  %163 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %164 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %153, %144
  br label %166

166:                                              ; preds = %165, %132
  br label %167

167:                                              ; preds = %166, %118
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @CONF_AUTO_AUDIO, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %167
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @CISTPL_CFTABLE_AUDIO, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %181 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %182 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %172, %167
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %360

190:                                              ; preds = %185
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 2
  br label %202

199:                                              ; preds = %190
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi %struct.TYPE_23__* [ %198, %196 ], [ %201, %199 ]
  store %struct.TYPE_23__* %203, %struct.TYPE_23__** %14, align 8
  store i32 0, i32* %15, align 4
  %204 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %205 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %204, i32 0, i32 3
  %206 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %206, i64 0
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  store i32 0, i32* %209, align 4
  %210 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %211 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %210, i32 0, i32 3
  %212 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %212, i64 0
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  store i32 0, i32* %215, align 4
  %216 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %217 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %216, i32 0, i32 3
  %218 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %218, i64 1
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  store i32 0, i32* %221, align 4
  %222 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %223 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %222, i32 0, i32 3
  %224 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %224, i64 1
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 0
  store i32 0, i32* %227, align 4
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %202
  %233 = load i32, i32* @ENODEV, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %4, align 4
  br label %482

235:                                              ; preds = %202
  %236 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %239 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %238, i32 0, i32 3
  %240 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %240, i64 0
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, %237
  store i32 %245, i32* %243, align 4
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @pcmcia_io_cfg_data_width(i32 %248)
  %250 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %251 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %250, i32 0, i32 3
  %252 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %252, i64 0
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %249
  store i32 %257, i32* %255, align 4
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp sgt i32 %260, 1
  br i1 %261, label %262, label %322

262:                                              ; preds = %235
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i64 1
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i64 0
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp sgt i64 %268, %274
  %276 = zext i1 %275 to i32
  store i32 %276, i32* %15, align 4
  %277 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %278 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %277, i32 0, i32 3
  %279 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %279, i64 0
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %285 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %284, i32 0, i32 3
  %286 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %286, i64 1
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 2
  store i32 %283, i32* %289, align 4
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %291, align 8
  %293 = load i32, i32* %15, align 4
  %294 = sub nsw i32 1, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %301 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %300, i32 0, i32 3
  %302 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %302, i64 1
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 0
  store i32 %299, i32* %305, align 4
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 2
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %307, align 8
  %309 = load i32, i32* %15, align 4
  %310 = sub nsw i32 1, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %317 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %316, i32 0, i32 3
  %318 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %318, i64 1
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 1
  store i32 %315, i32* %321, align 4
  br label %322

322:                                              ; preds = %262, %235
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 2
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %324, align 8
  %326 = load i32, i32* %15, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = trunc i64 %330 to i32
  %332 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %333 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %332, i32 0, i32 3
  %334 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %334, i64 0
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 0
  store i32 %331, i32* %337, align 4
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 2
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %339, align 8
  %341 = load i32, i32* %15, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %348 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %347, i32 0, i32 3
  %349 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %349, i64 0
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 1
  store i32 %346, i32* %352, align 4
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @CISTPL_IO_LINES_MASK, align 4
  %357 = and i32 %355, %356
  %358 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %359 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %358, i32 0, i32 2
  store i32 %357, i32* %359, align 8
  br label %360

360:                                              ; preds = %322, %185
  %361 = load i32, i32* %12, align 4
  %362 = load i32, i32* @CONF_AUTO_SET_IOMEM, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %449

365:                                              ; preds = %360
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 1
  br label %377

374:                                              ; preds = %365
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 1
  br label %377

377:                                              ; preds = %374, %371
  %378 = phi %struct.TYPE_22__* [ %373, %371 ], [ %376, %374 ]
  store %struct.TYPE_22__* %378, %struct.TYPE_22__** %16, align 8
  %379 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %380 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %379, i32 0, i32 3
  %381 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %381, i64 2
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 1
  store i32 0, i32* %384, align 4
  %385 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %386 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %385, i32 0, i32 3
  %387 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %387, i64 2
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %389, i32 0, i32 0
  store i32 0, i32* %390, align 4
  %391 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %377
  %396 = load i32, i32* @ENODEV, align 4
  %397 = sub nsw i32 0, %396
  store i32 %397, i32* %4, align 4
  br label %482

398:                                              ; preds = %377
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i64 0
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = trunc i64 %404 to i32
  %406 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %407 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %406, i32 0, i32 3
  %408 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %408, i64 2
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 0
  store i32 %405, i32* %411, align 4
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 1
  %414 = load %struct.TYPE_15__*, %struct.TYPE_15__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i64 0
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = trunc i64 %417 to i32
  %419 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %420 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %419, i32 0, i32 3
  %421 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %421, i64 2
  %423 = load %struct.TYPE_21__*, %struct.TYPE_21__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %423, i32 0, i32 1
  store i32 %418, i32* %424, align 4
  %425 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %426 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %425, i32 0, i32 3
  %427 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %427, i64 2
  %429 = load %struct.TYPE_21__*, %struct.TYPE_21__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = icmp slt i32 %431, 4096
  br i1 %432, label %433, label %440

433:                                              ; preds = %398
  %434 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %435 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %434, i32 0, i32 3
  %436 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %436, i64 2
  %438 = load %struct.TYPE_21__*, %struct.TYPE_21__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %438, i32 0, i32 1
  store i32 4096, i32* %439, align 4
  br label %440

440:                                              ; preds = %433, %398
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %441, i32 0, i32 1
  %443 = load %struct.TYPE_15__*, %struct.TYPE_15__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %443, i64 0
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 8
  %447 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %448 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %447, i32 0, i32 6
  store i32 %446, i32* %448, align 8
  br label %449

449:                                              ; preds = %440, %360
  %450 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %451 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %450, i32 0, i32 5
  %452 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %453 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %452, i32 0, i32 4
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %456 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %455, i32 0, i32 3
  %457 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %457, i64 0
  %459 = load %struct.TYPE_21__*, %struct.TYPE_21__** %458, align 8
  %460 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %461 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %460, i32 0, i32 3
  %462 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %462, i64 1
  %464 = load %struct.TYPE_21__*, %struct.TYPE_21__** %463, align 8
  %465 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %466 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %465, i32 0, i32 3
  %467 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %467, i64 2
  %469 = load %struct.TYPE_21__*, %struct.TYPE_21__** %468, align 8
  %470 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %471 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %451, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %454, %struct.TYPE_21__* %459, %struct.TYPE_21__* %464, %struct.TYPE_21__* %469, i32 %472)
  %474 = load %struct.pcmcia_cfg_mem*, %struct.pcmcia_cfg_mem** %8, align 8
  %475 = getelementptr inbounds %struct.pcmcia_cfg_mem, %struct.pcmcia_cfg_mem* %474, i32 0, i32 0
  %476 = load i32 (%struct.pcmcia_device*, i32)*, i32 (%struct.pcmcia_device*, i32)** %475, align 8
  %477 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  %478 = load %struct.pcmcia_cfg_mem*, %struct.pcmcia_cfg_mem** %8, align 8
  %479 = getelementptr inbounds %struct.pcmcia_cfg_mem, %struct.pcmcia_cfg_mem* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 8
  %481 = call i32 %476(%struct.pcmcia_device* %477, i32 %480)
  store i32 %481, i32* %4, align 4
  br label %482

482:                                              ; preds = %449, %395, %232, %112, %87
  %483 = load i32, i32* %4, align 4
  ret i32 %483
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pcmcia_io_cfg_data_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
