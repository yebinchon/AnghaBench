; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_ep_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_ep_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i32, i32)*, i32 (i32, i32)* }
%struct.iscsi_endpoint = type { %struct.qedi_endpoint* }
%struct.qedi_endpoint = type { i32, i64, %struct.qedi_ctx*, %struct.qedi_conn*, i32, i32, i32, i32 }
%struct.qedi_ctx = type { i32, i32, %struct.TYPE_5__, i32**, i32, i32, i32 }
%struct.TYPE_5__ = type { i32** }
%struct.qedi_conn = type { i32, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }

@HZ = common dso_local global i32 0, align 4
@DEF_MAX_RT_TIME = common dso_local global i32 0, align 4
@QEDI_CONN_FW_CLEANUP = common dso_local global i32 0, align 4
@QEDI_IN_RECOVERY = common dso_local global i32 0, align 4
@qedi_do_not_recover = common dso_local global i64 0, align 8
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Do not recover cid=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Reset recovery cid=0x%x, qedi_ep=%p, state=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Active cmd count=%d, abrt_conn=%d, ep state=0x%x, cid=0x%x, qedi_conn=%p\0A\00", align 1
@EP_STATE_DISCONN_START = common dso_local global i32 0, align 4
@qedi_ops = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"destroy_conn failed returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Destroy conn timedout or interrupted, ret=%d, delay=%d, cid=0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"release_conn returned %d, cid=0x%x\0A\00", align 1
@EP_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_endpoint*)* @qedi_ep_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_ep_disconnect(%struct.iscsi_endpoint* %0) #0 {
  %2 = alloca %struct.iscsi_endpoint*, align 8
  %3 = alloca %struct.qedi_endpoint*, align 8
  %4 = alloca %struct.qedi_conn*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.qedi_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %2, align 8
  store %struct.qedi_conn* null, %struct.qedi_conn** %4, align 8
  store %struct.iscsi_conn* null, %struct.iscsi_conn** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 10, i32* %10, align 4
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 60, %11
  %13 = load i32, i32* @DEF_MAX_RT_TIME, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %16 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %15, i32 0, i32 0
  %17 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %16, align 8
  store %struct.qedi_endpoint* %17, %struct.qedi_endpoint** %3, align 8
  %18 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %19 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %18, i32 0, i32 2
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %19, align 8
  store %struct.qedi_ctx* %20, %struct.qedi_ctx** %6, align 8
  %21 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %22 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %220

26:                                               ; preds = %1
  %27 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %28 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %27, i32 0, i32 7
  %29 = call i32 @flush_work(i32* %28)
  %30 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %31 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %30, i32 0, i32 3
  %32 = load %struct.qedi_conn*, %struct.qedi_conn** %31, align 8
  %33 = icmp ne %struct.qedi_conn* %32, null
  br i1 %33, label %34, label %93

34:                                               ; preds = %26
  %35 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %36 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %35, i32 0, i32 3
  %37 = load %struct.qedi_conn*, %struct.qedi_conn** %36, align 8
  store %struct.qedi_conn* %37, %struct.qedi_conn** %4, align 8
  %38 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %39 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %41, align 8
  store %struct.iscsi_conn* %42, %struct.iscsi_conn** %5, align 8
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %44 = call i32 @iscsi_suspend_queue(%struct.iscsi_conn* %43)
  %45 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %46 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %59, %34
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %10, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* @QEDI_CONN_FW_CLEANUP, align 4
  %54 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %55 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %54, i32 0, i32 3
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %61

59:                                               ; preds = %52
  %60 = call i32 @msleep(i32 1000)
  br label %48

61:                                               ; preds = %58, %48
  %62 = load i32, i32* @QEDI_IN_RECOVERY, align 4
  %63 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %63, i32 0, i32 6
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %61
  %68 = load i64, i64* @qedi_do_not_recover, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %71, i32 0, i32 4
  %73 = load i32, i32* @QEDI_LOG_INFO, align 4
  %74 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %75 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32*, i32, i8*, i64, ...) @QEDI_INFO(i32* %72, i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %76)
  br label %220

78:                                               ; preds = %67
  %79 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %79, i32 0, i32 4
  %81 = load i32, i32* @QEDI_LOG_INFO, align 4
  %82 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %83 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %86 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %87 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32*, i32, i8*, i64, ...) @QEDI_INFO(i32* %80, i32 %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %84, %struct.qedi_endpoint* %85, i32 %88)
  %90 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %91 = call i32 @qedi_cleanup_active_cmd_list(%struct.qedi_conn* %90)
  br label %198

92:                                               ; preds = %61
  br label %93

93:                                               ; preds = %92, %26
  %94 = load i64, i64* @qedi_do_not_recover, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %220

97:                                               ; preds = %93
  %98 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %99 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %144 [
    i32 128, label %101
    i32 129, label %101
    i32 130, label %102
    i32 131, label %103
  ]

101:                                              ; preds = %97, %97
  br label %198

102:                                              ; preds = %97
  br label %145

103:                                              ; preds = %97
  %104 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %105 = icmp ne %struct.qedi_conn* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @unlikely(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %145

111:                                              ; preds = %103
  %112 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %113 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %112, i32 0, i32 4
  %114 = load i32, i32* @QEDI_LOG_INFO, align 4
  %115 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %116 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %121 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %124 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %127 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %126, i32 0, i32 3
  %128 = load %struct.qedi_conn*, %struct.qedi_conn** %127, align 8
  %129 = call i32 (i32*, i32, i8*, i64, ...) @QEDI_INFO(i32* %113, i32 %114, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %118, i32 %119, i32 %122, i64 %125, %struct.qedi_conn* %128)
  %130 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %131 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  br label %136

135:                                              ; preds = %111
  store i32 1, i32* %9, align 4
  br label %136

136:                                              ; preds = %135, %134
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %141 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %142 = call i32 @qedi_clearsq(%struct.qedi_ctx* %140, %struct.qedi_conn* %141, i32* null)
  br label %143

143:                                              ; preds = %139, %136
  br label %145

144:                                              ; preds = %97
  br label %145

145:                                              ; preds = %144, %143, %110, %102
  %146 = load i32, i32* @EP_STATE_DISCONN_START, align 4
  %147 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %148 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %150, align 8
  %152 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %153 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %156 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 %151(i32 %154, i32 %157, i32 %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %145
  %163 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %164 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %163, i32 0, i32 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 (i32*, i8*, i32, ...) @QEDI_WARN(i32* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  br label %197

167:                                              ; preds = %145
  %168 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %169 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %172 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @EP_STATE_DISCONN_START, align 4
  %175 = icmp ne i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @wait_event_interruptible_timeout(i32 %170, i32 %176, i32 %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp sle i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %167
  %182 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %183 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @EP_STATE_DISCONN_START, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %181, %167
  %188 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %189 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %188, i32 0, i32 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %193 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 (i32*, i8*, i32, ...) @QEDI_WARN(i32* %189, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %190, i32 %191, i64 %194)
  br label %196

196:                                              ; preds = %187, %181
  br label %197

197:                                              ; preds = %196, %162
  br label %198

198:                                              ; preds = %197, %101, %78
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32 (i32, i32)*, i32 (i32, i32)** %200, align 8
  %202 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %203 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %206 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = call i32 %201(i32 %204, i32 %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %198
  %212 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %213 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %212, i32 0, i32 4
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %216 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 (i32*, i8*, i32, ...) @QEDI_WARN(i32* %213, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %214, i64 %217)
  br label %219

219:                                              ; preds = %211, %198
  br label %220

220:                                              ; preds = %219, %96, %70, %25
  %221 = load i32, i32* @EP_STATE_IDLE, align 4
  %222 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %223 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %225 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %224, i32 0, i32 3
  %226 = load i32**, i32*** %225, align 8
  %227 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %228 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i32*, i32** %226, i64 %229
  store i32* null, i32** %230, align 8
  %231 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %232 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32**, i32*** %233, align 8
  %235 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %236 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i32*, i32** %234, i64 %237
  store i32* null, i32** %238, align 8
  %239 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %240 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %239, i32 0, i32 1
  %241 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %242 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @qedi_free_id(i32* %240, i32 %243)
  %245 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %246 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %247 = call i32 @qedi_free_sq(%struct.qedi_ctx* %245, %struct.qedi_endpoint* %246)
  %248 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %249 = icmp ne %struct.qedi_conn* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %220
  %251 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %252 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %251, i32 0, i32 1
  store i32* null, i32** %252, align 8
  br label %253

253:                                              ; preds = %250, %220
  %254 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %255 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %254, i32 0, i32 3
  store %struct.qedi_conn* null, %struct.qedi_conn** %255, align 8
  %256 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %257 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %256, i32 0, i32 2
  store %struct.qedi_ctx* null, %struct.qedi_ctx** %257, align 8
  %258 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %259 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %258, i32 0, i32 0
  %260 = call i32 @atomic_dec(i32* %259)
  %261 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %262 = call i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint* %261)
  ret void
}

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @iscsi_suspend_queue(%struct.iscsi_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i64, ...) #1

declare dso_local i32 @qedi_cleanup_active_cmd_list(%struct.qedi_conn*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @qedi_clearsq(%struct.qedi_ctx*, %struct.qedi_conn*, i32*) #1

declare dso_local i32 @QEDI_WARN(i32*, i8*, i32, ...) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @qedi_free_id(i32*, i32) #1

declare dso_local i32 @qedi_free_sq(%struct.qedi_ctx*, %struct.qedi_endpoint*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
