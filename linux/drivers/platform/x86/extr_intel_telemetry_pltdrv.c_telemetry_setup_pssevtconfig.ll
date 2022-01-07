; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_setup_pssevtconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_setup_pssevtconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.telemetry_evtconfig = type { i32, i32, i32* }

@IPC_PUNIT_BIOS_READ_TELE_EVENT_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PSS TELEM_CTRL Read Failed\0A\00", align 1
@IPC_PUNIT_BIOS_WRITE_TELE_EVENT_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"PSS TELEM_CTRL Event Disable Write Failed\0A\00", align 1
@TELEM_RESET = common dso_local global i32 0, align 4
@telm_conf = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"PSS TELEM_RESET Fail for Event %x\0A\00", align 1
@TELEM_UPDATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"PSS TELEM_UPDATE Fail for Event %x\0A\00", align 1
@TELEM_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"PSS TELEM_ADD Fail for Event %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"PSS TELEM_CTRL Event Enable Write Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32)* @telemetry_setup_pssevtconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_setup_pssevtconfig(i64 %0, i32* %1, i32 %2) #0 {
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
  %23 = load i32, i32* @IPC_PUNIT_BIOS_READ_TELE_EVENT_CTRL, align 4
  %24 = call i32 @intel_punit_ipc_command(i32 %23, i32 0, i32 0, i32* null, i32* %13)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %241

30:                                               ; preds = %3
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @TELEM_DISABLE(i32 %31)
  %33 = load i32, i32* @IPC_PUNIT_BIOS_WRITE_TELE_EVENT_CTRL, align 4
  %34 = call i32 @intel_punit_ipc_command(i32 %33, i32 0, i32 0, i32* %13, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %241

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @TELEM_RESET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @TELEM_CLEAR_EVENTS(i32 %45)
  %47 = load i32, i32* @IPC_PUNIT_BIOS_WRITE_TELE_EVENT_CTRL, align 4
  %48 = call i32 @intel_punit_ipc_command(i32 %47, i32 0, i32 0, i32* %13, i32* null)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %241

54:                                               ; preds = %44
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %92, %54
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @telemetry_plt_config_pss_event(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %62
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %92

86:                                               ; preds = %62
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %75
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %58

95:                                               ; preds = %58
  br label %96

96:                                               ; preds = %95, %40
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @TELEM_UPDATE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %161

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @TELEM_CLEAR_EVENTS(i32 %101)
  %103 = load i32, i32* @IPC_PUNIT_BIOS_WRITE_TELE_EVENT_CTRL, align 4
  %104 = call i32 @intel_punit_ipc_command(i32 %103, i32 0, i32 0, i32* %13, i32* null)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %4, align 4
  br label %241

110:                                              ; preds = %100
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %157, %110
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %160

118:                                              ; preds = %114
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 %123, i32* %131, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i64 @telemetry_plt_config_pss_event(i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %118
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %157

151:                                              ; preds = %118
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %144
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %114

160:                                              ; preds = %114
  br label %161

161:                                              ; preds = %160, %96
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @TELEM_ADD, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %219

165:                                              ; preds = %161
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %213, %165
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %218

174:                                              ; preds = %170
  %175 = load i32*, i32** %12, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store i32 %179, i32* %187, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %10, align 4
  %198 = call i64 @telemetry_plt_config_pss_event(i32 %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %174
  %201 = load i32*, i32** %12, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %205)
  br label %213

207:                                              ; preds = %174
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %207, %200
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %11, align 4
  br label %170

218:                                              ; preds = %170
  br label %219

219:                                              ; preds = %218, %161
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @TELEM_CLEAR_SAMPLE_PERIOD(i32 %220)
  %222 = load i32, i32* %13, align 4
  %223 = call i32 @TELEM_ENABLE_SRAM_EVT_TRACE(i32 %222)
  %224 = load i32, i32* %13, align 4
  %225 = call i32 @TELEM_ENABLE_PERIODIC(i32 %224)
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %13, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* @IPC_PUNIT_BIOS_WRITE_TELE_EVENT_CTRL, align 4
  %230 = call i32 @intel_punit_ipc_command(i32 %229, i32 0, i32 0, i32* %13, i32* null)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %219
  %234 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %4, align 4
  br label %241

236:                                              ; preds = %219
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  store i32 %237, i32* %240, align 4
  store i32 0, i32* %4, align 4
  br label %241

241:                                              ; preds = %236, %233, %107, %51, %37, %27
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @intel_punit_ipc_command(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @TELEM_DISABLE(i32) #1

declare dso_local i32 @TELEM_CLEAR_EVENTS(i32) #1

declare dso_local i64 @telemetry_plt_config_pss_event(i32, i32) #1

declare dso_local i32 @TELEM_CLEAR_SAMPLE_PERIOD(i32) #1

declare dso_local i32 @TELEM_ENABLE_SRAM_EVT_TRACE(i32) #1

declare dso_local i32 @TELEM_ENABLE_PERIODIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
