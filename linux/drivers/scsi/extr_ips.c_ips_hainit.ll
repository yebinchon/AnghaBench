; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_hainit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_hainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64*, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { i64, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { {}*, {}* }

@.str = private unnamed_addr constant [11 x i8] c"ips_hainit\00", align 1
@IPS_INTR_IORL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unable to read config from controller.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"unable to read controller status.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"unable to read subsystem parameters.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"unable to write driver info to controller.\0A\00", align 1
@IPS_MAX_TARGETS = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID3L = common dso_local global i64 0, align 8
@IPS_ADTYPE_SERVERAID4L = common dso_local global i64 0, align 8
@IPS_ADTYPE_SERVERAID4LX = common dso_local global i64 0, align 8
@MaxLiteCmds = common dso_local global i64 0, align 8
@IPS_ADAPTER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @ips_hainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_hainit(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %5 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  %6 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %7 = icmp ne %struct.TYPE_22__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %264

9:                                                ; preds = %1
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = bitcast {}** %12 to i32 (%struct.TYPE_22__*)**
  %14 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_22__*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 15
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = bitcast {}** %19 to i32 (%struct.TYPE_22__*)**
  %21 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %20, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = call i32 %21(%struct.TYPE_22__* %22)
  br label %24

24:                                               ; preds = %16, %9
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 15
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.TYPE_22__*)**
  %29 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_22__*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 15
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.TYPE_22__*)**
  %36 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %35, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = call i32 %36(%struct.TYPE_22__* %37)
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = call i32 (...) @ktime_get_real_seconds()
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 14
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = load i32, i32* @IPS_INTR_IORL, align 4
  %47 = call i32 @ips_ffdc_reset(%struct.TYPE_22__* %45, i32 %46)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %49 = load i32, i32* @IPS_INTR_IORL, align 4
  %50 = call i32 @ips_read_config(%struct.TYPE_22__* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @KERN_WARNING, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @IPS_PRINTK(i32 %53, i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %264

58:                                               ; preds = %39
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %60 = load i32, i32* @IPS_INTR_IORL, align 4
  %61 = call i32 @ips_read_adapter_status(%struct.TYPE_22__* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @KERN_WARNING, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @IPS_PRINTK(i32 %64, i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %264

69:                                               ; preds = %58
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = call i32 @ips_identify_controller(%struct.TYPE_22__* %70)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %73 = load i32, i32* @IPS_INTR_IORL, align 4
  %74 = call i32 @ips_read_subsystem_parameters(%struct.TYPE_22__* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @KERN_WARNING, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 13
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @IPS_PRINTK(i32 %77, i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %264

82:                                               ; preds = %69
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %84 = load i32, i32* @IPS_INTR_IORL, align 4
  %85 = call i32 @ips_write_driver_status(%struct.TYPE_22__* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @KERN_WARNING, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @IPS_PRINTK(i32 %88, i32 %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %264

93:                                               ; preds = %82
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 10
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = load i32, i32* @IPS_INTR_IORL, align 4
  %108 = call i32 @ips_clear_adapter(%struct.TYPE_22__* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %100, %93
  %110 = load i32, i32* @IPS_MAX_TARGETS, align 4
  %111 = add nsw i32 %110, 1
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 3
  store i32 1, i32* %115, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 11
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IPS_MAX_TARGETS, align 4
  %122 = sdiv i32 %120, %121
  %123 = add nsw i32 %122, 1
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 10
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  switch i32 %133, label %144 [
    i32 4, label %134
    i32 5, label %137
    i32 6, label %140
    i32 7, label %143
  ]

134:                                              ; preds = %109
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 5
  store i32 65536, i32* %136, align 4
  br label %147

137:                                              ; preds = %109
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 5
  store i32 131072, i32* %139, align 4
  br label %147

140:                                              ; preds = %109
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 5
  store i32 262144, i32* %142, align 4
  br label %147

143:                                              ; preds = %109
  br label %144

144:                                              ; preds = %109, %143
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 5
  store i32 524288, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %140, %137, %134
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 12
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le32_to_cpu(i32 %154)
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %147
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 11
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  br label %189

166:                                              ; preds = %147
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 10
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %185 [
    i32 4, label %175
    i32 5, label %178
    i32 6, label %181
    i32 7, label %184
  ]

175:                                              ; preds = %166
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 6
  store i32 32, i32* %177, align 8
  br label %188

178:                                              ; preds = %166
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 6
  store i32 16, i32* %180, align 8
  br label %188

181:                                              ; preds = %166
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 6
  store i32 8, i32* %183, align 8
  br label %188

184:                                              ; preds = %166
  br label %185

185:                                              ; preds = %166, %184
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 6
  store i32 4, i32* %187, align 8
  br label %188

188:                                              ; preds = %185, %181, %178, %175
  br label %189

189:                                              ; preds = %188, %158
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @IPS_ADTYPE_SERVERAID3L, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %207, label %195

195:                                              ; preds = %189
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @IPS_ADTYPE_SERVERAID4L, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %195
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @IPS_ADTYPE_SERVERAID4LX, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %201, %195, %189
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* @MaxLiteCmds, align 8
  %213 = icmp sgt i64 %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %207
  %215 = load i64, i64* @MaxLiteCmds, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load i64, i64* @MaxLiteCmds, align 8
  %219 = trunc i64 %218 to i32
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 6
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %217, %214, %207
  br label %223

223:                                              ; preds = %222, %201
  %224 = load i32, i32* @IPS_ADAPTER_ID, align 4
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 8
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  store i32 %224, i32* %228, align 4
  store i32 1, i32* %4, align 4
  br label %229

229:                                              ; preds = %260, %223
  %230 = load i32, i32* %4, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %263

235:                                              ; preds = %229
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 10
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 31
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 8
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %4, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %246, i32* %252, align 4
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 9
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* %4, align 4
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %255, i64 %258
  store i64 0, i64* %259, align 8
  br label %260

260:                                              ; preds = %235
  %261 = load i32, i32* %4, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %4, align 4
  br label %229

263:                                              ; preds = %229
  store i32 1, i32* %2, align 4
  br label %264

264:                                              ; preds = %263, %87, %76, %63, %52, %8
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @ips_ffdc_reset(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ips_read_config(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @IPS_PRINTK(i32, i32, i8*) #1

declare dso_local i32 @ips_read_adapter_status(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ips_identify_controller(%struct.TYPE_22__*) #1

declare dso_local i32 @ips_read_subsystem_parameters(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ips_write_driver_status(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ips_clear_adapter(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
