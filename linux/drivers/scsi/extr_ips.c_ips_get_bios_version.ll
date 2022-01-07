; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_get_bios_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_get_bios_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32*, i32, i32, %struct.TYPE_17__*, i64, %struct.TYPE_14__*, i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, i8**, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, i64, i32, i8* }
%struct.TYPE_14__ = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"ips_get_bios_version\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"       ?\00", align 1
@IPS_DEVICEID_COPPERHEAD = common dso_local global i64 0, align 8
@IPS_REG_FLAP = common dso_local global i64 0, align 8
@IPS_REVID_TROMBONE64 = common dso_local global i64 0, align 8
@IPS_REG_FLDP = common dso_local global i64 0, align 8
@ips_cmd_timeout = common dso_local global i32 0, align 4
@IPS_CMD_RW_BIOSFW = common dso_local global i8* null, align 8
@IPS_FAILURE = common dso_local global i32 0, align 4
@IPS_SUCCESS_IMM = common dso_local global i32 0, align 4
@IPS_GSC_STATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32)* @ips_get_bios_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_get_bios_version(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strncpy(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPS_DEVICEID_COPPERHEAD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %262

23:                                               ; preds = %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = call i64 @IPS_USE_MEMIO(%struct.TYPE_18__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %144

27:                                               ; preds = %23
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IPS_REG_FLAP, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 0, i64 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = call i32 @udelay(i32 25)
  br label %43

43:                                               ; preds = %41, %27
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IPS_REG_FLDP, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readb(i64 %48)
  %50 = icmp ne i32 %49, 85
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %419

52:                                               ; preds = %43
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IPS_REG_FLAP, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 1, i64 %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = call i32 @udelay(i32 25)
  br label %68

68:                                               ; preds = %66, %52
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IPS_REG_FLDP, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readb(i64 %73)
  %75 = icmp ne i32 %74, 170
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %419

77:                                               ; preds = %68
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IPS_REG_FLAP, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 511, i64 %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = call i32 @udelay(i32 25)
  br label %93

93:                                               ; preds = %91, %77
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IPS_REG_FLDP, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readb(i64 %98)
  store i32 %99, i32* %7, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IPS_REG_FLAP, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 510, i64 %104)
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %93
  %114 = call i32 @udelay(i32 25)
  br label %115

115:                                              ; preds = %113, %93
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @IPS_REG_FLDP, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @readb(i64 %120)
  store i32 %121, i32* %8, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IPS_REG_FLAP, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 509, i64 %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %115
  %136 = call i32 @udelay(i32 25)
  br label %137

137:                                              ; preds = %135, %115
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @IPS_REG_FLDP, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @readb(i64 %142)
  store i32 %143, i32* %9, align 4
  br label %261

144:                                              ; preds = %23
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @IPS_REG_FLAP, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @outl(i32 0, i64 %149)
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %144
  %159 = call i32 @udelay(i32 25)
  br label %160

160:                                              ; preds = %158, %144
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IPS_REG_FLDP, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @inb(i64 %165)
  %167 = icmp ne i32 %166, 85
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %419

169:                                              ; preds = %160
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @IPS_REG_FLAP, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @outl(i32 1, i64 %174)
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %169
  %184 = call i32 @udelay(i32 25)
  br label %185

185:                                              ; preds = %183, %169
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @IPS_REG_FLDP, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @inb(i64 %190)
  %192 = icmp ne i32 %191, 170
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  br label %419

194:                                              ; preds = %185
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @IPS_REG_FLAP, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @outl(i32 511, i64 %199)
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 6
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %194
  %209 = call i32 @udelay(i32 25)
  br label %210

210:                                              ; preds = %208, %194
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @IPS_REG_FLDP, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @inb(i64 %215)
  store i32 %216, i32* %7, align 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @IPS_REG_FLAP, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @outl(i32 510, i64 %221)
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 6
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %210
  %231 = call i32 @udelay(i32 25)
  br label %232

232:                                              ; preds = %230, %210
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @IPS_REG_FLDP, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @inb(i64 %237)
  store i32 %238, i32* %8, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @IPS_REG_FLAP, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @outl(i32 509, i64 %243)
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 6
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %232
  %253 = call i32 @udelay(i32 25)
  br label %254

254:                                              ; preds = %252, %232
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @IPS_REG_FLDP, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @inb(i64 %259)
  store i32 %260, i32* %9, align 4
  br label %261

261:                                              ; preds = %254, %137
  br label %371

262:                                              ; preds = %2
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  store i32* %265, i32** %10, align 8
  %266 = load i32*, i32** %10, align 8
  %267 = call i32 @memset(i32* %266, i32 0, i32 4096)
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 4
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %269, align 8
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i64 %275
  store %struct.TYPE_17__* %276, %struct.TYPE_17__** %5, align 8
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %279 = call i32 @ips_init_scb(%struct.TYPE_18__* %277, %struct.TYPE_17__* %278)
  %280 = load i32, i32* @ips_cmd_timeout, align 4
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 8
  %283 = load i8*, i8** @IPS_CMD_RW_BIOSFW, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 3
  %286 = load i8**, i8*** %285, align 8
  %287 = getelementptr inbounds i8*, i8** %286, i64 0
  store i8* %283, i8** %287, align 8
  %288 = load i8*, i8** @IPS_CMD_RW_BIOSFW, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 7
  store i8* %288, i8** %292, align 8
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %295 = call i32 @IPS_COMMAND_ID(%struct.TYPE_18__* %293, %struct.TYPE_17__* %294)
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 6
  store i32 %295, i32* %299, align 8
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  store i32 1, i32* %303, align 8
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 5
  store i64 0, i64* %307, align 8
  %308 = call i32 @cpu_to_le32(i32 2048)
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 4
  store i32 %308, i32* %312, align 8
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 1
  store i32 1, i32* %316, align 4
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 3
  store i64 0, i64* %320, align 8
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 0
  store i32 4096, i32* %322, align 8
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 2
  store i32 %325, i32* %329, align 8
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %332 = load i32, i32* @ips_cmd_timeout, align 4
  %333 = load i32, i32* %4, align 4
  %334 = call i32 @ips_send_wait(%struct.TYPE_18__* %330, %struct.TYPE_17__* %331, i32 %332, i32 %333)
  store i32 %334, i32* %6, align 4
  %335 = load i32, i32* @IPS_FAILURE, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %348, label %337

337:                                              ; preds = %262
  %338 = load i32, i32* %6, align 4
  %339 = load i32, i32* @IPS_SUCCESS_IMM, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %348, label %341

341:                                              ; preds = %337
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @IPS_GSC_STATUS_MASK, align 4
  %346 = and i32 %344, %345
  %347 = icmp sgt i32 %346, 1
  br i1 %347, label %348, label %349

348:                                              ; preds = %341, %337, %262
  br label %419

349:                                              ; preds = %341
  %350 = load i32*, i32** %10, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 192
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 85
  br i1 %353, label %354, label %369

354:                                              ; preds = %349
  %355 = load i32*, i32** %10, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 193
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 170
  br i1 %358, label %359, label %369

359:                                              ; preds = %354
  %360 = load i32*, i32** %10, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 703
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %7, align 4
  %363 = load i32*, i32** %10, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 702
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %8, align 4
  %366 = load i32*, i32** %10, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 701
  %368 = load i32, i32* %367, align 4
  store i32 %368, i32* %9, align 4
  br label %370

369:                                              ; preds = %354, %349
  br label %419

370:                                              ; preds = %359
  br label %371

371:                                              ; preds = %370, %261
  %372 = load i32, i32* %7, align 4
  %373 = call i8* @hex_asc_upper_hi(i32 %372)
  %374 = ptrtoint i8* %373 to i8
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 0
  %377 = load i8*, i8** %376, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 0
  store i8 %374, i8* %378, align 1
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 0
  %381 = load i8*, i8** %380, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 1
  store i8 46, i8* %382, align 1
  %383 = load i32, i32* %7, align 4
  %384 = call i8* @hex_asc_upper_lo(i32 %383)
  %385 = ptrtoint i8* %384 to i8
  %386 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 2
  store i8 %385, i8* %389, align 1
  %390 = load i32, i32* %9, align 4
  %391 = call i8* @hex_asc_upper_lo(i32 %390)
  %392 = ptrtoint i8* %391 to i8
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 3
  store i8 %392, i8* %396, align 1
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %397, i32 0, i32 0
  %399 = load i8*, i8** %398, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 4
  store i8 46, i8* %400, align 1
  %401 = load i32, i32* %8, align 4
  %402 = call i8* @hex_asc_upper_hi(i32 %401)
  %403 = ptrtoint i8* %402 to i8
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 0
  %406 = load i8*, i8** %405, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 5
  store i8 %403, i8* %407, align 1
  %408 = load i32, i32* %8, align 4
  %409 = call i8* @hex_asc_upper_lo(i32 %408)
  %410 = ptrtoint i8* %409 to i8
  %411 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 0
  %413 = load i8*, i8** %412, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 6
  store i8 %410, i8* %414, align 1
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 0
  %417 = load i8*, i8** %416, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 7
  store i8 0, i8* %418, align 1
  br label %419

419:                                              ; preds = %371, %369, %348, %193, %168, %76, %51
  ret void
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @IPS_USE_MEMIO(%struct.TYPE_18__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ips_init_scb(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @IPS_COMMAND_ID(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ips_send_wait(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @hex_asc_upper_hi(i32) #1

declare dso_local i8* @hex_asc_upper_lo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
