; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_clock.c_ptp_clock_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_clock.c_ptp_clock_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_4__, i64, i32, i32, %struct.ptp_clock_info*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ptp_clock_info = type { i64, i32, i64, i64 }
%struct.device = type { i32 }
%struct.pps_source_info = type { i32, i32, i32 }

@ptp_devt = common dso_local global i32 0, align 4
@PTP_MAX_ALARMS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ptp_clocks_map = common dso_local global i32 0, align 4
@MINORMASK = common dso_local global i64 0, align 8
@ptp_clock_ops = common dso_local global i32 0, align 4
@delete_ptp_clock = common dso_local global i32 0, align 4
@ptp_aux_kworker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ptp%d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to create ptp aux_worker %d\0A\00", align 1
@ptp_class = common dso_local global i32 0, align 4
@PPS_MAX_NAME_LEN = common dso_local global i32 0, align 4
@PTP_PPS_MODE = common dso_local global i32 0, align 4
@PTP_PPS_DEFAULTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register pps source\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to create posix clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.ptp_clock*, align 8
  %4 = alloca %struct.ptp_clock_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ptp_clock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pps_source_info, align 4
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @ptp_devt, align 4
  %12 = call i32 @MAJOR(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %14 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PTP_MAX_ALARMS, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.ptp_clock* @ERR_PTR(i32 %20)
  store %struct.ptp_clock* %21, %struct.ptp_clock** %3, align 8
  br label %227

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ptp_clock* @kzalloc(i32 80, i32 %25)
  store %struct.ptp_clock* %26, %struct.ptp_clock** %6, align 8
  %27 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %28 = icmp eq %struct.ptp_clock* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %224

30:                                               ; preds = %22
  %31 = load i64, i64* @MINORMASK, align 8
  %32 = add nsw i64 %31, 1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @ida_simple_get(i32* @ptp_clocks_map, i32 0, i64 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  br label %221

39:                                               ; preds = %30
  %40 = load i32, i32* @ptp_clock_ops, align 4
  %41 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %42 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @delete_ptp_clock, align 4
  %45 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %46 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %49 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %50 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %49, i32 0, i32 10
  store %struct.ptp_clock_info* %48, %struct.ptp_clock_info** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @MKDEV(i32 %51, i32 %52)
  %54 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %55 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %58 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %60 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %59, i32 0, i32 12
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %64 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %63, i32 0, i32 2
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %67 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %66, i32 0, i32 1
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %70 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %69, i32 0, i32 11
  %71 = call i32 @init_waitqueue_head(i32* %70)
  %72 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %73 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %72, i32 0, i32 10
  %74 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %73, align 8
  %75 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %39
  %79 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %80 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %79, i32 0, i32 9
  %81 = load i32, i32* @ptp_aux_kworker, align 4
  %82 = call i32 @kthread_init_delayed_work(i32* %80, i32 %81)
  %83 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %84 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @kthread_create_worker(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %88 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %90 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @IS_ERR(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %78
  %95 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %96 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @PTR_ERR(i64 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %212

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101, %39
  %103 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %104 = call i32 @ptp_populate_pin_groups(%struct.ptp_clock* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %201

108:                                              ; preds = %102
  %109 = load i32, i32* @ptp_class, align 4
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %112 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %115 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %116 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %119 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @device_create_with_groups(i32 %109, %struct.device* %110, i32 %113, %struct.ptp_clock* %114, i32 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %123 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %122, i32 0, i32 7
  store i64 %121, i64* %123, align 8
  %124 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %125 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @IS_ERR(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %108
  %130 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %131 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @PTR_ERR(i64 %132)
  store i32 %133, i32* %7, align 4
  br label %198

134:                                              ; preds = %108
  %135 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %136 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %168

139:                                              ; preds = %134
  %140 = call i32 @memset(%struct.pps_source_info* %10, i32 0, i32 12)
  %141 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %10, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @PPS_MAX_NAME_LEN, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @snprintf(i32 %142, i32 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @PTP_PPS_MODE, align 4
  %147 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %10, i32 0, i32 1
  store i32 %146, i32* %147, align 4
  %148 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %149 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %10, i32 0, i32 0
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @PTP_PPS_DEFAULTS, align 4
  %153 = call i64 @pps_register_source(%struct.pps_source_info* %10, i32 %152)
  %154 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %155 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %154, i32 0, i32 5
  store i64 %153, i64* %155, align 8
  %156 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %157 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @IS_ERR(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %139
  %162 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %163 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @PTR_ERR(i64 %164)
  store i32 %165, i32* %7, align 4
  %166 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %192

167:                                              ; preds = %139
  br label %168

168:                                              ; preds = %167, %134
  %169 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %170 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %169, i32 0, i32 6
  %171 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %172 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @posix_clock_register(%struct.TYPE_4__* %170, i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %181

179:                                              ; preds = %168
  %180 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  store %struct.ptp_clock* %180, %struct.ptp_clock** %3, align 8
  br label %227

181:                                              ; preds = %177
  %182 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %183 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %188 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @pps_unregister_source(i64 %189)
  br label %191

191:                                              ; preds = %186, %181
  br label %192

192:                                              ; preds = %191, %161
  %193 = load i32, i32* @ptp_class, align 4
  %194 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %195 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @device_destroy(i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %192, %129
  %199 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %200 = call i32 @ptp_cleanup_pin_groups(%struct.ptp_clock* %199)
  br label %201

201:                                              ; preds = %198, %107
  %202 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %203 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %208 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @kthread_destroy_worker(i64 %209)
  br label %211

211:                                              ; preds = %206, %201
  br label %212

212:                                              ; preds = %211, %94
  %213 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %214 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %213, i32 0, i32 2
  %215 = call i32 @mutex_destroy(i32* %214)
  %216 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %217 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %216, i32 0, i32 1
  %218 = call i32 @mutex_destroy(i32* %217)
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @ida_simple_remove(i32* @ptp_clocks_map, i32 %219)
  br label %221

221:                                              ; preds = %212, %37
  %222 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %223 = call i32 @kfree(%struct.ptp_clock* %222)
  br label %224

224:                                              ; preds = %221, %29
  %225 = load i32, i32* %7, align 4
  %226 = call %struct.ptp_clock* @ERR_PTR(i32 %225)
  store %struct.ptp_clock* %226, %struct.ptp_clock** %3, align 8
  br label %227

227:                                              ; preds = %224, %179, %18
  %228 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  ret %struct.ptp_clock* %228
}

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.ptp_clock* @ERR_PTR(i32) #1

declare dso_local %struct.ptp_clock* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i64, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kthread_init_delayed_work(i32*, i32) #1

declare dso_local i64 @kthread_create_worker(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ptp_populate_pin_groups(%struct.ptp_clock*) #1

declare dso_local i64 @device_create_with_groups(i32, %struct.device*, i32, %struct.ptp_clock*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.pps_source_info*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @pps_register_source(%struct.pps_source_info*, i32) #1

declare dso_local i32 @posix_clock_register(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pps_unregister_source(i64) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @ptp_cleanup_pin_groups(%struct.ptp_clock*) #1

declare dso_local i32 @kthread_destroy_worker(i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ptp_clock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
