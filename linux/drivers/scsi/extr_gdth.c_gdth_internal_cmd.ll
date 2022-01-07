; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_internal_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_internal_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_25__, i32, i64, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i64, i64, i64, i8* }
%struct.TYPE_21__ = type { i64, i64, i64, i8* }
%struct.TYPE_20__ = type { i8*, i64 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i64, i8*, i8* }

@.str = private unnamed_addr constant [42 x i8] c"gdth_internal_cmd() service %d opcode %d\0A\00", align 1
@INIT_RETRIES = common dso_local global i32 0, align 4
@INTERNAL_CMND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"GDT: No free command index found\0A\00", align 1
@LOCALBOARD = common dso_local global i32 0, align 4
@CACHESERVICE = common dso_local global i64 0, align 8
@GDT_IOCTL = common dso_local global i64 0, align 8
@GDT_64BIT = common dso_local global i32 0, align 4
@SCSIRAWSERVICE = common dso_local global i64 0, align 8
@SCREENSERVICE = common dso_local global i64 0, align 8
@GDT_REALTIME = common dso_local global i64 0, align 8
@INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"GDT: Initialization error (timeout service %d)\0A\00", align 1
@S_BSY = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i64, i64, i8*, i32, i32)* @gdth_internal_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdth_internal_cmd(%struct.TYPE_26__* %0, i64 %1, i64 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @TRACE2(i8* %19)
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %14, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %25 = bitcast %struct.TYPE_17__* %24 to i8*
  %26 = call i32 @memset(i8* %25, i32 0, i32 168)
  %27 = load i32, i32* @INIT_RETRIES, align 4
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %253, %6
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @INTERNAL_CMND, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %36 = call i32 @gdth_get_cmd_index(%struct.TYPE_26__* %35)
  store i32 %36, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %263

40:                                               ; preds = %28
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %42 = call i32 @gdth_set_sema0(%struct.TYPE_26__* %41)
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @LOCALBOARD, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @CACHESERVICE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %117

52:                                               ; preds = %40
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @GDT_IOCTL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %52
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  store i8* %64, i8** %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  store i64 %70, i64* %74, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  br label %116

82:                                               ; preds = %52
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @GDT_64BIT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %82
  %90 = load i8*, i8** %11, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  store i64 %91, i64* %95, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  br label %115

101:                                              ; preds = %82
  %102 = load i8*, i8** %11, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  store i64 %103, i64* %107, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  store i8* %110, i8** %114, align 8
  br label %115

115:                                              ; preds = %101, %89
  br label %116

116:                                              ; preds = %115, %56
  br label %222

117:                                              ; preds = %40
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @SCSIRAWSERVICE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %179

121:                                              ; preds = %117
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @GDT_64BIT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %121
  %129 = load i8*, i8** %11, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 3
  store i8* %129, i8** %133, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 2
  store i64 %135, i64* %139, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  store i64 %141, i64* %145, align 8
  %146 = load i32, i32* %13, align 4
  %147 = ashr i32 %146, 8
  %148 = sext i32 %147 to i64
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  store i64 %148, i64* %152, align 8
  br label %178

153:                                              ; preds = %121
  %154 = load i8*, i8** %11, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 3
  store i8* %154, i8** %158, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 2
  store i64 %160, i64* %164, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  store i64 %166, i64* %170, align 8
  %171 = load i32, i32* %13, align 4
  %172 = ashr i32 %171, 8
  %173 = sext i32 %172 to i64
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  store i64 %173, i64* %177, align 8
  br label %178

178:                                              ; preds = %153, %128
  br label %221

179:                                              ; preds = %117
  %180 = load i64, i64* %9, align 8
  %181 = load i64, i64* @SCREENSERVICE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %220

183:                                              ; preds = %179
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* @GDT_REALTIME, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %219

187:                                              ; preds = %183
  %188 = load i8*, i8** %11, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = bitcast i32* %195 to i8**
  store i8* %188, i8** %196, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i8*
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = bitcast i32* %206 to i8**
  store i8* %199, i8** %207, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i8*
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 8
  %218 = bitcast i32* %217 to i8**
  store i8* %210, i8** %218, align 8
  br label %219

219:                                              ; preds = %187, %183
  br label %220

220:                                              ; preds = %219, %179
  br label %221

221:                                              ; preds = %220, %178
  br label %222

222:                                              ; preds = %221, %116
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 2
  store i32 168, i32* %224, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 5
  store i64 0, i64* %226, align 8
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 4
  store i64 0, i64* %228, align 8
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %230 = call i32 @gdth_copy_command(%struct.TYPE_26__* %229)
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %232 = call i32 @gdth_release_event(%struct.TYPE_26__* %231)
  %233 = call i32 @gdth_delay(i32 20)
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %235 = load i32, i32* %16, align 4
  %236 = load i32, i32* @INIT_TIMEOUT, align 4
  %237 = call i32 @gdth_wait(%struct.TYPE_26__* %234, i32 %235, i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %222
  %240 = load i64, i64* %9, align 8
  %241 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %240)
  store i32 0, i32* %7, align 4
  br label %263

242:                                              ; preds = %222
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @S_BSY, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %252, label %248

248:                                              ; preds = %242
  %249 = load i32, i32* %15, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %15, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %248, %242
  br label %255

253:                                              ; preds = %248
  %254 = call i32 @gdth_delay(i32 1)
  br label %28

255:                                              ; preds = %252
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @S_OK, align 8
  %260 = icmp ne i64 %258, %259
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i32 0, i32 1
  store i32 %262, i32* %7, align 4
  br label %263

263:                                              ; preds = %255, %239, %38
  %264 = load i32, i32* %7, align 4
  ret i32 %264
}

declare dso_local i32 @TRACE2(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @gdth_get_cmd_index(%struct.TYPE_26__*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @gdth_set_sema0(%struct.TYPE_26__*) #1

declare dso_local i32 @gdth_copy_command(%struct.TYPE_26__*) #1

declare dso_local i32 @gdth_release_event(%struct.TYPE_26__*) #1

declare dso_local i32 @gdth_delay(i32) #1

declare dso_local i32 @gdth_wait(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
