; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi = type { i32, %struct.TYPE_4__, %struct.ucsi_connector* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ucsi_connector = type { i32, %struct.TYPE_5__, i64, i32, %struct.TYPE_5__, %struct.ucsi*, i32, i32, i32, %struct.typec_capability }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i64, i64 }
%struct.typec_capability = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucsi_control = type { i32 }

@ucsi_connector_change = common dso_local global i32 0, align 4
@UCSI_CONCAP_OPMODE_DRP = common dso_local global i32 0, align 4
@TYPEC_PORT_DRD = common dso_local global i32 0, align 4
@UCSI_CONCAP_OPMODE_DFP = common dso_local global i32 0, align 4
@TYPEC_PORT_DFP = common dso_local global i32 0, align 4
@UCSI_CONCAP_OPMODE_UFP = common dso_local global i32 0, align 4
@TYPEC_PORT_UFP = common dso_local global i32 0, align 4
@TYPEC_PORT_DRP = common dso_local global i32 0, align 4
@TYPEC_PORT_SRC = common dso_local global i32 0, align 4
@TYPEC_PORT_SNK = common dso_local global i32 0, align 4
@TYPEC_NO_PREFERRED_ROLE = common dso_local global i32 0, align 4
@UCSI_CONCAP_OPMODE_AUDIO_ACCESSORY = common dso_local global i32 0, align 4
@TYPEC_ACCESSORY_AUDIO = common dso_local global i32 0, align 4
@UCSI_CONCAP_OPMODE_DEBUG_ACCESSORY = common dso_local global i32 0, align 4
@TYPEC_ACCESSORY_DEBUG = common dso_local global i32 0, align 4
@ucsi_dr_swap = common dso_local global i32 0, align 4
@ucsi_pr_swap = common dso_local global i32 0, align 4
@UCSI_RECIPIENT_CON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"con%d: failed to register alt modes\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"con%d: failed to get status\0A\00", align 1
@TYPEC_HOST = common dso_local global i32 0, align 4
@TYPEC_DEVICE = common dso_local global i32 0, align 4
@UCSI_RECIPIENT_SOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"con%d: failed to register alternate modes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi*, i32)* @ucsi_register_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_register_port(%struct.ucsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucsi_connector*, align 8
  %7 = alloca %struct.typec_capability*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ucsi_control, align 4
  %10 = alloca i32, align 4
  store %struct.ucsi* %0, %struct.ucsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %12 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %11, i32 0, i32 2
  %13 = load %struct.ucsi_connector*, %struct.ucsi_connector** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %13, i64 %15
  store %struct.ucsi_connector* %16, %struct.ucsi_connector** %6, align 8
  %17 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %18 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %17, i32 0, i32 9
  store %struct.typec_capability* %18, %struct.typec_capability** %7, align 8
  %19 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %20 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %23 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %22, i32 0, i32 8
  %24 = load i32, i32* @ucsi_connector_change, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %27 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %26, i32 0, i32 7
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %30 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %29, i32 0, i32 6
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %35 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %37 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %38 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %37, i32 0, i32 5
  store %struct.ucsi* %36, %struct.ucsi** %38, align 8
  %39 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %40 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @UCSI_CMD_GET_CONNECTOR_CAPABILITY(i32 %43, i32 %41)
  %45 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %46 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %47 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %46, i32 0, i32 4
  %48 = call i32 @ucsi_run_command(%struct.ucsi* %45, %struct.ucsi_control* %9, %struct.TYPE_5__* %47, i32 40)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %297

53:                                               ; preds = %2
  %54 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %55 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @UCSI_CONCAP_OPMODE_DRP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @TYPEC_PORT_DRD, align 4
  %63 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %64 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 4
  br label %91

65:                                               ; preds = %53
  %66 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %67 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @UCSI_CONCAP_OPMODE_DFP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @TYPEC_PORT_DFP, align 4
  %75 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %76 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 4
  br label %90

77:                                               ; preds = %65
  %78 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %79 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @UCSI_CONCAP_OPMODE_UFP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @TYPEC_PORT_UFP, align 4
  %87 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %88 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %77
  br label %90

90:                                               ; preds = %89, %73
  br label %91

91:                                               ; preds = %90, %61
  %92 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %93 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %99 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @TYPEC_PORT_DRP, align 4
  %105 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %106 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 8
  br label %129

107:                                              ; preds = %97, %91
  %108 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %109 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* @TYPEC_PORT_SRC, align 4
  %115 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %116 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 8
  br label %128

117:                                              ; preds = %107
  %118 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %119 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* @TYPEC_PORT_SNK, align 4
  %125 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %126 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %117
  br label %128

128:                                              ; preds = %127, %113
  br label %129

129:                                              ; preds = %128, %103
  %130 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %131 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %135 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %137 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %141 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* @TYPEC_NO_PREFERRED_ROLE, align 4
  %143 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %144 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %146 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @UCSI_CONCAP_OPMODE_AUDIO_ACCESSORY, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %129
  %153 = load i32, i32* @TYPEC_ACCESSORY_AUDIO, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %8, align 8
  store i32 %153, i32* %154, align 4
  br label %156

156:                                              ; preds = %152, %129
  %157 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %158 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @UCSI_CONCAP_OPMODE_DEBUG_ACCESSORY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i32, i32* @TYPEC_ACCESSORY_DEBUG, align 4
  %166 = load i32*, i32** %8, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %156
  %168 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %169 = call i32 @ucsi_find_fwnode(%struct.ucsi_connector* %168)
  %170 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %171 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @ucsi_dr_swap, align 4
  %173 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %174 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @ucsi_pr_swap, align 4
  %176 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %177 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %179 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.typec_capability*, %struct.typec_capability** %7, align 8
  %182 = call i32 @typec_register_port(i32 %180, %struct.typec_capability* %181)
  %183 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %184 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  %185 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %186 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @IS_ERR(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %167
  %191 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %192 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @PTR_ERR(i32 %193)
  store i32 %194, i32* %3, align 4
  br label %297

195:                                              ; preds = %167
  %196 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %197 = load i32, i32* @UCSI_RECIPIENT_CON, align 4
  %198 = call i32 @ucsi_register_altmodes(%struct.ucsi_connector* %196, i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %203 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %206 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dev_err(i32 %204, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %201, %195
  %210 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %211 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %9, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @UCSI_CMD_GET_CONNECTOR_STATUS(i32 %214, i32 %212)
  %216 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %217 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %218 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %217, i32 0, i32 1
  %219 = call i32 @ucsi_run_command(%struct.ucsi* %216, %struct.ucsi_control* %9, %struct.TYPE_5__* %218, i32 40)
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %209
  %223 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %224 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %227 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @dev_err(i32 %225, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  store i32 0, i32* %3, align 4
  br label %297

230:                                              ; preds = %209
  %231 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %232 = call i32 @ucsi_pwr_opmode_change(%struct.ucsi_connector* %231)
  %233 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %234 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %237 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @typec_set_pwr_role(i32 %235, i32 %239)
  %241 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %242 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  switch i32 %244, label %257 [
    i32 128, label %245
    i32 129, label %251
  ]

245:                                              ; preds = %230
  %246 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %247 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @TYPEC_HOST, align 4
  %250 = call i32 @typec_set_data_role(i32 %248, i32 %249)
  br label %258

251:                                              ; preds = %230
  %252 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %253 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @TYPEC_DEVICE, align 4
  %256 = call i32 @typec_set_data_role(i32 %254, i32 %255)
  br label %258

257:                                              ; preds = %230
  br label %258

258:                                              ; preds = %257, %251, %245
  %259 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %260 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %266 = call i32 @ucsi_register_partner(%struct.ucsi_connector* %265)
  br label %267

267:                                              ; preds = %264, %258
  %268 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %269 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %290

272:                                              ; preds = %267
  %273 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %274 = load i32, i32* @UCSI_RECIPIENT_SOP, align 4
  %275 = call i32 @ucsi_register_altmodes(%struct.ucsi_connector* %273, i32 %274)
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %272
  %279 = load %struct.ucsi*, %struct.ucsi** %4, align 8
  %280 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %283 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @dev_err(i32 %281, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %284)
  br label %289

286:                                              ; preds = %272
  %287 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %288 = call i32 @ucsi_altmode_update_active(%struct.ucsi_connector* %287)
  br label %289

289:                                              ; preds = %286, %278
  br label %290

290:                                              ; preds = %289, %267
  %291 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %292 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %295 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %294, i32 0, i32 1
  %296 = call i32 @trace_ucsi_register_port(i32 %293, %struct.TYPE_5__* %295)
  store i32 0, i32* %3, align 4
  br label %297

297:                                              ; preds = %290, %222, %190, %51
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @UCSI_CMD_GET_CONNECTOR_CAPABILITY(i32, i32) #1

declare dso_local i32 @ucsi_run_command(%struct.ucsi*, %struct.ucsi_control*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ucsi_find_fwnode(%struct.ucsi_connector*) #1

declare dso_local i32 @typec_register_port(i32, %struct.typec_capability*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ucsi_register_altmodes(%struct.ucsi_connector*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @UCSI_CMD_GET_CONNECTOR_STATUS(i32, i32) #1

declare dso_local i32 @ucsi_pwr_opmode_change(%struct.ucsi_connector*) #1

declare dso_local i32 @typec_set_pwr_role(i32, i32) #1

declare dso_local i32 @typec_set_data_role(i32, i32) #1

declare dso_local i32 @ucsi_register_partner(%struct.ucsi_connector*) #1

declare dso_local i32 @ucsi_altmode_update_active(%struct.ucsi_connector*) #1

declare dso_local i32 @trace_ucsi_register_port(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
