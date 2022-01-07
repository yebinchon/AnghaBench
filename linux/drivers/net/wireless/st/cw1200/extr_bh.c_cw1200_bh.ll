; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_6__*, i32, i64, i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32 (i32)*, i32 (i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BH] Device wakedown. No data.\0A\00", align 1
@ST90TDS_CONTROL_REG_ID = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@ST90TDS_CONFIG_REG_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"[BH] waiting ...\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"[BH] - rx: %d, tx: %d, term: %d, bh_err: %d, suspend: %d, status: %ld\0A\00", align 1
@ERESTARTSYS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Missed interrupt? (%d frames outstanding)\0A\00", align 1
@WSM_CMD_LAST_CHANCE_TIMEOUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"Timeout waiting for TX confirm (%d/%d pending, %ld vs %lu).\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"[BH] Device wakedown. Timeout.\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"[BH] Device suspend.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"[BH] Device wakedown. Suspend.\0A\00", align 1
@CW1200_BH_SUSPENDED = common dso_local global i32 0, align 4
@CW1200_BH_RESUME = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to wait for resume: %ld.\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"[BH] Device resume.\0A\00", align 1
@CW1200_BH_RESUMED = common dso_local global i32 0, align 4
@ST90TDS_CONT_NEXT_LEN_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"[BH] Fatal error, exiting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cw1200_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_bh(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = bitcast i8* %20 to %struct.cw1200_common*
  store %struct.cw1200_common* %21, %struct.cw1200_common** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %404, %1
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %22
  %28 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %29 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %28, i32 0, i32 12
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %39 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %38, i32 0, i32 13
  %40 = call i64 @atomic_read(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @HZ, align 4
  %44 = mul nsw i32 1, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %12, align 8
  %46 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %48 = load i32, i32* @ST90TDS_CONTROL_REG_ID, align 4
  %49 = call i32 @cw1200_reg_write_16(%struct.cw1200_common* %47, i32 %48, i32 0)
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  br label %64

52:                                               ; preds = %37, %32, %27, %22
  %53 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %54 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @HZ, align 4
  %59 = mul nsw i32 1, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %12, align 8
  br label %63

61:                                               ; preds = %52
  %62 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %66 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %71 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %70, i32 0, i32 7
  %72 = call i64 @atomic_read(i32* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %76 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %75, i32 0, i32 17
  %77 = call i64 @atomic_read(i32* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %81 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %82 = call i32 @cw1200_reg_read(%struct.cw1200_common* %80, i32 %81, i32* %13, i32 4)
  br label %83

83:                                               ; preds = %79, %74, %69, %64
  %84 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %86 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %89 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %88, i32 0, i32 7
  %90 = call i32 @atomic_xchg(i32* %89, i32 0)
  store i32 %90, i32* %4, align 4
  %91 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %92 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %91, i32 0, i32 17
  %93 = call i32 @atomic_xchg(i32* %92, i32 0)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %95 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %94, i32 0, i32 16
  %96 = call i32 @atomic_xchg(i32* %95, i32 0)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  br label %104

100:                                              ; preds = %83
  %101 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %102 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %101, i32 0, i32 9
  %103 = call i64 @atomic_read(i32* %102)
  br label %104

104:                                              ; preds = %100, %99
  %105 = phi i64 [ 0, %99 ], [ %103, %100 ]
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %120 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br label %123

123:                                              ; preds = %118, %115, %112, %109, %104
  %124 = phi i1 [ true, %115 ], [ true, %112 ], [ true, %109 ], [ true, %104 ], [ %122, %118 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i64, i64* %12, align 8
  %128 = call i64 @wait_event_interruptible_timeout(i32 %87, i32 %126, i64 %127)
  store i64 %128, i64* %12, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %134 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %12, align 8
  %137 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %130, i32 %131, i32 %132, i32 %135, i64 %136)
  %138 = load i64, i64* %12, align 8
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %123
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* @ERESTARTSYS, align 8
  %143 = sub nsw i64 0, %142
  %144 = icmp ne i64 %141, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %140, %123
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %150 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148, %145, %140
  br label %425

154:                                              ; preds = %148
  %155 = load i64, i64* %12, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %248, label %157

157:                                              ; preds = %154
  %158 = load i64, i64* @jiffies, align 8
  store i64 %158, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %159 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %160 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %229

163:                                              ; preds = %157
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %229, label %169

169:                                              ; preds = %166, %163
  %170 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %171 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %170, i32 0, i32 10
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %176 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (i32, i8*, i64, ...) @wiphy_warn(i32 %174, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %177)
  store i32 1, i32* %4, align 4
  store i32 0, i32* %19, align 4
  br label %179

179:                                              ; preds = %197, %169
  %180 = load i32, i32* %19, align 4
  %181 = icmp slt i32 %180, 4
  br i1 %181, label %182, label %200

182:                                              ; preds = %179
  %183 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %184 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %183, i32 0, i32 15
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %190 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %189, i32 0, i32 14
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @cw1200_queue_get_xmit_timestamp(i32* %188, i64* %16, i32 %191)
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %18, align 4
  br label %197

197:                                              ; preds = %182
  %198 = load i32, i32* %19, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %19, align 4
  br label %179

200:                                              ; preds = %179
  %201 = load i64, i64* %16, align 8
  %202 = load i64, i64* @WSM_CMD_LAST_CHANCE_TIMEOUT, align 8
  %203 = add i64 %201, %202
  %204 = load i32, i32* @HZ, align 4
  %205 = mul nsw i32 1, %204
  %206 = sext i32 %205 to i64
  %207 = add i64 %203, %206
  %208 = load i64, i64* @jiffies, align 8
  %209 = sub i64 %207, %208
  store i64 %209, i64* %17, align 8
  %210 = load i32, i32* %18, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %200
  %213 = load i64, i64* %17, align 8
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %212
  %216 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %217 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %216, i32 0, i32 10
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %222 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %18, align 4
  %225 = load i64, i64* %16, align 8
  %226 = load i64, i64* @jiffies, align 8
  %227 = call i32 (i32, i8*, i64, ...) @wiphy_warn(i32 %220, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %223, i32 %224, i64 %225, i64 %226)
  br label %425

228:                                              ; preds = %212, %200
  br label %247

229:                                              ; preds = %166, %157
  %230 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %231 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %229
  %235 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %236 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %235, i32 0, i32 13
  %237 = call i64 @atomic_read(i32* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %234
  %240 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %241 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %242 = load i32, i32* @ST90TDS_CONTROL_REG_ID, align 4
  %243 = call i32 @cw1200_reg_write_16(%struct.cw1200_common* %241, i32 %242, i32 0)
  %244 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %245 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %244, i32 0, i32 1
  store i32 1, i32* %245, align 8
  br label %246

246:                                              ; preds = %239, %234, %229
  br label %247

247:                                              ; preds = %246, %228
  br label %404

248:                                              ; preds = %154
  %249 = load i32, i32* %7, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %304

251:                                              ; preds = %248
  %252 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %253 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %254 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %253, i32 0, i32 12
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %251
  %258 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %259 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %260 = load i32, i32* @ST90TDS_CONTROL_REG_ID, align 4
  %261 = call i32 @cw1200_reg_write_16(%struct.cw1200_common* %259, i32 %260, i32 0)
  %262 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %263 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %262, i32 0, i32 1
  store i32 1, i32* %263, align 8
  br label %264

264:                                              ; preds = %257, %251
  %265 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %266 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %265, i32 0, i32 9
  %267 = load i32, i32* @CW1200_BH_SUSPENDED, align 4
  %268 = call i32 @atomic_set(i32* %266, i32 %267)
  %269 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %270 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %269, i32 0, i32 8
  %271 = call i32 @wake_up(i32* %270)
  %272 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %273 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %272, i32 0, i32 11
  %274 = load i32, i32* %273, align 8
  %275 = load i64, i64* @CW1200_BH_RESUME, align 8
  %276 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %277 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %276, i32 0, i32 9
  %278 = call i64 @atomic_read(i32* %277)
  %279 = icmp eq i64 %275, %278
  %280 = zext i1 %279 to i32
  %281 = call i64 @wait_event_interruptible(i32 %274, i32 %280)
  store i64 %281, i64* %12, align 8
  %282 = load i64, i64* %12, align 8
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %264
  %285 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %286 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %285, i32 0, i32 10
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i64, i64* %12, align 8
  %291 = call i32 @wiphy_err(i32 %289, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %290)
  br label %425

292:                                              ; preds = %264
  %293 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %294 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %295 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %294, i32 0, i32 9
  %296 = load i32, i32* @CW1200_BH_RESUMED, align 4
  %297 = call i32 @atomic_set(i32* %295, i32 %296)
  %298 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %299 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %298, i32 0, i32 8
  %300 = call i32 @wake_up(i32* %299)
  %301 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %302 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %301, i32 0, i32 7
  %303 = call i32 @atomic_add(i32 1, i32* %302)
  br label %404

304:                                              ; preds = %248
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %398, %305
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* %5, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %310 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %311 = call i64 @cw1200_bh_read_ctrl_reg(%struct.cw1200_common* %310, i32* %8)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %306
  br label %425

314:                                              ; preds = %306
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* @ST90TDS_CONT_NEXT_LEN_MASK, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %338

319:                                              ; preds = %314
  %320 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %321 = call i32 @cw1200_bh_rx_helper(%struct.cw1200_common* %320, i32* %8, i32* %5)
  store i32 %321, i32* %14, align 4
  %322 = load i32, i32* %14, align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  br label %425

325:                                              ; preds = %319
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* @ST90TDS_CONT_NEXT_LEN_MASK, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %325
  %331 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %332 = call i32 @cw1200_bh_rx_helper(%struct.cw1200_common* %331, i32* %8, i32* %5)
  store i32 %332, i32* %14, align 4
  %333 = load i32, i32* %14, align 4
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  br label %425

336:                                              ; preds = %330
  br label %337

337:                                              ; preds = %336, %325
  br label %338

338:                                              ; preds = %337, %314
  br label %339

339:                                              ; preds = %402, %338
  %340 = load i32, i32* %5, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %386

342:                                              ; preds = %339
  store i32 0, i32* %5, align 4
  %343 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %344 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %347 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %346, i32 0, i32 6
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp sgt i64 %345, %349
  %351 = zext i1 %350 to i32
  %352 = call i32 @BUG_ON(i32 %351)
  %353 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %354 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %353, i32 0, i32 6
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %358 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = sub nsw i64 %356, %359
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %11, align 4
  %362 = load i32, i32* %11, align 4
  %363 = icmp sgt i32 %362, 0
  %364 = zext i1 %363 to i32
  store i32 %364, i32* %9, align 4
  %365 = load i32, i32* %9, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %369, label %367

367:                                              ; preds = %342
  %368 = load i32, i32* %5, align 4
  store i32 %368, i32* %10, align 4
  br label %387

369:                                              ; preds = %342
  %370 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %371 = call i32 @cw1200_bh_tx_helper(%struct.cw1200_common* %370, i32* %10, i32* %11)
  store i32 %371, i32* %14, align 4
  %372 = load i32, i32* %14, align 4
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  br label %425

375:                                              ; preds = %369
  %376 = load i32, i32* %14, align 4
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %375
  %379 = load i32, i32* %14, align 4
  store i32 %379, i32* %5, align 4
  br label %380

380:                                              ; preds = %378, %375
  %381 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %382 = call i64 @cw1200_bh_read_ctrl_reg(%struct.cw1200_common* %381, i32* %8)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  br label %425

385:                                              ; preds = %380
  br label %386

386:                                              ; preds = %385, %339
  br label %387

387:                                              ; preds = %386, %367
  %388 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %389 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %387
  br label %425

393:                                              ; preds = %387
  %394 = load i32, i32* %8, align 4
  %395 = load i32, i32* @ST90TDS_CONT_NEXT_LEN_MASK, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %393
  br label %306

399:                                              ; preds = %393
  %400 = load i32, i32* %5, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  br label %339

403:                                              ; preds = %399
  br label %404

404:                                              ; preds = %403, %292, %247
  %405 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %406 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %405, i32 0, i32 5
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i32 0, i32 1
  %409 = load i32 (i32)*, i32 (i32)** %408, align 8
  %410 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %411 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %410, i32 0, i32 4
  %412 = load i32, i32* %411, align 4
  %413 = call i32 %409(i32 %412)
  %414 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %415 = call i32 @__cw1200_irq_enable(%struct.cw1200_common* %414, i32 1)
  %416 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %417 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %416, i32 0, i32 5
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 0
  %420 = load i32 (i32)*, i32 (i32)** %419, align 8
  %421 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %422 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 4
  %424 = call i32 %420(i32 %423)
  br label %22

425:                                              ; preds = %392, %384, %374, %335, %324, %313, %284, %215, %153
  %426 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %427 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %426, i32 0, i32 5
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 1
  %430 = load i32 (i32)*, i32 (i32)** %429, align 8
  %431 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %432 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 4
  %434 = call i32 %430(i32 %433)
  %435 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %436 = call i32 @__cw1200_irq_enable(%struct.cw1200_common* %435, i32 0)
  %437 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %438 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %437, i32 0, i32 5
  %439 = load %struct.TYPE_5__*, %struct.TYPE_5__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 0
  %441 = load i32 (i32)*, i32 (i32)** %440, align 8
  %442 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %443 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = call i32 %441(i32 %444)
  %446 = load i32, i32* %6, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %452, label %448

448:                                              ; preds = %425
  %449 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %450 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %451 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %450, i32 0, i32 3
  store i32 1, i32* %451, align 8
  br label %452

452:                                              ; preds = %448, %425
  ret i32 0
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @cw1200_reg_write_16(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @cw1200_reg_read(%struct.cw1200_common*, i32, i32*, i32) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @wiphy_warn(i32, i8*, i64, ...) #1

declare dso_local i64 @cw1200_queue_get_xmit_timestamp(i32*, i64*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i64) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i64 @cw1200_bh_read_ctrl_reg(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @cw1200_bh_rx_helper(%struct.cw1200_common*, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cw1200_bh_tx_helper(%struct.cw1200_common*, i32*, i32*) #1

declare dso_local i32 @__cw1200_irq_enable(%struct.cw1200_common*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
