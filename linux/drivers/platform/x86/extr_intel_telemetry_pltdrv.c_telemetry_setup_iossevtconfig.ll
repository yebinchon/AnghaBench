; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_setup_iossevtconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_setup_iossevtconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.telemetry_evtconfig = type { i32, i32, i32* }

@PMC_IPC_PMC_TELEMTRY = common dso_local global i32 0, align 4
@IOSS_TELEM_EVENT_CTL_READ = common dso_local global i32 0, align 4
@IOSS_TELEM_READ_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"IOSS TELEM_CTRL Read Failed\0A\00", align 1
@IOSS_TELEM_EVENT_CTL_WRITE = common dso_local global i32 0, align 4
@IOSS_TELEM_EVT_CTRL_WRITE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"IOSS TELEM_CTRL Event Disable Write Failed\0A\00", align 1
@TELEM_RESET = common dso_local global i32 0, align 4
@telm_conf = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"IOSS TELEM_RESET Fail for data: %x\0A\00", align 1
@TELEM_UPDATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"IOSS TELEM_UPDATE Fail for Evt%x\0A\00", align 1
@TELEM_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"IOSS TELEM_ADD Fail for Event %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"IOSS TELEM_CTRL Event Enable Write Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32)* @telemetry_setup_iossevtconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_setup_iossevtconfig(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.telemetry_evtconfig, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = bitcast %struct.telemetry_evtconfig* %5 to { i64, i32* }*
  %15 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %14, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %14, i32 0, i32 1
  store i32* %1, i32** %16, align 8
  store i32 %2, i32* %6, align 4
  %17 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %5, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i32, i32* @PMC_IPC_PMC_TELEMTRY, align 4
  %24 = load i32, i32* @IOSS_TELEM_EVENT_CTL_READ, align 4
  %25 = load i32, i32* @IOSS_TELEM_READ_WORD, align 4
  %26 = call i32 @intel_pmc_ipc_command(i32 %23, i32 %24, i32* null, i32 0, i32* %13, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %251

32:                                               ; preds = %3
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @TELEM_DISABLE(i32 %33)
  %35 = load i32, i32* @PMC_IPC_PMC_TELEMTRY, align 4
  %36 = load i32, i32* @IOSS_TELEM_EVENT_CTL_WRITE, align 4
  %37 = load i32, i32* @IOSS_TELEM_EVT_CTRL_WRITE_SIZE, align 4
  %38 = call i32 @intel_pmc_ipc_command(i32 %35, i32 %36, i32* %13, i32 %37, i32* null, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %251

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @TELEM_RESET, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %102

48:                                               ; preds = %44
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @TELEM_CLEAR_EVENTS(i32 %49)
  %51 = load i32, i32* @PMC_IPC_PMC_TELEMTRY, align 4
  %52 = load i32, i32* @IOSS_TELEM_EVENT_CTL_WRITE, align 4
  %53 = load i32, i32* @IOSS_TELEM_EVT_CTRL_WRITE_SIZE, align 4
  %54 = call i32 @intel_pmc_ipc_command(i32 %51, i32 %52, i32* %13, i32 %53, i32* null, i32 0)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %251

60:                                               ; preds = %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %98, %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %64
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @telemetry_plt_config_ioss_event(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %68
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %98

92:                                               ; preds = %68
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %81
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %64

101:                                              ; preds = %64
  br label %102

102:                                              ; preds = %101, %44
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @TELEM_UPDATE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %169

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @TELEM_CLEAR_EVENTS(i32 %107)
  %109 = load i32, i32* @PMC_IPC_PMC_TELEMTRY, align 4
  %110 = load i32, i32* @IOSS_TELEM_EVENT_CTL_WRITE, align 4
  %111 = load i32, i32* @IOSS_TELEM_EVT_CTRL_WRITE_SIZE, align 4
  %112 = call i32 @intel_pmc_ipc_command(i32 %109, i32 %110, i32* %13, i32 %111, i32* null, i32 0)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %4, align 4
  br label %251

118:                                              ; preds = %106
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %165, %118
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %168

126:                                              ; preds = %122
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %131, i32* %139, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i64 @telemetry_plt_config_ioss_event(i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %126
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %165

159:                                              ; preds = %126
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %152
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %122

168:                                              ; preds = %122
  br label %169

169:                                              ; preds = %168, %102
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @TELEM_ADD, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %227

173:                                              ; preds = %169
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %221, %173
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %226

182:                                              ; preds = %178
  %183 = load i32*, i32** %12, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i32 %187, i32* %195, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i64 @telemetry_plt_config_ioss_event(i32 %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %182
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %213)
  br label %221

215:                                              ; preds = %182
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %208
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %178

226:                                              ; preds = %178
  br label %227

227:                                              ; preds = %226, %169
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @TELEM_CLEAR_SAMPLE_PERIOD(i32 %228)
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @TELEM_ENABLE_SRAM_EVT_TRACE(i32 %230)
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @TELEM_ENABLE_PERIODIC(i32 %232)
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %13, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %13, align 4
  %237 = load i32, i32* @PMC_IPC_PMC_TELEMTRY, align 4
  %238 = load i32, i32* @IOSS_TELEM_EVENT_CTL_WRITE, align 4
  %239 = load i32, i32* @IOSS_TELEM_EVT_CTRL_WRITE_SIZE, align 4
  %240 = call i32 @intel_pmc_ipc_command(i32 %237, i32 %238, i32* %13, i32 %239, i32* null, i32 0)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %227
  %244 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %245 = load i32, i32* %9, align 4
  store i32 %245, i32* %4, align 4
  br label %251

246:                                              ; preds = %227
  %247 = load i32, i32* %8, align 4
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  store i32 %247, i32* %250, align 4
  store i32 0, i32* %4, align 4
  br label %251

251:                                              ; preds = %246, %243, %115, %57, %41, %29
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32 @intel_pmc_ipc_command(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @TELEM_DISABLE(i32) #1

declare dso_local i32 @TELEM_CLEAR_EVENTS(i32) #1

declare dso_local i64 @telemetry_plt_config_ioss_event(i32, i32) #1

declare dso_local i32 @TELEM_CLEAR_SAMPLE_PERIOD(i32) #1

declare dso_local i32 @TELEM_ENABLE_SRAM_EVT_TRACE(i32) #1

declare dso_local i32 @TELEM_ENABLE_PERIODIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
