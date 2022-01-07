; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_init_adapter_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_init_adapter_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i64, i32, i32, i32, i64*, i32*, i32*, %struct.esas2r_request* }
%struct.esas2r_request = type { i32 }

@AF_DEGRADED_MODE = common dso_local global i32 0, align 4
@AF_NVR_VALID = common dso_local global i32 0, align 4
@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid/missing NVRAM parameters\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"init messages failed\00", align 1
@AF_CHPRST_PENDING = common dso_local global i32 0, align 4
@num_ae_requests = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%1d.%02d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"firmware revision: %s\00", align 1
@AF_CHPRST_DETECTED = common dso_local global i32 0, align 4
@AF_FIRST_INIT = common dso_local global i32 0, align 4
@AF_TASKLET_SCHEDULED = common dso_local global i32 0, align 4
@AF_DISC_POLLED = common dso_local global i32 0, align 4
@AF_DISC_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ESAS2R_INT_STS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_init_adapter_hw(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.esas2r_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 3
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %237

18:                                               ; preds = %2
  %19 = load i32, i32* @AF_NVR_VALID, align 4
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 3
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %26 = call i32 @esas2r_nvram_read_direct(%struct.esas2r_adapter* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %30 = call i32 @esas2r_log(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %34 = call i32 @esas2r_init_msgs(%struct.esas2r_adapter* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %38 = call i32 @esas2r_set_degraded_mode(%struct.esas2r_adapter* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %237

39:                                               ; preds = %32
  %40 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %41 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %41, i32 0, i32 3
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  %44 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %45 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %45, i32 0, i32 3
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  store i64 0, i64* %8, align 8
  %48 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %48, i32 0, i32 8
  %50 = load %struct.esas2r_request*, %struct.esas2r_request** %49, align 8
  store %struct.esas2r_request* %50, %struct.esas2r_request** %7, align 8
  br label %51

51:                                               ; preds = %59, %39
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @num_ae_requests, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %57 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %58 = call i32 @esas2r_start_ae_request(%struct.esas2r_adapter* %56, %struct.esas2r_request* %57)
  br label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %8, align 8
  %62 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %63 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %62, i32 1
  store %struct.esas2r_request* %63, %struct.esas2r_request** %7, align 8
  br label %51

64:                                               ; preds = %51
  %65 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %73 = call i32 @esas2r_read_flash_rev(%struct.esas2r_adapter* %72)
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %83 = call i32 @esas2r_read_image_type(%struct.esas2r_adapter* %82)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %91 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %90, i32 0, i32 5
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64 0, i64* %93, align 8
  br label %111

94:                                               ; preds = %84
  %95 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %95, i32 0, i32 5
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %99 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @HIWORD(i64 %100)
  %102 = call i64 @LOBYTE(i32 %101)
  %103 = trunc i64 %102 to i32
  %104 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @HIWORD(i64 %106)
  %108 = call i64 @HIBYTE(i32 %107)
  %109 = trunc i64 %108 to i32
  %110 = call i32 @sprintf(i64* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %109)
  br label %111

111:                                              ; preds = %94, %89
  %112 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %112, i32 0, i32 5
  %114 = load i64*, i64** %113, align 8
  %115 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64* %114)
  %116 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %117 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %117, i32 0, i32 3
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %111
  %122 = load i32, i32* @AF_FIRST_INIT, align 4
  %123 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %123, i32 0, i32 3
  %125 = call i64 @test_bit(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %129 = call i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter* %128)
  store i32 1, i32* %3, align 4
  br label %292

130:                                              ; preds = %121, %111
  %131 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %132 = call i32 @esas2r_disc_initialize(%struct.esas2r_adapter* %131)
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %225

135:                                              ; preds = %130
  %136 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %137 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %9, align 8
  store i64 100, i64* %10, align 8
  %139 = load i32, i32* @AF_TASKLET_SCHEDULED, align 4
  %140 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %141 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %140, i32 0, i32 3
  %142 = call i32 @set_bit(i32 %139, i32* %141)
  %143 = load i32, i32* @AF_DISC_POLLED, align 4
  %144 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %145 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %144, i32 0, i32 3
  %146 = call i32 @set_bit(i32 %143, i32* %145)
  %147 = load i32, i32* @AF_FIRST_INIT, align 4
  %148 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %148, i32 0, i32 3
  %150 = call i64 @test_bit(i32 %147, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %135
  %153 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %154 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %153, i32 0, i32 2
  %155 = call i32 @atomic_dec(i32* %154)
  br label %156

156:                                              ; preds = %152, %135
  br label %157

157:                                              ; preds = %205, %156
  %158 = load i32, i32* @AF_DISC_PENDING, align 4
  %159 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %160 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %159, i32 0, i32 3
  %161 = call i64 @test_bit(i32 %158, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %206

163:                                              ; preds = %157
  %164 = call i32 @msecs_to_jiffies(i32 100)
  %165 = call i32 @schedule_timeout_interruptible(i32 %164)
  %166 = load i32, i32* @jiffies, align 4
  %167 = call i64 @jiffies_to_msecs(i32 %166)
  %168 = load i64, i64* %9, align 8
  %169 = sub nsw i64 %167, %168
  store i64 %169, i64* %11, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %9, align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* %9, align 8
  %173 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %174 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %175 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %174, i32 0, i32 3
  %176 = call i64 @test_bit(i32 %173, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %163
  %179 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %180 = call i32 @esas2r_disc_check_for_work(%struct.esas2r_adapter* %179)
  br label %181

181:                                              ; preds = %178, %163
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* %11, align 8
  %184 = icmp sle i64 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load i64, i64* %10, align 8
  %187 = add nsw i64 %186, 100
  store i64 %187, i64* %10, align 8
  %188 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %189 = call i32 @esas2r_timer_tick(%struct.esas2r_adapter* %188)
  br label %190

190:                                              ; preds = %185, %181
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* %11, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* %10, align 8
  %197 = sub nsw i64 %196, %195
  store i64 %197, i64* %10, align 8
  br label %198

198:                                              ; preds = %194, %190
  %199 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %200 = call i64 @esas2r_is_tasklet_pending(%struct.esas2r_adapter* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %204 = call i32 @esas2r_do_tasklet_tasks(%struct.esas2r_adapter* %203)
  br label %205

205:                                              ; preds = %202, %198
  br label %157

206:                                              ; preds = %157
  %207 = load i32, i32* @AF_FIRST_INIT, align 4
  %208 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %209 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %208, i32 0, i32 3
  %210 = call i64 @test_bit(i32 %207, i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %214 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %213, i32 0, i32 2
  %215 = call i32 @atomic_inc(i32* %214)
  br label %216

216:                                              ; preds = %212, %206
  %217 = load i32, i32* @AF_DISC_POLLED, align 4
  %218 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %219 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %218, i32 0, i32 3
  %220 = call i32 @clear_bit(i32 %217, i32* %219)
  %221 = load i32, i32* @AF_TASKLET_SCHEDULED, align 4
  %222 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %223 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %222, i32 0, i32 3
  %224 = call i32 @clear_bit(i32 %221, i32* %223)
  br label %225

225:                                              ; preds = %216, %130
  %226 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %227 = call i32 @esas2r_targ_db_report_changes(%struct.esas2r_adapter* %226)
  %228 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %229 = call i32 @esas2r_disc_start_waiting(%struct.esas2r_adapter* %228)
  %230 = load i32, i32* @ESAS2R_INT_STS_MASK, align 4
  %231 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %232 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  %233 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %234 = call i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter* %233)
  %235 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %236 = call i32 @esas2r_enable_heartbeat(%struct.esas2r_adapter* %235)
  store i32 1, i32* %6, align 4
  br label %237

237:                                              ; preds = %225, %36, %17
  %238 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %239 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %240 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %239, i32 0, i32 3
  %241 = call i64 @test_bit(i32 %238, i32* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %258

243:                                              ; preds = %237
  %244 = load i32, i32* @AF_FIRST_INIT, align 4
  %245 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %246 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %245, i32 0, i32 3
  %247 = call i64 @test_bit(i32 %244, i32* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %243
  %250 = load i32, i32* %6, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %254 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %255 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %254, i32 0, i32 3
  %256 = call i32 @clear_bit(i32 %253, i32* %255)
  br label %257

257:                                              ; preds = %252, %249
  br label %290

258:                                              ; preds = %243, %237
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %263 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %264 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %263, i32 0, i32 3
  %265 = call i32 @clear_bit(i32 %262, i32* %264)
  %266 = load i32, i32* @AF_DISC_PENDING, align 4
  %267 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %268 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %267, i32 0, i32 3
  %269 = call i32 @clear_bit(i32 %266, i32* %268)
  br label %270

270:                                              ; preds = %261, %258
  %271 = load i32, i32* @AF_FIRST_INIT, align 4
  %272 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %273 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %272, i32 0, i32 3
  %274 = call i64 @test_bit(i32 %271, i32* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %270
  %277 = load i32, i32* @AF_FIRST_INIT, align 4
  %278 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %279 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %278, i32 0, i32 3
  %280 = call i32 @clear_bit(i32 %277, i32* %279)
  %281 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %282 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %281, i32 0, i32 2
  %283 = call i64 @atomic_dec_return(i32* %282)
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %276
  %286 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %287 = call i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter* %286)
  br label %288

288:                                              ; preds = %285, %276
  br label %289

289:                                              ; preds = %288, %270
  br label %290

290:                                              ; preds = %289, %257
  %291 = load i32, i32* %6, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %290, %127
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_nvram_read_direct(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @esas2r_init_msgs(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_set_degraded_mode(%struct.esas2r_adapter*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_start_ae_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_read_flash_rev(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_read_image_type(%struct.esas2r_adapter*) #1

declare dso_local i32 @sprintf(i64*, i8*, i32, i32) #1

declare dso_local i64 @LOBYTE(i32) #1

declare dso_local i32 @HIWORD(i64) #1

declare dso_local i64 @HIBYTE(i32) #1

declare dso_local i32 @esas2r_hdebug(i8*, i64*) #1

declare dso_local i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_disc_initialize(%struct.esas2r_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @esas2r_disc_check_for_work(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_timer_tick(%struct.esas2r_adapter*) #1

declare dso_local i64 @esas2r_is_tasklet_pending(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_do_tasklet_tasks(%struct.esas2r_adapter*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @esas2r_targ_db_report_changes(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_disc_start_waiting(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_enable_heartbeat(%struct.esas2r_adapter*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
