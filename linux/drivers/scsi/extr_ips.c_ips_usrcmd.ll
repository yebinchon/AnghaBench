; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_usrcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_usrcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i64, %struct.TYPE_24__*, %struct.TYPE_18__, %struct.TYPE_18__, i32, i64, i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_23__, i8*, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i64, i8*, i32 }
%struct.TYPE_22__ = type { i64, i8* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ips_usrcmd\00", align 1
@ipsintr_done = common dso_local global i32 0, align 4
@ips_cmd_timeout = common dso_local global i32 0, align 4
@IPS_CMD_READ_SG = common dso_local global i64 0, align 8
@IPS_CMD_WRITE_SG = common dso_local global i64 0, align 8
@IPS_CMD_DCDB_SG = common dso_local global i64 0, align 8
@IPS_CMD_DCDB = common dso_local global i64 0, align 8
@IPS_TIMEOUT10 = common dso_local global i32 0, align 4
@IPS_TIMEOUT60 = common dso_local global i32 0, align 4
@IPS_TIMEOUT20M = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_25__*)* @ips_usrcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_usrcmd(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %10 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %12 = icmp ne %struct.TYPE_25__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %15 = icmp ne %struct.TYPE_26__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %18 = icmp ne %struct.TYPE_27__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %3
  store i32 0, i32* %4, align 4
  br label %247

20:                                               ; preds = %16
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 14
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = call i32 @memcpy(%struct.TYPE_18__* %30, i32* %33, i32 4)
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = call i32 @memcpy(%struct.TYPE_18__* %36, i32* %39, i32 4)
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 14
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 10
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 6
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 9
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @ipsintr_done, align 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @ips_cmd_timeout, align 4
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %92 = call i32 @IPS_COMMAND_ID(%struct.TYPE_27__* %90, %struct.TYPE_25__* %91)
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IPS_CMD_READ_SG, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %120, label %104

104:                                              ; preds = %20
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IPS_CMD_WRITE_SG, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %104
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @IPS_CMD_DCDB_SG, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112, %104, %20
  store i32 0, i32* %4, align 4
  br label %247

121:                                              ; preds = %112
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 6
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, 24
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  br label %141

138:                                              ; preds = %121
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %126
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @IPS_CMD_DCDB, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %141
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 3
  %156 = ptrtoint %struct.TYPE_18__* %155 to i64
  %157 = add i64 %153, %156
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %159 = ptrtoint %struct.TYPE_25__* %158 to i64
  %160 = sub i64 %157, %159
  %161 = call i8* @cpu_to_le32(i64 %160)
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  store i8* %161, i8** %165, align 8
  br label %166

166:                                              ; preds = %149, %141
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %197

171:                                              ; preds = %166
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @IPS_CMD_DCDB, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i8* @cpu_to_le32(i64 %182)
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 2
  store i8* %183, i8** %186, align 8
  br label %196

187:                                              ; preds = %171
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i8* @cpu_to_le32(i64 %190)
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 1
  store i8* %191, i8** %195, align 8
  br label %196

196:                                              ; preds = %187, %179
  br label %197

197:                                              ; preds = %196, %166
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %240

202:                                              ; preds = %197
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp sle i32 %210, 10
  br i1 %211, label %212, label %219

212:                                              ; preds = %202
  %213 = load i32, i32* @IPS_TIMEOUT10, align 4
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %213
  store i32 %218, i32* %216, align 8
  br label %239

219:                                              ; preds = %202
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp sle i32 %222, 60
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load i32, i32* @IPS_TIMEOUT60, align 4
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %225
  store i32 %230, i32* %228, align 8
  br label %238

231:                                              ; preds = %219
  %232 = load i32, i32* @IPS_TIMEOUT20M, align 4
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %232
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %231, %224
  br label %239

239:                                              ; preds = %238, %212
  br label %240

240:                                              ; preds = %239, %197
  %241 = load i32, i32* @DID_OK, align 4
  %242 = shl i32 %241, 16
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  store i32 %242, i32* %246, align 8
  store i32 1, i32* %4, align 4
  br label %247

247:                                              ; preds = %240, %120, %19
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @IPS_COMMAND_ID(%struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
