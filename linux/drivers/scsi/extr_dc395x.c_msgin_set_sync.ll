; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_set_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_set_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32*, i32, i32, i32, %struct.DeviceCtlBlk* }
%struct.DeviceCtlBlk = type { i32, i32, i32, i32, i32, i32 }

@DBG_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"msgin_set_sync: <%02i> Sync: %ins (%02i.%01i MHz) Offset %i\0A\00", align 1
@NTC_DO_SYNC_NEGO = common dso_local global i32 0, align 4
@clock_period = common dso_local global i32* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"msgin_set_sync: Increase sync nego period to %ins\0A\00", align 1
@ALT_SYNC = common dso_local global i32 0, align 4
@WIDE_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Target %02i: %s Sync: %ins Offset %i (%02i.%01i MB/s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Wide16\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SRB_DO_SYNC_NEGO = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"msgin_set_sync: answer w/%ins %i\0A\00", align 1
@DC395x_ENABLE_MSGOUT = common dso_local global i32 0, align 4
@SYNC_NEGO_DONE = common dso_local global i32 0, align 4
@WIDE_NEGO_ENABLE = common dso_local global i32 0, align 4
@WIDE_NEGO_DONE = common dso_local global i32 0, align 4
@DBG_0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"msgin_set_sync: Also try WDTR\0A\00", align 1
@SYNC_NEGO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*)* @msgin_set_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgin_set_sync(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.ScsiReqBlk*, align 8
  %5 = alloca %struct.DeviceCtlBlk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %4, align 8
  %8 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %9 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %8, i32 0, i32 4
  %10 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %9, align 8
  store %struct.DeviceCtlBlk* %10, %struct.DeviceCtlBlk** %5, align 8
  %11 = load i32, i32* @DBG_1, align 4
  %12 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %13 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %16 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 2
  %21 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %22 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 250, %25
  %27 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %28 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 250, %31
  %33 = mul nsw i32 %32, 10
  %34 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %35 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %33, %38
  %40 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %41 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %20, i32 %26, i32 %39, i32 %44)
  %46 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %47 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 15
  br i1 %51, label %52, label %57

52:                                               ; preds = %2
  %53 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %54 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 15, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %2
  %58 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %59 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NTC_DO_SYNC_NEGO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %66 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %81

67:                                               ; preds = %57
  %68 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %69 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %74 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %79 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %67
  br label %81

81:                                               ; preds = %80, %64
  %82 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %83 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %88 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %93 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %96 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  store i32 %94, i32* %98, align 4
  br label %107

99:                                               ; preds = %81
  %100 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %101 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %106 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %99, %91
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %137, %107
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 7
  br i1 %110, label %111, label %135

111:                                              ; preds = %108
  %112 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %113 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** @clock_period, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %116, %121
  br i1 %122, label %133, label %123

123:                                              ; preds = %111
  %124 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %125 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** @clock_period, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %126, %131
  br label %133

133:                                              ; preds = %123, %111
  %134 = phi i1 [ true, %111 ], [ %132, %123 ]
  br label %135

135:                                              ; preds = %133, %108
  %136 = phi i1 [ false, %108 ], [ %134, %133 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %108

140:                                              ; preds = %135
  %141 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %142 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @clock_period, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %140
  %153 = load i32, i32* @KERN_INFO, align 4
  %154 = load i32*, i32** @clock_period, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 2
  %160 = call i32 (i32, i8*, i32, ...) @dprintkl(i32 %153, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %152, %140
  %162 = load i32*, i32** @clock_period, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %168 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  store i32 %166, i32* %170, align 4
  %171 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %172 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 240
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @ALT_SYNC, align 4
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %179 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %183 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %188 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %190 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @WIDE_SYNC, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %161
  store i32 500, i32* %7, align 4
  br label %197

196:                                              ; preds = %161
  store i32 250, i32* %7, align 4
  br label %197

197:                                              ; preds = %196, %195
  %198 = load i32, i32* @KERN_INFO, align 4
  %199 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %200 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp eq i32 %202, 500
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %206 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %207 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 2
  %210 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %211 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %215 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %213, %216
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %220 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = srem i32 %218, %221
  %223 = mul nsw i32 %222, 10
  %224 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %225 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = sdiv i32 %226, 2
  %228 = add nsw i32 %223, %227
  %229 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %230 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = sdiv i32 %228, %231
  %233 = call i32 (i32, i8*, i32, ...) @dprintkl(i32 %198, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %201, i8* %205, i32 %209, i32 %212, i32 %217, i32 %232)
  %234 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %235 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @SRB_DO_SYNC_NEGO, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %269, label %240

240:                                              ; preds = %197
  %241 = load i32, i32* @KERN_DEBUG, align 4
  %242 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %243 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = shl i32 %246, 2
  %248 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %249 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 4
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i32, i8*, i32, ...) @dprintkl(i32 %241, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %247, i32 %252)
  %254 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %255 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %258 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @memcpy(i32 %256, i32* %259, i32 5)
  %261 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %262 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %261, i32 0, i32 2
  store i32 5, i32* %262, align 4
  %263 = load i32, i32* @DC395x_ENABLE_MSGOUT, align 4
  %264 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %265 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %266 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %292

269:                                              ; preds = %197
  %270 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %271 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %291

276:                                              ; preds = %269
  %277 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %278 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %276
  %284 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %285 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %286 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %287 = call i32 @build_wdtr(%struct.AdapterCtlBlk* %284, %struct.DeviceCtlBlk* %285, %struct.ScsiReqBlk* %286)
  %288 = load i32, i32* @DC395x_ENABLE_MSGOUT, align 4
  %289 = load i32, i32* @DBG_0, align 4
  %290 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %289, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %291

291:                                              ; preds = %283, %276, %269
  br label %292

292:                                              ; preds = %291, %240
  %293 = load i32, i32* @SRB_DO_SYNC_NEGO, align 4
  %294 = xor i32 %293, -1
  %295 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %296 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = and i32 %297, %294
  store i32 %298, i32* %296, align 8
  %299 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %300 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %301 = or i32 %299, %300
  %302 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %303 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 4
  %306 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %307 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %308 = call i32 @reprogram_regs(%struct.AdapterCtlBlk* %306, %struct.DeviceCtlBlk* %307)
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, ...) #1

declare dso_local i32 @dprintkl(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @build_wdtr(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @reprogram_regs(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
